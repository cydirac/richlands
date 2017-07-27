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
      <div id="content" class="<?php echo $class; ?> tm-blog">
<div class="col-main">
      	<?php echo $content_top; ?>
 	<div class="page-title">
		<h2><?php echo $heading_title_category;?></h2>
		</div>
	<div id="main" class="row blog-wrapper">
	      	
	    <div class="">
  <?php if($articles) { ?>
  		<div class="blog-wrapper" id="main">
	    <div id="primary" class="site-content">
	    	<div id="content" role="main">
		<?php foreach($articles as $_articles) { ?>
				
				<article class="blog_entry clearfix wow bounceInUp animated">
				<div class="featured-thumb">
							<a title="<?php echo $_articles['name'];?>" href="<?php echo $_articles['href'];?>">
							<img src="<?php echo $_articles['thumb'];?>" alt="<?php echo $_articles['name'];?>" title="<?php echo $_articles['name'];?>">
							</a>
						</div><!-- featured-thumb -->
					<header class="blog_entry-header clearfix">
						<div class="blog_entry-header-inner">
							<h2 class="blog_entry-title">
							<a href="<?php echo $_articles['href'];?>" rel="bookmark"><?php echo $_articles['name'];?></a>
							</h2>
						</div>
					</header>

					<div class="entry-content">
					<ul class="post-meta">
                          <li><i class="fa fa-user"></i>posted by <a href="<?php echo $_articles['href'];?>"><?php echo $_articles['author']; ?></a> </li>
                          <li><i class="fa fa-comments"></i><a href="<?php echo $_articles['href'];?>"><?php echo $_articles['comment_total']; ?> <?php echo $text_comments; ?></a> </li>
                           <li><i class="fa fa-clock-o"></i><?php $tmpublish_date = strtotime( $_articles['publish_date'] );
                    echo $mysqldate = date( 'M d, Y', $tmpublish_date );?></li>
                        </ul>
						
						

						<div class="entry-content">
							<p><?php echo $_articles['description'];?></p>
						</div><!-- entry-content -->
					
					<p>
						<a class="btn" href="<?php echo $_articles['href'];?>"><?php echo $text_read_more;?></a>

					</p>

			<?php if ($tag_status) {
				if( !empty($_articles['articletags']) ) { ?>
				<div class="blog-tags">
				<b><?php echo $text_tags;?></b>
				<?php foreach( $_articles['articletags'] as $tag => $tagLink ) { ?>
				<code><a href="<?php echo $tagLink; ?>" title="<?php echo $tag; ?>"><?php echo $tag; ?></a></code>
				<?php } ?>
				</div>
				<?php }
				} ?>

					</div><!-- entry-content -->

					<div class="entry-meta">
					<?php echo $publish_at_title;?>
					<?php if ($categoryname_status) { 
						if( !empty($_articles['categoryname']) ) { 
					//echo $publish_in_title;
					 echo $_articles['categoryname'];  
					 } } ?>

					<?php //echo $publish_on_title;?>
					<time class="entry-date" datetime="2014-07-10T06:53:43+00:00"><?php $tmpublish_date = strtotime( $_articles['publish_date'] );
				echo $mysqldate = date( 'M d, Y', $tmpublish_date );?></time>
					.
					</div>

				</article>

		<?php } ?>
		    </div><!-- <div id="content" role="main"> -->
		</div>
		      </div>
		<div class="row blog-bottom_pagination">
		  <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
		  <div class="col-sm-6 text-right"><?php echo $results; ?></div>
		</div>
	    <?php }  else { ?><h4><?php echo $text_no_pq_found;?></h4><?php } ?>
	    </div>
	</div><!-- <div id="main" class="row blog-wrapper"> -->
	<?php echo $content_bottom; ?>
      </div></div>
     <?php echo $column_left; ?> <?php echo $column_right; ?>
   </div>
</div>
</div><!-- main-container col2-right-layout -->
<?php echo $footer; ?>