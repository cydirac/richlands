<?php echo $header; ?>
<div class="main-container col2-right-layout">
<div class="main container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
    <div class="col-main">
    <?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php echo $text_message; ?>
      <div class="buttons">
        <div class="pull-right">
          <!-- <a href="<?php //echo $continue; ?>" class="btn btn-primary"><?php //echo $button_continue; ?></a> -->
          <button onclick="window.location='<?php echo $continue; ?>';" type="submit" class="button continue"> <?php echo $button_continue; ?> </button>
        </div>
      </div>
      <?php echo $content_bottom; ?>
      </div></div>
    <?php echo $column_right; ?></div>
</div>
</div>
<?php echo $footer; ?>