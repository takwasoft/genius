<?php

namespace App\Providers;

use App\Classes\GeniusMailer;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Config;
use App\Models\Category;
use Carbon\Carbon;
use Session; 
use Illuminate\Support\Collection;
use Illuminate\Pagination\LengthAwarePaginator;
use App;
use App\Models\AdminUserConversation;
use App\Models\AdminUserMessage;
use App\Models\FavoriteSeller;
use App\Models\Message;
use App\Models\Product;

class AppServiceProvider extends ServiceProvider
{ 
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

        $admin_lang = DB::table('admin_languages')->where('is_default','=',1)->first();
        App::setlocale($admin_lang->name);
        
        view()->composer('*',function($settings){
            $settings->with('gs', DB::table('generalsettings')->find(1));
            $settings->with('seo', DB::table('seotools')->find(1));
            if(auth()->check()){
                $settings->with('messageCount',Message::where('recieved_user','=',auth()->user()->id)->where('seen','=',0)->count());
                $settings->with('favCount',FavoriteSeller::where('user_id','=',auth()->user()->id)->count());
                $tc=0;
                $convs=AdminUserConversation::where('user_id','=',auth()->user()->id)->get();
                foreach($convs as $conv){
                    $tc+=$conv->messages->where('user_seen','=',0)->count();
                }
                $settings->with('ticketCount',$tc);
                $pendingCount=Product::where('status','=',2)->count();
                $ticketCount=AdminUserMessage::where('admin_seen','=',0)->count();
                $userMessageCount=Message::where('admin_seen','=',0)->count();
                $settings->with('pendingCount',$pendingCount);
                $settings->with('ticketCount',$ticketCount);
                $settings->with('userMessageCount',$userMessageCount);
            }
            $settings->with('categories', Category::where('status','=',1)->orderBy('serial')->get());   
            if (Session::has('language')) 
            {
                $data = DB::table('languages')->find(Session::get('language'));
                $data_results = file_get_contents(public_path().'/assets/languages/'.$data->file);
                $lang = json_decode($data_results);
                $settings->with('langg', $lang);
            }
            else
            {
                $data = DB::table('languages')->where('is_default','=',1)->first();
                $data_results = file_get_contents(public_path().'/assets/languages/'.$data->file);
                $lang = json_decode($data_results);
                $settings->with('langg', $lang);
            }  

            if (!Session::has('popup')) 
            {
                $settings->with('visited', 1);
            }
            Session::put('popup' , 1);
             
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {

        Collection::macro('paginate', function($perPage, $total = null, $page = null, $pageName = 'page') {
            $page = $page ?: LengthAwarePaginator::resolveCurrentPage($pageName);
            return new LengthAwarePaginator(
                $this->forPage($page, $perPage),
                $total ?: $this->count(),
                $perPage,
                $page,
                [
                    'path' => LengthAwarePaginator::resolveCurrentPath(),
                    'pageName' => $pageName,
                ]
            );
        });

    }
}
