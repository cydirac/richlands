<?php echo $header; ?>
<div class="main-container col2-right-layout">
<div class="main container">	 
  <div class="row">
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9 col-sm-push-3'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div id="content" class="<?php echo $class; ?>">
<div class="col-main">
      	<?php echo $content_top; ?>
     <div class="page-title">
		<h2><?php echo $heading_title;?></h2>
		</div>
	<div id="main" class="row blog-wrapper">
			
		<div class="">
	    <div id="primary" class="site-content">
	    	<div id="content" role="main">


	    		<article class="blog_entry clearfix">
				<?php if($articledetail) { ?>
				<div class="entry-content">
					<div class="featured-thumb">
						<img src="<?php echo $articledetail['thumb'];?>" alt="<?php echo $articledetail['name'];?>" titile="<?php echo $articledetail['name'];?>">
					</div>
					<header class="blog_entry-header clearfix">
						<div class="blog_entry-header-inner">
						<h2 class="blog_entry-title"> <?php echo $articledetail['name'];?> </h2>
						</div>

					</header>

				
					<div class="entry-content">
						<?php echo $articledetail['description'];?>
					</div>
				</div>

				<?php if ($tag_status) {
				if( !empty($articletags) ) { ?>
				<div class="blog-tags">
				<b><?php echo $text_tags;?></b>
				<?php foreach( $articletags as $tag => $tagLink ) { ?>
				<code><a href="<?php echo $tagLink; ?>" title="<?php echo $tag; ?>"><?php echo $tag; ?></a></code>
				<?php } ?>
				</div>
				<?php }
				} ?>

				<div class="entry-meta">
					<?php echo $publish_at_title;?>
					<?php if ($categoryname_status) { 
						if( !empty($articledetail['categoryname']) ) { 
					//echo $publish_in_title;
					 echo $articledetail['categoryname'];  
					 } } ?>
					<?php //echo $publish_on_title;?>
					<time class="entry-date"><?php $tmpublish_date = strtotime( $articledetail['publish_date'] );
			    echo $mysqldate = date( 'M d, Y', $tmpublish_date );?></time>
				</div>

				<?php if($sociallinks_status) {  ?>
				<!-- AddThis Button BEGIN -->
				<br>
				<div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
				<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
				<br>
				<!-- AddThis Button END -->
				<?php } ?>

              
				
				<?php }  else { ?><h4><?php echo $text_no_pq_found;?></h4><?php } ?>
	    		</article>

		 <div class="comment-content wow bounceInUp animated"> 
		 	<div id="review"></div>

		<div class="comments-form-wrapper clearfix">
			
		    <?php if ($review_status) { ?>
		   
		    <form class="form-horizontal comment-form" id="form-review">
		      
		       <h3><?php echo $text_write; ?></h3>
		      <?php  if ($review_guest) { ?>


			<div class="field">
			<label for="name">
			<?php echo $entry_name; ?>
			<em class="required">*</em>
			</label>
			 <input type="text" name="name" value="" id="input-name" class="form-control input-text" />
			</div>

			<div class="clear"></div>

			<div class="field aw-blog-comment-area">
                        <label for="comment"><?php echo $text_comment; ?><em class="required">*</em></label>
                        <textarea name="text" cols="50" rows="5" id="input-review" class="form-control input-text"></textarea>
			  			<div class="help-block"><?php echo $text_note; ?></div>
            </div>

            
	      <div class="field">
			
			  <label class=""><?php echo $entry_rating; ?><em class="required">*</em></label>
			  &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
			  <input type="radio" name="rating" value="1" class="input-text"/>
			  &nbsp;
			  <input type="radio" name="rating" value="2" class="input-text"/>
			  &nbsp;
			  <input type="radio" name="rating" value="3" class="input-text"/>
			  &nbsp;
			  <input type="radio" name="rating" value="4" class="input-text"/>
			  &nbsp;
			  <input type="radio" name="rating" value="5" class="input-text"/>
			  &nbsp;<?php echo $entry_good; ?>

		      </div> 


		   <?php echo $captcha; ?>
		      <div class="buttons clearfix">
			<div>
			  <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="bnt-comment"><span><?php echo $button_continue; ?></span></button>
			</div>
		      </div>
		      <?php } else { ?>
		      <?php echo $text_login; ?>
		      <?php } ?>
		    </form>
		    <?php }  ?> 
		</div><!-- comments-form-wrapper clearfix -->
		</div><!-- comment-content wow bounceInUp animated animated -->


	       </div><!-- <div id="content" role="main"> -->
	    </div><!-- <div id="primary" class="site-content"> -->
	    </div>
	</div><!-- <div id="main" class="blog-wrapper"> -->
	<?php echo $content_bottom; ?>
      </div></div>
     <?php echo $column_left; ?> <?php echo $column_right; ?>



      <!-- related section -->







 
      <!-- related section end -->
   </div>
</div>
</div><!-- main-container col2-right-layout -->
<?php if ($products) { ?>
<div class="container"> 
<div class="related-pro">    
<div class="slider-items-products">  
	 <div class="related-block">         
        <div class="home-block-inner">
              <div class="block-title">
                   <h2><?php if($articledetail['title_relatedproducts']) echo $articledetail['title_relatedproducts']; ?></h2>
                </div>                                  
              </div>
     	
          <div id="blog-related-products-slider" class="product-flexslider hidden-buttons">           
            <div class="slider-items slider-width-col4 products-grid block-content">
               <?php foreach ($products as $product) { ?>
                <!-- Item -->
                <div class="item">
                   <div class="item-inner">
                     <div class="item-img">
                      <div class="item-img-info">
                       <a class="product-image" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>">
                       <?php if ($product['thumb']) { ?>
                       <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"/>
                       <?php } ?>
                       </a>
                        <?php if($thmlilac_sale_label==1) { 
                        if ($product['price'] && $product['special']) { ?>
                        <div class="sale-label sale-top-right"><?php echo $thmlilac_sale_labeltitle; ?></div>
                        <?php } }?>                      
                      	<div class="box-hover">
	                      <ul class="add-to-links">

	                        <li>
	                          <a onclick="wishlist.add('<?php echo $product['product_id']; ?>');" class="link-wishlist"><?php //echo $text_wishlist; ?></a> 
	                        </li>
	                        <li>
	                            <a class="link-compare"  onclick="tm_compare.add('<?php echo $product['product_id']; ?>');"><?php //echo $button_compare; ?></a>
	                        </li>
	                       
	                      </ul>
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
                                  <button type="button" title="" data-original-title="<?php echo $button_cart; ?>" class="button btn-cart link-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
                               
                              </div>
                            </div>

                         </div>
                      </div>  <!-- End Item info --> 
                  </div>  <!-- End  Item inner--> 
                </div> <!-- End Item --> 
                <?php } ?>
                
              </div>
            </div>    <!-- featured --> 
          </div>
    </div>    <!-- slider Item products --> 
</div>
</div>
<?php } ?>
<?php  if ($relatedarticles) { ?>
<div class="container">
    <div class="row">
    <div class="blog-outer-container">   
	      	<div class="block-title">
	          <h2><?php if($articledetail['title_relatedarticles']) echo $articledetail['title_relatedarticles']; ?></h2>
	        </div>
          
         <div class="blog-inner">      
                         
                  <?php foreach ($relatedarticles as $relatedarticle) { ?>
                      <div class="col-lg-6 col-md-6 col-sm-6">
                          <div class="entry-thumb image-hover2">
                            <a href="<?php echo $relatedarticle['href']; ?>">
                            <img src="<?php echo $relatedarticle['thumb']; ?>" alt="<?php echo $relatedarticle['name']; ?>" title="<?php echo $relatedarticle['name']; ?>"/></a>
                          </div>                                                    
                          <div class="blog-preview_info">
                          	 <h4 class="blog-preview_title"><a href="<?php echo $relatedarticle['href']; ?>"><?php echo $relatedarticle['name']; ?></a></h4>        
                           <ul class="post-meta">                           
                             <li><i class="fa fa-user"></i>posted by <a href="<?php echo $relatedarticle['href']; ?>"><?php echo $relatedarticle['author']; ?></a></li>
                              <li><i class="fa fa-comments"></i><a href="<?php echo $relatedarticle['href']; ?>"><?php echo $relatedarticle['comment_total']; ?> comments </a></li>
                              <li><i class="fa fa-clock-o"></i><?php $tmpublish_date = strtotime( $relatedarticle['publish_date'] );
                            echo $mysqldate = date( 'M d, Y', $tmpublish_date );?></li>
                            </ul>    
                             <div class="blog-preview_desc"><?php echo $relatedarticle['description']; ?></div>	
                              <a class="blog-preview_btn" href="<?php echo $relatedarticle['href']; ?>"><?php echo $text_read_more; ?>
                    </a>                                                    
                                             
                                                                                                  
                          </div>
                        </div>                      
                    <?php } ?>                    
                       
             
              
        </div>
      </div>
</div>
</div>
 <?php } ?>  
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=thmblog/article/review&tmblogarticle_id=<?php echo $tmblogarticle_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=thmblog/article/write&tmblogarticle_id=<?php echo $tmblogarticle_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});
</script>
<?php echo $footer; ?>