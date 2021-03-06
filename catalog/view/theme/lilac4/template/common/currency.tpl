<?php if (count($currencies) > 1) { ?>
<div class="dropdown block-currency-wrapper">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">
  
    <?php foreach ($currencies as $currency) { ?>
     <?php if ($currency['code'] == $code) { ?>
     <a class="block-currency dropdown-toggle" href="#" data-target="#" data-toggle="dropdown" role="button">
     <?php echo $currency['code']; ?><span class="caret"></span> 
     </a>     
     <?php } ?>
    <?php } ?>
    
    <ul class="dropdown-menu" role="menu">
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li role="presentation">
        <a href="#" data-target="#" class="currency-select" id="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_left']; ?> - <?php echo $currency['title']; ?>
        </a>
      </li>
      <?php } else { ?>
      <li role="presentation">
        <a href="#" data-target="#" class="currency-select" id="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_right']; ?> - <?php echo $currency['title']; ?>
        </a>
      </li>
      <?php } ?>
      <?php } ?>
    </ul>
 
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>