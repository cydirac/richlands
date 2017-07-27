<?php echo $header; ?><?php echo $column_left; ?>   

<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="tv-module-form" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  
  <div class="container-fluid">
    <?php if (isset($error['error_warning'])) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error['error_warning']; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    
    <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $heading_title; ?> 2.3.6</h3>
        </div>
    
        <div class="panel-body">
        
          <form action="<?php echo $action; ?>" id="tv-module-form" method="post" enctype="multipart/form-data" class="form-horizontal">
          
            <h1>Settings</h1>
            
            <table class="table">
            
                <tr><th>Field</th>           <th>show/hide (check the box to hide the field)</th></tr>
                
                <tr><td>Firstname</td>       <td><input type="checkbox" name="hide_registration_fields[]" value="firstname"        <?php echo in_array("firstname",        $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td>Lastname</td>        <td><input type="checkbox" name="hide_registration_fields[]" value="lastname"         <?php echo in_array("lastname",         $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td>Email</td>           <td><input type="checkbox" name="hide_registration_fields[]" value="email"            <?php echo in_array("email",            $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td>Telephone</td>       <td><input type="checkbox" name="hide_registration_fields[]" value="telephone"        <?php echo in_array("telephone",        $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td>Fax</td>             <td><input type="checkbox" name="hide_registration_fields[]" value="fax"              <?php echo in_array("fax",              $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td>Address fieldset</td><td><input type="checkbox" name="hide_registration_fields[]" value="address_fieldset" <?php echo in_array("address_fieldset", $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td style="padding-left: 22px">Company</td>         <td><input type="checkbox" name="hide_registration_fields[]" value="company"          <?php echo in_array("company",          $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td style="padding-left: 22px">Address 1</td>       <td><input type="checkbox" name="hide_registration_fields[]" value="address1"         <?php echo in_array("address1",         $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td style="padding-left: 22px">Address 2</td>       <td><input type="checkbox" name="hide_registration_fields[]" value="address2"         <?php echo in_array("address2",         $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td style="padding-left: 22px">City</td>            <td><input type="checkbox" name="hide_registration_fields[]" value="city"             <?php echo in_array("city",             $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td style="padding-left: 22px">Post code</td>       <td><input type="checkbox" name="hide_registration_fields[]" value="zipcode"          <?php echo in_array("zipcode",          $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td style="padding-left: 22px">Country</td>         <td><input type="checkbox" name="hide_registration_fields[]" value="country"          <?php echo in_array("country",          $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td style="padding-left: 22px">Region / State</td>  <td><input type="checkbox" name="hide_registration_fields[]" value="region"           <?php echo in_array("region",           $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
                <tr><td>Newsletter</td>      <td><input type="checkbox" name="hide_registration_fields[]" value="newsletter"       <?php echo in_array("newsletter",       $hide_registration_fields) ? 'checked="checked"':''; ?> /></td></tr>
            </table>
            
          </form>            
            
        </div><!-- .panel-body -->
     </div>
  </div><!-- .container-fluid -->
  
  
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="tv-module-form" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
      </div>
      
      <a href="http://www.twitter.com/smshare">
          <img alt="Follow smshare on Twitter" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAAAbCAYAAAD7woSbAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpGNzdGMTE3NDA3MjA2ODExQUQyNkQxRjlGQjI3MUJFMCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo4MkJEMUYxQUNDQzgxMURGOTQ4QUM3MUMzQkEwMjkyRSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo4MkJEMUYxOUNDQzgxMURGOTQ4QUM3MUMzQkEwMjkyRSIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1IE1hY2ludG9zaCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjc5QUJGNEQ3OUIyMDY4MTE4RTM3OTNENTRFRENEQTNGIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkY3N0YxMTc0MDcyMDY4MTFBRDI2RDFGOUZCMjcxQkUwIi8+IDwvcmRmOkRlc2NyaXB0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">
      </a>
          
    </div>
  </div>
  
  
</div><!-- #content -->

<?php echo $footer; ?>

<style data-tv-info="smshare module">
   
    #content{
        direction: ltr;
    }
    textarea{
        <?php echo "direction:".$direction ?>
    }
    
</style>

<script type="text/javascript" src="view/javascript/powertrack.js?v=1"></script>