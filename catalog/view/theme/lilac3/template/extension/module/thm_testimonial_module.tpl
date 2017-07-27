<div class="testimonials">
  <div class="ts-testimonial-widget">
    <div class="slider-items-products">
      <div id="testimonials-slider" class="product-flexslider hidden-buttons home-testimonials">
        <div class="slider-items slider-width-col4 fadeInUp">
          <?php foreach ($testimonials as $testimonial) { ?>
          <div class="holder">           
            <p><?php echo $testimonial['text']; ?></p> 
            <div class="testimonial-arrow-down"></div>           
            <div class="thumb"> 
              <div class="customer-img">
              <img src="<?php echo $testimonial['image'];?>" alt="<?php echo $testimonial['author']; ?>">
              </div>
              <div class="customer-bio">
              <strong class="name"><a href="<?php echo $testimonial_url; ?>" target="_blank"><?php echo $testimonial['author']; ?></a></strong>
              <span>Happy Customer</span>
              </div>
            </div>            

          </div>
          <?php } ?> 
        </div>
      </div>
    </div>
  </div>
</div>