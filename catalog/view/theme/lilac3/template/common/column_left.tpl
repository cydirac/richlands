<?php if ($modules) { ?>


<?php $blog_class='col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9';?>

<?php /* if($page_route=='information/information' || $page_route=='thmblog/article' || $page_route=='thmblog/article/tag' || $page_route=='thmblog/article/view' || $page_route=='thmblog/search' || $page_route=='thmblog/category' || $page_route=='thmblog') { $blog_class='col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9'; } */ ?>


<aside id="column-left" class="<?php echo $blog_class; ?>">
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
</aside>
<?php } ?>
