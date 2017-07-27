<div class="container brand-logo-block">
<div class="brand-logo">
      <div class="new_title center">
        <h2><?php echo $heading_title; ?></h2>
      </div>
      <div class="slider-items-products">
        <div id="brand-logo-slider" class="product-flexslider hidden-buttons">
          <div class="slider-items slider-width-col6"> 
              <?php foreach ($banners as $banner) { ?>
              <!-- Item -->
              <div class="item"> 
                <a href="<?php echo $banner['link']; ?>">
                  <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>">
                </a>
              </div>
              <!-- End Item -->
              <?php }?>
            </div><!-- slider-items slider-width-col6 -->
          </div><!-- brand-logo-slider -->
      </div><!-- slider-items-products -->
</div><!-- brand-logo -->
</div>