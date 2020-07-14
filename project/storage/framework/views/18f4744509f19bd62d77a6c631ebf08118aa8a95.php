<?php $__env->startSection('styles'); ?>

<style>
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #3e8e41;
}
 
#myInput {
  box-sizing: border-box;
  background-image: url('../assets/images/searchicon.png');
  background-position: 14px 9px;
  background-repeat: no-repeat;
  font-size: 16px;
  padding: 8px 20px 8px 45px;
  border: 1px solid #ddd;
  border-radius:4px;
}
#all_sub_category i{
     padding-left: 2px;
    padding-right: 2px;
    padding-top: 6px;
    padding-bottom: 5px;
    margin-top: -2px;
}

.all_sub_category_btn{
    border: 1px solid #ddd;
    margin-top: -2px;
    margin-left: -5px;
    padding: 0.26rem .7rem;
}
#myInput:focus {outline: 0;
box-shadow: 0 0 0 .2rem rgba(0,123,255,.25);}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  min-width: 100%;
  overflow: auto;
  border: 1px solid #ddd;
  z-index: 1;

}

.dropdown-content a {
  color: black;
  padding: 9px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {    background: rgba(0,152,119,.05);
    color: #149777!important;}

.show {display: block;}
	.sub-cate-item{
    top: 0%; 
    position: absolute;
    left: 100%;  
    width: 90%; 
    margin-left: 5px;
    display: none;
}
.close span {
    font-size: 27px!important;
}

.model-item li {
    border-top: 1px solid rgba(0, 0, 0, .125);
    padding: .7rem 0 .7rem .80rem;
}
.model-item li li {
    border-top: 1px solid rgba(0, 0, 0, .125);
    padding: .82rem .5rem; 
}
.model-item li:last-child {
    border-bottom: 1px solid rgba(0, 0, 0, .125);
}
.model-item li:first-child {
    border-top: none;
}
.model-item1 li:first-child {
    border-top: 1px solid rgba(0, 0, 0, .125);
}
.model-item ul {
    margin-top: 0;
    margin-bottom: 10px;
	padding: 0;
    list-style: none;
}
.model-item li a {
    color: #0074ba;
}
.model-item li ul li a {
    color: #0074ba!important;
}
</style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
 
<section class="user-dashbord">
    <div class="container">
        <div class="row">
            <?php echo $__env->make('includes.user-dashboard-sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
            <div class="col-lg-8">
                <div class="user-profile-details">

                    <div class="account-info">
                        <div class="header-area">
                            <h4 class="title">
                                <?php echo e($langg->lang409); ?> <a class="mybtn1" href="<?php echo e(route('user-package')); ?>"> <i
                                        class="fas fa-arrow-left"></i> <?php echo e($langg->lang410); ?></a>
                            </h4>
                        </div>
                        <div class="pack-details">
                            <div class="row">

                                <div class="col-lg-4">
                                    <h5 class="title">
                                        <?php echo e($langg->lang411); ?>

                                    </h5>
                                </div>
                                <div class="col-lg-8">
                                    <p class="value">
                                        <?php echo e($subs->title); ?>

                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <h5 class="title">
                                        <?php echo e($langg->lang412); ?>

                                    </h5>
                                </div>
                                <div class="col-lg-8">
                                    <p class="value">
                                        <?php echo e($subs->price); ?><?php echo e($subs->currency); ?>

                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <h5 class="title">
                                        <?php echo e($langg->lang413); ?>

                                    </h5>
                                </div>
                                <div class="col-lg-8">
                                    <p class="value">
                                        <?php echo e($subs->days); ?> <?php echo e($langg->lang403); ?>

                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <h5 class="title">
                                        <?php echo e($langg->lang414); ?>

                                    </h5>
                                </div>
                                <div class="col-lg-8">
                                    <p class="value">
                                        <?php echo e($subs->allowed_products == 0 ? 'Unlimited':  $subs->allowed_products); ?>

                                    </p>
                                </div>
                            </div>

                            <?php if(!empty($package)): ?>
                            <?php if($package->subscription_id != $subs->id): ?>
                            <div class="row">
                                <div class="col-lg-4">
                                </div>
                                <div class="col-lg-8">
                                    <span class="notic"><b><?php echo e($langg->lang415); ?></b> <?php echo e($langg->lang416); ?></span>
                                </div>
                            </div>

                            <br>
                            <?php else: ?>
                            <br>

                            <?php endif; ?>
                            <?php else: ?>
                            <br>
                            <?php endif; ?>

                            <form id="subscribe-form" class="pay-form" action="<?php echo e(route('user-vendor-request-submit')); ?>"
                                method="POST">

                                <?php echo $__env->make('includes.form-success', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                                <?php echo $__env->make('includes.form-error', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                                <?php echo $__env->make('includes.admin.form-error', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
 
                                <?php echo e(csrf_field()); ?>

												<input id="subdistrict_id" name="subdistrict_id" type="hidden">
                                                <input id="district_id" name="district_id" type="hidden">
                                                <input id="division_id" name="division_id" type="hidden">

<div class="modal fade" id="my-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content" style="overflow: scroll;height:90vh">

            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                <div class="row">
                    <div class="col-md-6">
                        <h6 class="mb-3">শহর বা বিভাগ নির্বাচন করুন</h6>
                        <a href="" style="color: #0074ba;">বাংলাদেশ-এর সবগুলো</a>
                        <h6 class="text-muted" style="margin-top: 19px;border-top: 1px solid rgba(0, 0, 0, .125);; padding-top: 10px;">শহর</h6>
                    </div>
                    <div class="col-md-6">
                        
                        <h6 class="mt-3 text-muted">জনপ্রিয় এলাকাসমূহ</h6>
                        
                    </div>

					
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="categories-list model-item main-cate-item ">
                            <ul>
                                <?php $__currentLoopData = $districts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $district): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                    <li class="brn">
                                    <a onclick="showItem('sub-dis',<?php echo e($district->id); ?>,'.dis','district_id',<?php echo e($district->id); ?>,['division_id','subdistrict_id'],'area_name','<?php echo e($district->name); ?>')" href="#" class="clearfix">
                                        <span class="dnn float-left"><?php echo e($district->name); ?></span><span class="dnn float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                    <div id="sub-dis<?php echo e($district->id); ?>" class="lft sub-dis categories-list sub-cate-item" >
                                        <button class="d-sm-none btn-back" onclick="dModal()"><i class="fas fa-chevron-left"></i>Back</button>
                                        <ul class="sub-menu1 text-muted">

                                         <li><a onclick="closeModal()" class="text-muted" href="javascript:void(0)"><?php echo e($district->name); ?> এর সবগুলো</a></li>
                                         <?php ($i=1); ?>
                                            <?php $__currentLoopData = $district->subdistricts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subdistrict): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if($i<6): ?>
                                                <li><a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',<?php echo e($subdistrict->id); ?>,[],'area_name','<?php echo e($subdistrict->name); ?>','#my-modal')"><?php echo e($subdistrict->name); ?></a></li>
                                                <?php elseif($i==6): ?>
                                                    <div class="dropdown mt-4" id="all_sub_category">
  
    <input onclick="myFunction(this)" type="text" placeholder="অন্যান্য এলাকা (A-Z)" id="myInput" onkeyup="filterFunction(this)" >
    <button class="btn all_sub_category_btn" onclick="myFunction(this)"><i class="dist fas  fa-angle-down">
    </i></button>
  <div id="myDropdown" class="dropdown-content ">
                                                    <a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',<?php echo e($subdistrict->id); ?>,[],'area_name','<?php echo e($subdistrict->name); ?>','#my-modal')"><?php echo e($subdistrict->name); ?></a>
                                                
                                                <?php else: ?>
                                                    <a class="text-muted" href="javascript:void(0)" onclick="showItem('sub-dis','','.dis','subdistrict_id',<?php echo e($subdistrict->id); ?>,[],'area_name','<?php echo e($subdistrict->name); ?>','#my-modal')"><?php echo e($subdistrict->name); ?></a>
                                                <?php endif; ?>
                                                <?php if($i>=6&&$i==$district->subdistricts->count()): ?>
                                                   
                                                    </div>
                                                    </div>
                                                    <?php endif; ?>
                                                   <?php ($i++); ?> 
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            
                                        </ul>
                                    </div>

                                </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                              
                            </ul>
                        </div>
                        <input type="hidden" id="area_key" >
                        <input type="hidden" id="area_value" >
                        <div class="dnn btn text-muted mt-3">বিভাগ</div>
                        <div class=" categories-list model-item categories-list-division">
                            <ul>
                            
                               <?php $__currentLoopData = $divisions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $division): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li class="brn">
                                    <a
									 onclick="showItem('dis',<?php echo e($division->id); ?>,'.sub-dis','division_id',<?php echo e($division->id); ?>,['district_id','subdistrict_id'],'area_name','<?php echo e($division->name); ?>')"
									
									 href="#" class="clearfix">
                                        <span class="dnn float-left"><?php echo e($division->name); ?></span><span class="dnn float-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                                        <div id="dis<?php echo e($division->id); ?>" class="lft dis categories-list sub-cate-item sub-cate-item-division" style="">
                                        <button class="d-sm-none btn-back" onclick="dModal()"><i class="fas fa-chevron-left"></i>Back</button>

                                        <ul class="sub-menu1 text-muted">
                                         <li><a onclick="closeModal()" class="text-muted" href="#"><?php echo e($division->name); ?> বিভাগ এর সবগুলো</a></li>
                                         <?php ($i=1); ?>
                                            <?php $__currentLoopData = $division->districts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $district): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if($i<6): ?>

                                                <li><a class="text-muted" href="#"
												onclick="showItem('','','','district_id',<?php echo e($district->id); ?>,[],'area_name','<?php echo e($district->name); ?>','#my-modal')"
												><?php echo e($district->name); ?></a></li>
<?php elseif($i==6): ?>
                                                    <div class="dropdown mt-4" id="all_sub_category">
  
    <input onclick="myFunctionDiv(this)" type="text" placeholder="অন্যান্য এলাকা (A-Z)" id="myInput" onkeyup="filterFunctionDiv(this)" >
    <button class="btn all_sub_category_btn" onclick="myFunctionDiv(this)"><i class="div fas fa-angle-down ">
    </i></button>
  <div id="myDropdownDiv" class="dropdown-content ">
                                                    <a class="text-muted" href="#"
												onclick="showItem('','','','district_id',<?php echo e($district->id); ?>,[],'area_name','<?php echo e($district->name); ?>','#my-modal')"
												><?php echo e($district->name); ?></a>
                                                
                                                <?php else: ?>
                                                    <a class="text-muted" href="#"
												onclick="showItem('','','','district_id',<?php echo e($district->id); ?>,[],'area_name','<?php echo e($district->name); ?>','#my-modal')"
												><?php echo e($district->name); ?></a>
                                                <?php endif; ?>
                                                <?php if($i>=6&&$i==$district->subdistricts->count()): ?>
                                                   
                                                    </div>
                                                    </div>
                                                    <?php endif; ?>
                                                   <?php ($i++); ?> 

                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            
                                        </ul>
                                    </div>
                                </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>
                    
                    <script>
function myFunction(el) {
    el.parentElement.children[2].classList.toggle("show")
  //document.getElementById("myDropdown").classList.toggle("show");
  if($(".dist.fa-angle-up").length>0)
  {
    $(".dist.fa-angle-up").attr("class","dist fas fa-angle-down")
  }
  else{
    $(".fa-angle-down.dist").attr("class","dist fas fa-angle-up")
  }
}

function filterFunction(el) {
  if(el.parentElement.children[2].classList.length==1){
    el.parentElement.children[2].classList.add("show")
  }
  var input, filter, ul, li, a, i;
  input = el;
  filter = input.value.toUpperCase();
  div = el.parentElement.children[2];
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}
function myFunctionDiv(el) {
    el.parentElement.children[2].classList.toggle("show")
  //document.getElementById("myDropdownDiv").classList.toggle("show");
  if($(".fa-angle-up.div").length>0)
  {
    $(".fa-angle-up.div").attr("class","fas div fa-angle-down")
  }
  else{
    $(".fa-angle-down.div").attr("class","fas div fa-angle-up")
  }
}
function filterFunctionDiv(el) {
  if(el.parentElement.children[2].classList.length==1){
    el.parentElement.children[2].classList.add("show")
  }
  var input, filter, ul, li, a, i;
  input = el;
  filter = input.value.toUpperCase();
  div = el.parentElement.children[2];
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}

dModal=()=>{
  if(screen.width<576){
        
        $(".dnn").css("display","inline-block");
        $(".lft").css("left","100%");

         $(".brn").css("border-top","1px solid rgba(0, 0, 0, .125)");
        $(".brn:first-child").css("border","none");
        

      }
}
	showItem=(cls,id,cls2,sid,svalue,r,hid,hval,cm=null)=>{
if(cm){

		$(cm).modal('toggle');
		}
		toastr.success(hval+" selected");
		document.getElementById(hid).innerHTML=hval;
		console.log(r)
		r.forEach(ri=>{
			document.getElementById(ri).value="";
		})
		document.getElementById(sid).value=svalue;
		$(cls2).hide();
		id="#"+cls+id;
		cls="."+cls;
		$(cls).hide();
		$(id).show();

        if(screen.width<576){
        $(".brn").css("border","none");
        $(".dnn").css("display","none");
        $(".lft").css("left","18px");

      }
	}
</script>
                                <?php if($user->is_vendor == 0): ?>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            Area
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                       <div onclick="dModal()" data-target="#my-modal"  data-toggle="modal">
                                            <span id="area_name">Choose Area*</span>
                                    
                                        </div>
                                    </div>
                                </div>
                            
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            <?php echo e($langg->lang238); ?> 
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" id="shop-name" class="option" name="shop_name"
                                            placeholder="<?php echo e($langg->lang238); ?>" required>
                                    </div>
                                </div>

                                <br>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            <?php echo e($langg->lang239); ?> *
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <input value="<?php echo e($user->name); ?>" type="text" class="option" name="owner_name"
                                            placeholder="<?php echo e($langg->lang239); ?>" required>
                                    </div>
                                </div>

                                <br>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            <?php echo e($langg->lang240); ?> *
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class="option" name="shop_number"
                                            placeholder="<?php echo e($langg->lang240); ?>" required>
                                    </div>
                                </div>

                                <br>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            <?php echo e($langg->lang241); ?> *
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <input value="<?php echo e($user->address); ?>" type="text" class="option" name="shop_address"
                                            placeholder="<?php echo e($langg->lang241); ?>" required>
                                    </div>
                                </div>

                                <br>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            <?php echo e($langg->lang242); ?> <small><?php echo e($langg->lang417); ?></small>
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <input type="text" class="option" name="reg_number"
                                            placeholder="<?php echo e($langg->lang242); ?>">
                                    </div>
                                </div>

                                <br>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            <?php echo e($langg->lang243); ?> <small><?php echo e($langg->lang417); ?></small>
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <textarea class="option" name="shop_message" placeholder="<?php echo e($langg->lang243); ?>"
                                            rows="5"></textarea>
                                    </div>
                                </div>

                                <br>


                                <?php endif; ?>
                                <input type="hidden" name="subs_id" value="<?php echo e($subs->id); ?>">

                                <?php if($subs->price != 0): ?>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title pt-1">
                                            <?php echo e($langg->lang418); ?> *
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">

                                        <select name="method" id="option" onchange="getAdditional(this.value)"  class="option"
                                            required="">
                                        <option value="">Select Payment Method</option>
                                                <option value="0">From Balance</option>
                                            <?php $__currentLoopData = $gateways; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $gateway): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($gateway->id); ?>"><?php echo e($gateway->title); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
                                        </select>
                                 <div id="ad-field">

                                    </div>
                                    </div>
                                   
                                </div>
                            
                            <script>
                            getExtra = (id) => {
                                    if(id==0){
                                        document.getElementById("ad-field").innerHTML="";
                                    }
                                    var xhttp = new XMLHttpRequest();
                                    xhttp.onreadystatechange = function() {
                                        if (this.readyState == 4 && this.status == 200) {
                                             if(this.responseText!=0)
		{
			toastr.warning("Extra charge "+this.responseText+"BDT will be added for payment");
		}
                                        }
                                    };
                                    xhttp.open("GET", "<?php echo e(URL::to('/checkout/extra/')); ?>/<?php echo e($subs->price); ?>/"+id, true);
                                    xhttp.send();
                                }
                                getAdditional = (id) => {
                                    if(id==0){
                                        document.getElementById("ad-field").innerHTML="";
                                    }
                                    var xhttp = new XMLHttpRequest();
                                    xhttp.onreadystatechange = function() {
                                        if (this.readyState == 4 && this.status == 200) {
                                            document.getElementById("ad-field").innerHTML = this.responseText;
                                            getExtra(id)
                                        }
                                    };
                                    xhttp.open("GET", "<?php echo e(URL::to('/checkout/subs/')); ?>/<?php echo e($subs->price); ?>/"+id, true);
                                    xhttp.send();
                                }
                            </script>

                                <div id="stripes" style="display: none;">

                                    <br>



                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                <?php echo e($langg->lang422); ?> *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" class="option" name="card" id="scard"
                                                placeholder="<?php echo e($langg->lang422); ?>">
                                        </div>
                                    </div>

                                    <br>


                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                <?php echo e($langg->lang423); ?> *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" class="option" name="cvv" id="scvv"
                                                placeholder="<?php echo e($langg->lang423); ?>">
                                        </div>
                                    </div>

                                    <br>


                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                <?php echo e($langg->lang424); ?> *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" class="option" name="month" id="smonth"
                                                placeholder="<?php echo e($langg->lang424); ?>">
                                        </div>
                                    </div>


                                    <br>

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                <?php echo e($langg->lang425); ?> *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" class="option" name="year" id="syear"
                                                placeholder="<?php echo e($langg->lang425); ?>">
                                        </div>
                                    </div>

                                </div>
                                <div id="paypals">
                                    <input type="hidden" name="cmd" value="_xclick">
                                    <input type="hidden" name="no_note" value="1">
                                    <input type="hidden" name="lc" value="UK">
                                    <input type="hidden" name="currency_code"
                                        value="<?php echo e(strtoupper($subs->currency_code)); ?>">
                                    <input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynow_LG.gif:NonHostedGuest">
                                    <input type="hidden" name="ref_id" id="ref_id" value="">
                                    <input type="hidden" name="sub" id="sub" value="0">
                                    <input type="hidden" name="ck" id="ck" value="0">
                                </div>

                                <?php endif; ?>
                                <div class="row">
                                    <div class="col-lg-4">
                                    </div>
                                    <div class="col-lg-8">
                                        <button type="submit" id="final-btn"
                                            class="mybtn1"><?php echo e($langg->lang426); ?></button>
                                    </div>
                                </div>




                            </form>



                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php $__env->stopSection(); ?>



<?php $__env->startSection('scripts'); ?>

<script src="https://js.paystack.co/v1/inline.js"></script>

<script type="text/javascript">

    $(document).on('submit', '#paystack-form', function (e) {
        var val = $('#sub').val();
        if (val == 0) {
            $.get('<?php echo e(route('user.paystack.check').' ? shop_name = '); ?>' + $('#shop-name').val(), function (data, status) {


                if ((data.errors)) {

                    $('.alert-danger').show();
                    $('.alert-danger ul').html('');
                    for (var error in data.errors) {
                        $('.alert-danger ul').append('<li>' + data.errors[error] + '</li>');
                        $('#sub').val('0');
                        $('#ck').val('1');
                    }

                }
                else {
                    $('#ck').val('0');
                }



            });

            setTimeout(function () {

                if ($('#ck').val() == '0') {

                    $('#preloader').hide();

                    var total = <?php echo e($subs-> price); ?>

                }
            };

            var handler = PaystackPop.setup({
                key: '<?php echo e($gs->paystack_key); ?>',
                email: '<?php echo e($user->email); ?>',
                amount: total * 100,
                currency: "<?php echo e(strtoupper($subs->currency_code)); ?>",
                ref: '' + Math.floor((Math.random() * 1000000000) + 1),
                callback: function (response) {
                    $('#ref_id').val(response.reference);
                    $('#sub').val('1');
                    $('#final-btn').click();
                },
                onClose: function () {
                }
            });
            handler.openIframe();
            return false;



        }



    }, 1000);




    return false;

                }


                            else {
        $('#preloader').show();
        return true;
    }


        });

</script>


<?php if($subs->price != 0): ?>
<script type="text/javascript">
    function meThods(val) {
        var action1 = "<?php echo e(route('user.paypal.submit')); ?>";
        var action2 = "<?php echo e(route('user.stripe.submit')); ?>";
        var action3 = "<?php echo e(route('user.instamojo.submit')); ?>";
        var action4 = "<?php echo e(route('user.paystack.submit')); ?>";
        var action5 = "<?php echo e(route('user.molly.submit')); ?>";
        var action6 = "<?php echo e(route('user.paytm.submit')); ?>";
        var action7 = "<?php echo e(route('user.razorpay.submit')); ?>";

        if (val.value == "Paypal") {
            $('.pay-form').attr('id', 'subscribe-form');
            $(".pay-form").attr("action", action1);
            $("#scard").prop("required", false);
            $("#scvv").prop("required", false);
            $("#smonth").prop("required", false);
            $("#syear").prop("required", false);
            $("#stripes").hide();

        }
        else if (val.value == "Instamojo") {
            $('.pay-form').attr('id', 'subscribe-form');
            $(".pay-form").attr("action", action3);
            $("#scard").prop("required", false);
            $("#scvv").prop("required", false);
            $("#smonth").prop("required", false);
            $("#syear").prop("required", false);
            $("#stripes").hide();
        }

        else if (val.value == "Molly") {
            $('.pay-form').attr('id', 'subscribe-form');
            $(".pay-form").attr("action", action5);
            $("#scard").prop("required", false);
            $("#scvv").prop("required", false);
            $("#smonth").prop("required", false);
            $("#syear").prop("required", false);
            $("#stripes").hide();
        }

        else if (val.value == "Paytm") {
            $('.pay-form').attr('id', 'subscribe-form');
            $(".pay-form").attr("action", action6);
            $("#scard").prop("required", false);
            $("#scvv").prop("required", false);
            $("#smonth").prop("required", false);
            $("#syear").prop("required", false);
            $("#stripes").hide();
        }

        else if (val.value == "Razorpay") {
            $('.pay-form').attr('id', 'subscribe-form');
            $(".pay-form").attr("action", action7);
            $("#scard").prop("required", false);
            $("#scvv").prop("required", false);
            $("#smonth").prop("required", false);
            $("#syear").prop("required", false);
            $("#stripes").hide();
        }

        else if (val.value == "Paystack") {
            $('.pay-form').attr('id', 'paystack-form');
            $(".pay-form").attr("action", action4);
            $("#scard").prop("required", false);
            $("#scvv").prop("required", false);
            $("#smonth").prop("required", false);
            $("#syear").prop("required", false);
            $("#stripes").hide();
        }

        else if (val.value == "Stripe") {
            $('.pay-form').attr('id', 'subscribe-form');
            $(".pay-form").attr("action", action2);
            $("#scard").prop("required", true);
            $("#scvv").prop("required", true);
            $("#smonth").prop("required", true);
            $("#syear").prop("required", true);
            $("#stripes").show();
        }
    }    
</script>
<?php endif; ?>

<script type="text/javascript">

    $(document).on('submit', '#subscribe-form', function () {
        $('#preloader').show();
    });

</script>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>