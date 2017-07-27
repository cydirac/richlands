<?php echo $header; ?>
<div>
<div id="content">
  <?php echo $column_left;?>
  <?php echo $content_top; ?>
      
 <div class="container">
      <div class="row">
        <div class="col-md-3 col-md-4 col-sm-3 hidden-xs">
           <?php echo $slider_left;?>
        </div>
        <div class="col-md-9 col-sm-9 col-xs-12 home-slider">
          <?php echo $slider_right;?>
        </div>  
      </div>
</div>
 <section class="main-container col2-left-layout">
    <div class="container">
      <div class="row">
        <div class="col-sm-9 col-sm-push-3">   
            <?php echo $bottom_right;?>
        </div>
        <div class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
            <?php echo $bottom_left; ?>
        </div>
     </div>
  </div>
</section>
<?php echo $column_right;?>
<?php echo $content_bottom; ?>
</div>
</div>
<?php echo $footer; ?>