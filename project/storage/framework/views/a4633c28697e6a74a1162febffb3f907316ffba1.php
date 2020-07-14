        <div class="col-lg-3 col-md-6">
          <div class="left-area">
            <div class="filter-result-area">
            <div class="header-area">
              <h4 class="title">
                <?php echo e($langg->lang61); ?>

              </h4>
            </div>
            <div class="body-area">

                <ul class="filter-list">
                  <?php $__currentLoopData = $vcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $element): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
                  <li>
                    <div class="content">
                        <a href="<?php echo e(route('front.vendor', Request::route('category'))); ?>/<?php echo e(str_replace(' ', '-', $vendor->shop_name)); ?>?cat=<?php echo e($element->slug); ?>" class="category-link"> <i class="fas fa-angle-double-right"></i> <?php echo e($element->name); ?></a> 
                       


                  </li>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                </ul>


               <form class="price-range-block" id="priceForm" action="<?php echo e(route('front.vendor', Request::route('category'))); ?>/<?php echo e(str_replace(' ', '-', $vendor->shop_name)); ?>">
                  <?php if(!empty(request()->input('sort'))): ?>
                    <input type="hidden" name="sort" value="<?php echo e(request()->input('sort')); ?>" />
                  <?php endif; ?>
                  <h2 class="filter-title-2">filter by price</h2>
                  <div id="slider-range" class="price-filter-range" name="rangeInput"></div>
                  <div class="livecount">
                    <input type="number" min=0  name="min"  id="min_price" class="price-range-field" />
                    <span><?php echo e($langg->lang62); ?></span>
                    <input type="number" min=0  name="max" id="max_price" class="price-range-field" />
                  </div>
                </form>

                <button class="filter-btn" type="button" onclick="document.getElementById('priceForm').submit();"><?php echo e($langg->lang58); ?></button>
            </div>
            </div>


            <?php if((!empty($cat) && !empty(json_decode($cat->attributes, true))) || (!empty($subcat) && !empty(json_decode($subcat->attributes, true))) || (!empty($childcat) && !empty(json_decode($childcat->attributes, true)))): ?>

              <div class="tags-area">
                <div class="header-area">
                  <h4 class="title">
                      Filter
                  </h4>
                </div>
                <div class="body-area">
                  <form id="attrForm" action="<?php echo e(route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])); ?>" method="post">
                    <ul class="filter">
                      <div class="single-filter">
                        <?php if(!empty($cat) && !empty(json_decode($cat->attributes, true))): ?>
                          <?php $__currentLoopData = $cat->attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $attr): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div>
                              <strong><?php echo e($attr->name); ?></strong>
                            </div>
                            <?php if(!empty($attr->attribute_options)): ?>
                              <?php $__currentLoopData = $attr->attribute_options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="form-check">
                                  <input name="<?php echo e($attr->input_name); ?>[]" class="form-check-input attribute-input" type="checkbox" id="<?php echo e($attr->input_name); ?><?php echo e($option->id); ?>" value="<?php echo e($option->name); ?>">
                                  <label class="form-check-label" for="<?php echo e($attr->input_name); ?><?php echo e($option->id); ?>"><?php echo e($option->name); ?></label>
                                </div>
                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>

                        <?php if(!empty($subcat) && !empty(json_decode($subcat->attributes, true))): ?>
                          <?php $__currentLoopData = $subcat->attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $attr): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div>
                              <strong><?php echo e($attr->name); ?></strong>
                            </div>
                            <?php if(!empty($attr->attribute_options)): ?>
                              <?php $__currentLoopData = $attr->attribute_options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="form-check">
                                  <input name="<?php echo e($attr->input_name); ?>[]" class="form-check-input attribute-input" type="checkbox" id="<?php echo e($attr->input_name); ?><?php echo e($option->id); ?>" value="<?php echo e($option->name); ?>">
                                  <label class="form-check-label" for="<?php echo e($attr->input_name); ?><?php echo e($option->id); ?>"><?php echo e($option->name); ?></label>
                                </div>
                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>

                        <?php if(!empty($childcat) && !empty(json_decode($childcat->attributes, true))): ?>
                          <?php $__currentLoopData = $childcat->attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $attr): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div>
                              <strong><?php echo e($attr->name); ?></strong>
                            </div>
                            <?php if(!empty($attr->attribute_options)): ?>
                              <?php $__currentLoopData = $attr->attribute_options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="form-check">
                                  <input name="<?php echo e($attr->input_name); ?>[]" class="form-check-input attribute-input" type="checkbox" id="<?php echo e($attr->input_name); ?><?php echo e($option->id); ?>" value="<?php echo e($option->name); ?>">
                                  <label class="form-check-label" for="<?php echo e($attr->input_name); ?><?php echo e($option->id); ?>"><?php echo e($option->name); ?></label>
                                </div>
                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                      </div>
                    </ul>
                  </form>
                </div>
              </div>
            <?php endif; ?>


            <?php if(!isset($vendor)): ?>

            


            <?php else: ?>

           


            <?php endif; ?>


          </div>
        </div>
