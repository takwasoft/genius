						<div class="item-filter" style="display:inline">
							<div class="row">
							<div class="col-7">
							 <form action="<?php echo e(route('front.vendor', Request::route('category'))); ?>/<?php echo e(str_replace(' ', '-', $vendor->shop_name)); ?>">
							 <?php if(!empty(request()->input('sort'))): ?>
                    <input type="hidden" name="sort" value="<?php echo e(request()->input('sort')); ?>" />
                  <?php endif; ?>
				  		
                        <div class="form-group input-group"> 
                            <input value="<?php echo e(request()->input('search')); ?>" name="search" type="text" class="form-control" placeholder="আপনি কি খুঁজছেন">
                            <div class="input-group-append">
                                <input
                                 
                                class="btn" type="submit" value="সার্চ" style="color:white;background:rgb(0, 152, 119);">
                            </div>
                        </div>
                    </form></div>
							<div class="col-4 offset-1"><ul class="filter-list" style="margin-right:0">
								<li class="item-short-area">
										<p><?php echo e($langg->lang64); ?> :</p>
										<form id="sortForm" class="d-inline-block" action="<?php echo e(route('front.vendor', Request::route('slug'))); ?>" method="get">
											<?php if(!empty(request()->input('min'))): ?>
												<input type="hidden" name="min" value="<?php echo e(request()->input('min')); ?>">
											<?php endif; ?>
											<?php if(!empty(request()->input('max'))): ?>
												<input type="hidden" name="max" value="<?php echo e(request()->input('max')); ?>">
											<?php endif; ?>
											<select name="sort" class="short-item" onchange="document.getElementById('sortForm').submit()">
		                    <option value="date_desc" <?php echo e(request()->input('sort') == 'date_desc' ? 'selected' : ''); ?>><?php echo e($langg->lang65); ?></option>
		                    <option value="date_asc" <?php echo e(request()->input('sort') == 'date_asc' ? 'selected' : ''); ?>><?php echo e($langg->lang66); ?></option>
		                    <option value="price_asc" <?php echo e(request()->input('sort') == 'price_asc' ? 'selected' : ''); ?>><?php echo e($langg->lang67); ?></option>
		                    <option value="price_desc" <?php echo e(request()->input('sort') == 'price_desc' ? 'selected' : ''); ?>><?php echo e($langg->lang68); ?></option>
											</select>
										</form>
								</li>
							</ul></div></div>
						</div> 
