<div class="container">        
        <div class="row">
        <div class="blog-outer-container">
        <div class="block-title">
          <h2><?php echo $heading_title; ?></h2>
        </div>
        <div class="blog-inner">
            <?php if($postList) { ?>           
                <?php foreach ($postList as $_postList) { ?>
                 <div class="col-lg-4 col-md-4 col-sm-4">
                  <div class="entry-thumb image-hover2">
                    <a href="<?php echo $_postList['href']; ?>">
                    <img src="<?php echo $_postList['thumb']; ?>" alt="<?php echo $_postList['name']; ?>" title="<?php echo $_postList['name']; ?>"/></a>
                  </div>                         
                  <div class="blog-preview_info">
                    <?php if(!$hidetitle) { ?><h4 class="blog-preview_title"><a href="<?php echo $_postList['href']; ?>"><?php echo $_postList['name']; ?></a></h4>
                    <?php } ?>
                    <ul class="post-meta">
                      <li><i class="fa fa-user"></i><?php echo $txt_blog_post; ?> <a href="<?php echo $_postList['href']; ?>"><?php echo $_postList['author']; ?></a></li>
                      <li><i class="fa fa-comments"></i><a href="<?php echo $_postList['href']; ?>"><?php echo $_postList['comment_total']; ?> <?php echo $txt_blog_comment; ?> </a></li>
                      <li><i class="fa fa-clock-o"></i><?php $tmpublish_date = strtotime( $_postList['publish_date'] );
                    echo $mysqldate = date( 'M d, Y', $tmpublish_date );?></li>
                    </ul> 
                    <?php if(!$hidedescription) { ?>  
                      <div class="blog-preview_desc"><?php echo $_postList['description']; ?></div>
                    <?php } ?> 
                    <a class="blog-preview_btn" href="<?php echo $_postList['href']; ?>"><?php echo $txt_readmore; ?>
                    </a>                           
                  </div>
                </div>                      
                <?php } ?>                    
            <?php } else { ?>
              <div class="col-xs-12 col-sm-12 wow bounceInLeft animated"> <?php echo $txt_no_article_found; ?>
              </div>                 
            <?php } ?>          
        </div>
      </div>
     </div>
</div>