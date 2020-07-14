                  <ul class="all-replay" id="product-reviews">
                    <?php $__currentLoopData = $productt->ratings; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $review): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <li>
                      <div class="single-review">
                        <div class="left-area">
                          <img src="<?php echo e($review->user->photo ? asset('assets/images/users/'.$review->user->photo):asset('assets/images/noimage.png')); ?>" alt="">
                          <h5 class="name"><?php echo e($review->user->name); ?></h5>
                          <p class="date"><?php echo e(Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $review->review_date)->diffForHumans()); ?></p>
                        </div>
                        <div class="right-area">
                          <div class="header-area">
                            <div class="stars-area">
                              <ul class="stars">
                                <div class="ratings">
                                  <div class="empty-stars"></div>
                                  <div class="full-stars" style="width:<?php echo e($review->rating*20); ?>%"></div>
                                </div>
                              </ul>
                            </div>
                          </div>
                          <div class="review-body">
                            <p>
                              <?php echo e($review->review); ?>

                            </p>
                          </div>
                        </div>
                      </div>
                  </li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                  </ul>