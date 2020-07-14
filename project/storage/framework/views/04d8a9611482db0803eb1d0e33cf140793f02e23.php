<?php $__env->startSection('content'); ?>

<!-- Vendor Area Start -->
<div class="container" style="margin-top:15px">
  <div class="vendor-banner" style="background: url(<?php echo e($vendor->shop_image != null ? asset('assets/images/vendorbanner/'.$vendor->shop_image) : ''); ?>); background-repeat: no-repeat; background-size: cover;background-position: center;padding:0;<?php echo $vendor->shop_image != null ? '' : 'background-color:'.$gs->vendor_color; ?> ">
    
      <div class="row align-items-end"  style="height:60vh;">
       <div class="col-md-2 offset-1" style="margin-bottom:-30px;">
          <div class="vendor-details clearfix">
              <div class="vendor-logo float-left">
          <img src="<?php echo e($vendor->photo ? asset('assets/images/users/'.$vendor->photo):asset('assets/images/'.$gs->user_image)); ?>" alt="" style="border-radius:50%; width:150px;height:150px;border: 1px solid grey;">
          </div>
            <!-- <div class="content float-left ml-3 pt-5 mt-2">
            <p class="sub-title">
              <?php echo e($vendor->shop_name); ?>

            </p> 
            
          </div> -->
          </div>
       </div>
       
      </div>
    </div> 
  </div>
  <section class="bg-muted">
    <div class="container">
   <div style="border:1px solid #e6e4e4;">
    <div class="offset-3"><button data-toggle="modal" data-target=".bd-example-modal-lg" class="btn vendor-btn" style="border-right:1px solid  #e6e4e4; border-radius:0">About</button>
    
    <?php if($contact_hide==0): ?>
<button  class="btn vendor-btn" data-toggle="modal" data-target=".bd-example-modal-lg1" style="border-right:1px solid  #e6e4e4; border-radius:0;margin-left:-4px;">Contact</button>
    <?php endif; ?>
    </div>
   </div>
  </div>
  </section>



 





<!-- SubCategori Area Start -->
  <section class="sub-categori" style="padding-top:30px">
    <div class="container">
      <div class="row">

        <?php echo $__env->make('includes.vendor-catalog', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

        <div class="col-lg-9 order-first order-lg-last">
          <div class="right-area">
          

            <?php if(count($vprods) > 0): ?>

              <?php echo $__env->make('includes.vendor-filter', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

            <div class="categori-item-area">
              
                <div class="row">

                  <?php $__currentLoopData = $vprods; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php echo $__env->make('includes.product.product', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                </div>
                  <div class="page-center category">
                    <?php echo $vprods->appends(['sort' => request()->input('sort'), 'min' => request()->input('min'), 'max' => request()->input('max')])->links(); ?>

                  </div>
              
            </div>

            <?php else: ?>
              <div class="page-center">
                <h4 class="text-center"><?php echo e($langg->lang60); ?></h4>
              </div>
            <?php endif; ?>


          </div>
        </div>
      </div>
      <div class="top-add mt-4">
        <div class="">
            <center><img src="<?php echo e(asset('assets/images/brand/gp.gif')); ?>"></center>
        </div>
    </div>
    </div>
  </section>
<!-- SubCategori Area End -->


<?php if(Auth::guard('web')->check()): ?>



<div class="message-modal">
  <div class="modal" id="vendorform1" tabindex="-1" role="dialog" aria-labelledby="vendorformLabel1" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="vendorformLabel1"><?php echo e($langg->lang118); ?></h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>
      <div class="modal-body">
        <div class="container-fluid p-0">
          <div class="row">
            <div class="col-md-12">
              <div class="contact-form">

                <form id="emailreply">
                  <?php echo e(csrf_field()); ?>

                  <ul>

                    <li>
                      <input type="text" class="input-field" readonly="" placeholder="Send To <?php echo e($vendor->shop_name); ?>" readonly="">
                    </li>

                    <li>
                      <input type="text" class="input-field" id="subj" name="subject" placeholder="<?php echo e($langg->lang119); ?>" required="">
                    </li>

                    <li>
                      <textarea class="input-field textarea" name="message" id="msg" placeholder="<?php echo e($langg->lang120); ?>" required=""></textarea>
                    </li>

                    <input type="hidden" name="email" value="<?php echo e(Auth::guard('web')->user()->email); ?>">
                    <input type="hidden" name="name" value="<?php echo e(Auth::guard('web')->user()->name); ?>">
                    <input type="hidden" name="user_id" value="<?php echo e(Auth::guard('web')->user()->id); ?>">
                    <input type="hidden" name="vendor_id" value="<?php echo e($vendor->id); ?>">

                  </ul>
                  <button class="submit-btn" id="emlsub1" type="submit"><?php echo e($langg->lang118); ?></button>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </div>
</div>








<?php endif; ?>

<!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" >
  Launch demo modal
</button> -->

<!-- Modal -->
<!-- <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered " role="document">
    <div class="modal-content">
      <div class=" vendor-model claarfix">
        <h5 class="modal-title float:left" id="exampleModalCenterTitle">About Us</h5>
        <button type="button" class="close float:right" style="margin-top:-35px;font-size:28px" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>
        <p>Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>
        <p>Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>
      </div>

    </div>
  </div>
</div> -->

<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
     <div class="modal-header vendor-model" style="padding:25px 15px!important;">
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
        
         <div class="col-6">
         <img src="<?php echo e($vendor->photo ? asset('assets/images/users/'.$vendor->photo):asset('assets/images/'.$gs->user_image)); ?>" alt="Vendor"></div>
        <div class="col-6"><h2>About Us</h2>
        <hr class="float-left" style="width:200px;margin-top: -5px; margin-bottom: 1.3rem;border: 0;
    border-top: 2px solid rgba(63, 103, 60, 0.1);background: #08a245;">
        <div class="clearfix"></div>
<?php echo e($vendor->shop_details); ?>

        </div>
       
      </div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade bd-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
     <div class="modal-header vendor-model" style="padding:25px 15px!important;">
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
        
         <div class="col-6">
          <div> 
            <form >
            <?php echo e(csrf_field()); ?>

            <input type="hidden" name="vendor" value="<?php echo e($vendor->id); ?>">
            <div class="form-group">
              <label for="exampleInputName">Your Name</label>
              <input id="name" name="name" type="name" class="form-control"aria-describedby="emailHelp" placeholder="Enter Name">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Your E-mail</label>
              <input id="email"
              name="email" type="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="exampleFormControlTextarea1">Your Message</label>
              <textarea name="message" class="form-control" placeholder="Please enter your message here..." id="message" rows="3"></textarea>
            </div>
            <button id="btn1" type="button" onclick="sendEmail()" class="btn btn-primary" >Submit</button>
          </form>
          </div>
         </div>
        <div class="col-6"><h2>Address</h2>
        <hr class="float-left" style="width:200px;margin-top: -5px; margin-bottom: 1.3rem;border: 0;
    border-top: 2px solid rgba(63, 103, 60, 0.1);background: #08a245;">
        <div class="clearfix"></div>
                
                <h5 class="pt-3"><a href="tel:<?php echo e($vendor->phone); ?>"><i class="fas fa-phone-volume mr-2"></i><?php echo e($vendor->phone); ?></a></h5>
                <h5 class="py-3"><i class="far fa-envelope  mr-2" aria-hidden="true"></i><?php echo e($vendor->email); ?></h5>
                <h4 class="pb-3"><i class="fas fa-map-marker-alt mr-2" aria-hidden="true"></i>
                <?php echo e($vendor->subdistrict?$vendor->subdistrict->name:''); ?>

                <br>
                <?php echo e($vendor->district?$vendor->district->name:''); ?>,
                <?php echo e($vendor->division?$vendor->division->name:''); ?>

                </h4>
                <h5 class="pb-3"><i class="fas fa-map-marker-alt mr-2" aria-hidden="true"></i><?php echo e($vendor->shop_address); ?></h5>
            </div>
       
      </div>
      </div>
    </div>
  </div>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>

<script type="text/javascript">
sendEmail = () => {
          if(!$("#name").val()){
            toastr.warning("Please Enter Your Name");
            return;
          }
          if(!$("#email").val()){
            toastr.warning("Please Enter Your Email");
            return;
          }
          if(!$("#message").val()){
            toastr.warning("Please Enter Your Message");
            return;
          }
          $('#btn1').prop('disabled', true);
             $.ajax({
                method: "POST",
                url: "<?php echo e(route('send-mail-vendor')); ?>",
                data: {
                  vendor:<?php echo e($vendor->id); ?>,
                  name:$("#name").val(),
                  email:$("#email").val(),
                  message:$("#message").val(),
                  _token:$('input[name ="_token"]').val()
                },
                success: function(data) {
                    toastr.success("Your message has been submitted");
                     $('#btn1').prop('disabled', false);
                }
             })
        }
        $("#sortby").on('change',function () {
          var sort = $("#sortby").val();
          window.location = "<?php echo e(url('/store')); ?>/<?php echo e(str_replace(' ', '-', $vendor->shop_name)); ?>?sort="+sort;
        });

  $(function () {
    $("#slider-range").slider({
    range: true,
    orientation: "horizontal",
    min: 0,
    max: 50000,
    values: [<?php echo e(isset($_GET['min']) ? $_GET['min'] : '10000'); ?>, <?php echo e(isset($_GET['max']) ? $_GET['max'] : '40000'); ?>],
    step: 5,

    slide: function (event, ui) {
      if (ui.values[0] == ui.values[1]) {
        return false;
      }

      $("#min_price").val(ui.values[0]);
      $("#max_price").val(ui.values[1]);
    }
    });

    $("#min_price").val($("#slider-range").slider("values", 0));
    $("#max_price").val($("#slider-range").slider("values", 1));

  });
</script>

<script type="text/javascript">
          $(document).on("submit", "#emailreply" , function(){
          var token = $(this).find('input[name=_token]').val();
          var subject = $(this).find('input[name=subject]').val();
          var message =  $(this).find('textarea[name=message]').val();
          var email = $(this).find('input[name=email]').val();
          var name = $(this).find('input[name=name]').val();
          var user_id = $(this).find('input[name=user_id]').val();
          var vendor_id = $(this).find('input[name=vendor_id]').val();
          $('#subj').prop('disabled', true);
          $('#msg').prop('disabled', true);
          $('#emlsub').prop('disabled', true);
     $.ajax({
            type: 'post',
            url: "<?php echo e(URL::to('/vendor/contact')); ?>",
            data: {
                '_token': token,
                'subject'   : subject,
                'message'  : message,
                'email'   : email,
                'name'  : name,
                'user_id'   : user_id,
                'vendor_id'  : vendor_id
                  },
            success: function() {
          $('#subj').prop('disabled', false);
          $('#msg').prop('disabled', false);
          $('#subj').val('');
          $('#msg').val('');
        $('#emlsub').prop('disabled', false);
        toastr.success("<?php echo e($langg->message_sent); ?>");
        $('.ti-close').click();
            }
        });
          return false;
        });
</script>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>