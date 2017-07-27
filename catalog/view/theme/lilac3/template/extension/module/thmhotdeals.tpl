<?php if($products) { ?>

 <div class="hot-deal">
 <?php foreach ($products as $product) { ?>

          <ul class="products-grid">
            <li class="right-space two-height item">
                   <div class="item-inner">
                     <div class="item-img">
                      <div class="item-img-info">
                         <a class="product-image" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>">
                         <?php if ($product['thumb']) { ?>
                         <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"/>
                         <?php } ?>
                         </a>
                         
                        <div class="hot-label hot-top-left"><?php echo $heading_title ?></div>  
                        <div class="box-hover">
                          <ul class="add-to-links">    
                          <?php if($thmlilac_quickview_button == 1) { ?>
                          <li>
                            <a href="index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>;" class="link-quickview" data-name="<?php echo $product['name']; ?>"></a>
                          </li>
                           <?php  } ?> 
                            <li><a class="link-wishlist" onclick="tm_hm_wishlist.add('<?php echo $product['product_id']; ?>');" ></a> </li>
                            <li><a class="link-compare" onclick="tm_hm_compare.add('<?php echo $product['product_id']; ?>');"></a> </li>
                          </ul>
                        </div>    
                        <div class="box-timer">
                        <div class="timer-grid"  data-time="<?php echo $product['date_end'] ;?>"></div>
                        </div>                     
                      </div>
                     </div>
                      <div class="item-info">
                         <div class="info-inner">
                            <div class="item-title"> 
                              <a title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>">
                              <?php echo $pro_name = (strlen($product['name'])>25) ? substr($product['name'], 0,25).'...' : $product['name']; ?>
                              </a>
                            </div>
                                

                            <div class="item-content">
                              <?php //if ($product['rating']) { ?>
                                <div class="rating">
                                  <div class="ratings">
                                    <div class="rating-box">
                                      <?php for ($i = 1; $i <= 5; $i++) { ?>
                                      <?php if ($product['rating'] < $i) { ?>
                                      <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                      <?php } else { ?>
                                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                      <?php } ?>
                                      <?php } ?>
                                    </div>
                                  </div>
                                </div><!-- rating -->
                                <?php // }?>  
                              <?php if ($product['price']) { ?>
                               <div class="item-price">
                                <div class="price-box"> 
                                <?php if (!$product['special']) { ?>
                                <p class="regular-price"><span class="price"><?php echo $product['price']; ?></span></p> 
                                <?php } else { ?> 
                                <p class="old-price"><span class="price"><?php echo $product['price']; ?></span></p>
                                <p class="special-price"><span class="price"><?php echo $product['special']; ?></span></p>                           
                                <?php } ?>
                              </div>
                              </div>
                              <?php } ?>
                              <div class="action">                               
                               <button type="button" title="" data-original-title="<?php echo $button_cart; ?>" class="button btn-cart" onclick="tm_hm_cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
                             
                              </div>
                            </div>

                         </div>
                      </div>  <!-- End Item info --> 
                  </div>  <!-- End  Item inner--> 
            </li>
          </ul>
       
<?php } ?>
</div>
<?php } else { ?>

 <div class="hot-deal">
          <ul class="products-grid">
            <li class="right-space two-height item">
                   <div class="item-inner">
                     <div class="item-img">
                      <div class="item-img-info">
                       <a class="product-image" href="#" title="<?php echo $no_product['name']; ?>">
                       <?php if ($no_product['thumb']) { ?>
                       <img src="<?php echo $no_product['thumb']; ?>" alt="<?php echo $no_product['name']; ?>" title="<?php echo $no_product['name']; ?>"/>
                       <?php } ?>
                       </a>
                      
                                 
                      <div class="box-hover">
                      <ul class="add-to-links">
                        
                      </ul>
                      </div>
                    
                     <div class="box-timer">
                    <div class="timer-grid"  data-time="<?php echo $no_product['date_end'] ;?>"></div>
                    </div>
                                       
                      </div>
                     </div>
                      <div class="item-info">
                         <div class="info-inner">
                            <div class="item-title"> 
                              <a title="<?php echo $no_product['name']; ?>" href="#">
                              <?php echo $pro_name = (strlen($no_product['name'])>25) ? substr($no_product['name'], 0,25).'...' : $no_product['name']; ?>
                              </a>
                            </div>


                            <div class="item-content">

                            </div>

                         </div>
                      </div>  <!-- End Item info --> 
                  </div>  <!-- End  Item inner--> 
            </li>
          </ul>
       

</div>
<?php } ?>