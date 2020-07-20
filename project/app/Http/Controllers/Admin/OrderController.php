<?php

namespace App\Http\Controllers\Admin;

use App\Classes\GeniusMailer;
use App\Http\Controllers\Controller;
use App\Models\Generalsetting;
use App\Models\Order;
use App\Models\OrderTrack;
use App\Models\Transaction;
use App\Models\User;
use App\Models\VendorOrder;
use Carbon\Carbon;
use Datatables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    //*** JSON Request
    public function datatables($status)
    {

        if ($status == 'pending') {
            $datas = Order::where('status', '=', 'pending')->orderBy('id', 'desc')->get();
        } elseif ($status == 'processing') {
            $datas = Order::where('status', '=', 'processing')->orderBy('id', 'desc')->get();
        } elseif ($status == 'delivery') {
            $datas = Order::where('status', '=', 'on delivery')->orderBy('id', 'desc')->get();
        } elseif ($status == 'paid') {
            $datas = Order::where('payment_status', '=', 'Completed')->orderBy('id', 'desc')->get();
        } elseif ($status == 'completed') {
            $datas = Order::where('status', '=', 'completed')->orderBy('id', 'desc')->get();
        } elseif ($status == 'declined') {
            $datas = Order::where('status', '=', 'declined')->orderBy('id', 'desc')->get();
        } else {
            $datas = Order::orderBy('id', 'desc')->get();
        }

        //--- Integrating This Collection Into Datatables
        return Datatables::of($datas)
            ->editColumn('id', function (Order $data) {
                $id = '<a href="' . route('admin-order-invoice', $data->id) . '">' . $data->order_number . '</a>';
                return $id;
            })
            ->addColumn('products', function (Order $data) {
                $cart = unserialize(bzdecompress(utf8_decode($data->cart)));
                $products = '<ul class="list-group">';
                foreach ($cart->items as $key => $product) {
                    $products = $products . '<li class="list-group-item "><a target="_blank" href="' . route('front.product', $product['item']['slug']) . '">' . $product['item']['name'] . '<span class="badge badge-success">' . $product['qty'] . '</span></a></li>';
                }
                return $products . '</ul>';
            })
            ->editColumn('payment_status', function (Order $data) {
                $payer = "";
                if ($data->paid_by != 0) {
                    $payer = $data->payer->name . " <br>" . $data->paid_at->format("h.i a d-m-y");
                }
                return $data->payment_status . "<br>" . $payer;
            })
            ->editColumn('pay_amount', function (Order $data) {
                return $data->currency_sign . round($data->pay_amount * $data->currency_value + $data->extraCharges->sum('charge'), 2) . "(" . $data->method . ")";
            })
            ->editColumn('created_at', function (Order $data) {
                return $data->created_at->format("d/m/y h.i a");
            })
            ->editColumn('customer_email', function (Order $data) {
                return $data->customer_name . "<br>" . $data->customer_email;
            })
            ->addColumn('action', function (Order $data) {
                $orders = '<a href="javascript:;" data-href="' . route('admin-order-edit', $data->id) . '" class="delivery" data-toggle="modal" data-target="#modal1"><i class="fas fa-dollar-sign"></i> Delivery Status</a>';
                return '<div class="godropdown"><button class="go-dropdown-toggle"> Actions<i class="fas fa-chevron-down"></i></button><div class="action-list"><a href="' . route('admin-order-show', $data->id) . '" > <i class="fas fa-eye"></i> Details</a><a href="javascript:;" class="send" data-email="' . $data->customer_email . '" data-toggle="modal" data-target="#vendorform"><i class="fas fa-envelope"></i> Send</a><a href="javascript:;" data-href="' . route('admin-order-track', $data->id) . '" class="track" data-toggle="modal" data-target="#modal1"><i class="fas fa-truck"></i> Track Order</a>' . $orders . '</div></div>';
            })
            ->rawColumns(['id', 'products', 'action', 'customer_email', 'payment_status'])
            ->toJson();  //--- Returning Json Data To Client Side
    }
    public function index()
    {
        $pending = Order::where('status', '=', 'pending')->orderBy('id', 'desc')->count();
        $processing = Order::where('status', '=', 'processing')->orderBy('id', 'desc')->count();
        $delivery = Order::where('status', '=', 'on delivery')->orderBy('id', 'desc')->count();
        $paid = Order::where('payment_status', '=', 'Completed')->orderBy('id', 'desc')->count();
        $completed = Order::where('status', '=', 'completed')->orderBy('id', 'desc')->count();
        $declined = Order::where('status', '=', 'declined')->orderBy('id', 'desc')->count();

        return view('admin.order.index', compact('pending', 'processing', 'delivery', 'paid', 'completed', 'declined'));
    }

    public function edit($id)
    {
        $data = Order::find($id);
        return view('admin.order.delivery', compact('data'));
    }


    //*** POST Request
    public function update(Request $request, $id)
    {


        //--- Logic Section
        $data = Order::findOrFail($id);
        $admin_id = Auth::guard('admin')->user()->id;
        $input = $request->all();
        if ($data->payment_status == "Completed" && $input['payment_status'] != "Completed") {
            $t = Transaction::where('order_id', '=', $data->id)->first();
            if ($t) {
                $t->delete();
            }
        }
        $current_timestamp = Carbon::now()->timestamp;
        if ($data->payment_status != "Completed" && $input['payment_status'] == "Completed") {
            $input["paid_by"] = $admin_id;
            $input["paid_at"] = now();
            Transaction::create([
                "amount" => $data->pay_amount,
                "order_id" => $data->id,
                "type" => "Order Payment",
                "collected" => 1
            ]);
        }
        if ($data->status == "completed" && $data->payment_status == "Completed") {
            $input["paid_by"] = $admin_id;
            $input["paid_at"] = now();

            // Then Save Without Changing it.
            //$input['status'] = "completed";
            if ($input['status'] != "completed" || $input['payment_status'] != "Completed") {
                $data->update($input);
                foreach ($data->vendororders as $vorder) {
                    $uprice = User::findOrFail($vorder->user_id);
                    $uprice->current_balance = $uprice->current_balance - $vorder->price;
                    $uprice->update();
                }
            }

            //     //--- Logic Section Ends


            // //--- Redirect Section          
            // $msg = 'Status Updated Successfully.';
            // return response()->json($msg);    
            // //--- Redirect Section Ends     


        } else {
            if ($input['status'] == "completed" && $input['payment_status'] == "Completed") {

                foreach ($data->vendororders as $vorder) {
                    $uprice = User::findOrFail($vorder->user_id);
                    $uprice->current_balance = $uprice->current_balance + $vorder->price;
                    $uprice->update();
                }

                $gs = Generalsetting::findOrFail(1);
                if ($gs->is_smtp == 1) {
                    $maildata = [
                        'to' => $data->customer_email,
                        'subject' => 'Your order ' . $data->order_number . ' is Confirmed!',
                        'body' => "Hello " . $data->customer_name . "," . "\n Thank you for shopping with us. We are looking forward to your next visit.",
                    ];

                    $mailer = new GeniusMailer();
                    $mailer->sendCustomMail($maildata);
                } else {
                    $to = $data->customer_email;
                    $subject = 'Your order ' . $data->order_number . ' is Confirmed!';
                    $msg = "Hello " . $data->customer_name . "," . "\n Thank you for shopping with us. We are looking forward to your next visit.";
                    $headers = "From: " . $gs->from_name . "<" . $gs->from_email . ">";
                    mail($to, $subject, $msg, $headers);
                }
            }
            if ($input['status'] == "declined") {
                $gs = Generalsetting::findOrFail(1);
                if ($gs->is_smtp == 1) {
                    $maildata = [
                        'to' => $data->customer_email,
                        'subject' => 'Your order ' . $data->order_number . ' is Declined!',
                        'body' => "Hello " . $data->customer_name . "," . "\n We are sorry for the inconvenience caused. We are looking forward to your next visit.",
                    ];
                    $mailer = new GeniusMailer();
                    $mailer->sendCustomMail($maildata);
                } else {
                    $to = $data->customer_email;
                    $subject = 'Your order ' . $data->order_number . ' is Declined!';
                    $msg = "Hello " . $data->customer_name . "," . "\n We are sorry for the inconvenience caused. We are looking forward to your next visit.";
                    $headers = "From: " . $gs->from_name . "<" . $gs->from_email . ">";
                    mail($to, $subject, $msg, $headers);
                }
            }

            $data->update($input);

            if ($request->track_text) {
                $title = ucwords($request->status);
                $ck = OrderTrack::where('order_id', '=', $id)->where('title', '=', $title)->first();
                if ($ck) {
                    $ck->order_id = $id;
                    $ck->title = $title;
                    $ck->text = $request->track_text;
                    $ck->admin_id = $admin_id;
                    $ck->update();
                } else {
                    $data = new OrderTrack;
                    $data->order_id = $id;
                    $data->title = $title;
                    $data->text = $request->track_text;
                    $data->admin_id = $admin_id;
                    $data->save();
                }
            }


            $order = VendorOrder::where('order_id', '=', $id)->update(['status' => $input['status']]);

            //--- Redirect Section          
            $msg = 'Status Updated Successfully.';
            return response()->json($msg);
            //--- Redirect Section Ends    

        }



        //--- Redirect Section          
        $msg = 'Status Updated Successfully.';
        return response()->json($msg);
        //--- Redirect Section Ends  


    }



    public function pending()
    {
        $pending = Order::where('status', '=', 'pending')->orderBy('id', 'desc')->count();
        $processing = Order::where('status', '=', 'processing')->orderBy('id', 'desc')->count();
        $delivery = Order::where('status', '=', 'on delivery')->orderBy('id', 'desc')->count();
        $paid = Order::where('payment_status', '=', 'Completed')->orderBy('id', 'desc')->count();
        $completed = Order::where('status', '=', 'completed')->orderBy('id', 'desc')->count();
        $declined = Order::where('status', '=', 'declined')->orderBy('id', 'desc')->count();

        return view('admin.order.pending', compact('pending', 'processing', 'delivery', 'paid', 'completed', 'declined'));
    }
    public function delivery()
    {
        $pending = Order::where('status', '=', 'pending')->orderBy('id', 'desc')->count();
        $processing = Order::where('status', '=', 'processing')->orderBy('id', 'desc')->count();
        $delivery = Order::where('status', '=', 'on delivery')->orderBy('id', 'desc')->count();
        $paid = Order::where('payment_status', '=', 'Completed')->orderBy('id', 'desc')->count();
        $completed = Order::where('status', '=', 'completed')->orderBy('id', 'desc')->count();
        $declined = Order::where('status', '=', 'declined')->orderBy('id', 'desc')->count();

        return view('admin.order.ondelivery', compact('pending', 'processing', 'delivery', 'paid', 'completed', 'declined'));
    }
    public function paid()
    {
        $pending = Order::where('status', '=', 'pending')->orderBy('id', 'desc')->count();
        $processing = Order::where('status', '=', 'processing')->orderBy('id', 'desc')->count();
        $delivery = Order::where('status', '=', 'on delivery')->orderBy('id', 'desc')->count();
        $paid = Order::where('payment_status', '=', 'Completed')->orderBy('id', 'desc')->count();
        $completed = Order::where('status', '=', 'completed')->orderBy('id', 'desc')->count();
        $declined = Order::where('status', '=', 'declined')->orderBy('id', 'desc')->count();

        return view('admin.order.paid', compact('pending', 'processing', 'delivery', 'paid', 'completed', 'declined'));
    }
    public function processing()
    {
        $pending = Order::where('status', '=', 'pending')->orderBy('id', 'desc')->count();
        $processing = Order::where('status', '=', 'processing')->orderBy('id', 'desc')->count();
        $delivery = Order::where('status', '=', 'on delivery')->orderBy('id', 'desc')->count();
        $paid = Order::where('payment_status', '=', 'Completed')->orderBy('id', 'desc')->count();
        $completed = Order::where('status', '=', 'completed')->orderBy('id', 'desc')->count();
        $declined = Order::where('status', '=', 'declined')->orderBy('id', 'desc')->count();

        return view('admin.order.processing', compact('pending', 'processing', 'delivery', 'paid', 'completed', 'declined'));
    }
    public function completed()
    {
        $pending = Order::where('status', '=', 'pending')->orderBy('id', 'desc')->count();
        $processing = Order::where('status', '=', 'processing')->orderBy('id', 'desc')->count();
        $delivery = Order::where('status', '=', 'on delivery')->orderBy('id', 'desc')->count();
        $paid = Order::where('payment_status', '=', 'Completed')->orderBy('id', 'desc')->count();
        $completed = Order::where('status', '=', 'completed')->orderBy('id', 'desc')->count();
        $declined = Order::where('status', '=', 'declined')->orderBy('id', 'desc')->count();

        return view('admin.order.completed', compact('pending', 'processing', 'delivery', 'paid', 'completed', 'declined'));
    }
    public function declined()
    {
        $pending = Order::where('status', '=', 'pending')->orderBy('id', 'desc')->count();
        $processing = Order::where('status', '=', 'processing')->orderBy('id', 'desc')->count();
        $delivery = Order::where('status', '=', 'on delivery')->orderBy('id', 'desc')->count();
        $paid = Order::where('payment_status', '=', 'Completed')->orderBy('id', 'desc')->count();
        $completed = Order::where('status', '=', 'completed')->orderBy('id', 'desc')->count();
        $declined = Order::where('status', '=', 'declined')->orderBy('id', 'desc')->count();

        return view('admin.order.declined', compact('pending', 'processing', 'delivery', 'paid', 'completed', 'declined'));
    }
    public function show($id)
    {
        $order = Order::findOrFail($id);
        $cart = unserialize(bzdecompress(utf8_decode($order->cart)));
        //utf8_encode(bzcompress(serialize($cart), 9));


        // foreach($cart->items as $key => $product){
        //      $cart->items[$key]['qty']=2;
        // }
        // $order->update([
        //     "cart"=>utf8_encode(bzcompress(serialize($cart), 9))
        // ]);

        return view('admin.order.details', compact('order', 'cart'));
    }
    public function invoice($id)
    {
        $order = Order::findOrFail($id);
        $cart = unserialize(bzdecompress(utf8_decode($order->cart)));
        return view('admin.order.invoice', compact('order', 'cart'));
    }
    public function emailsub(Request $request)
    {
        $gs = Generalsetting::findOrFail(1);
        if ($gs->is_smtp == 1) {
            $data = 0;
            $datas = [
                'to' => $request->to,
                'subject' => $request->subject,
                'body' => $request->message,
            ];

            $mailer = new GeniusMailer();
            $mail = $mailer->sendCustomMail($datas);
            if ($mail) {
                $data = 1;
            }
        } else {
            $data = 0;
            $headers = "From: " . $gs->from_name . "<" . $gs->from_email . ">";
            $mail = mail($request->to, $request->subject, $request->message, $headers);
            if ($mail) {
                $data = 1;
            }
        }

        return response()->json($data);
    }

    public function printpage($id)
    {
        $order = Order::findOrFail($id);
        $cart = unserialize(bzdecompress(utf8_decode($order->cart)));
        return view('admin.order.print', compact('order', 'cart'));
    }

    public function license(Request $request, $id)
    {
        $order = Order::findOrFail($id);
        $cart = unserialize(bzdecompress(utf8_decode($order->cart)));
        $cart->items[$request->license_key]['license'] = $request->license;
        $order->cart = utf8_encode(bzcompress(serialize($cart), 9));
        $order->update();
        $msg = 'Successfully Changed The License Key.';
        return response()->json($msg);
    }

    public function status($id, $status)
    {
        $mainorder = Order::findOrFail($id);
    }
}
