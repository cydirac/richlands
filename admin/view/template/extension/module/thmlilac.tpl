<?php echo $header; ?>
<?php global $config;?>
<!-- <script type="text/javascript" src="view/javascript/colorpicker/colorpicker-color.js"></script>
<script type="text/javascript" src="view/javascript/colorpicker/colorpicker.js"></script> -->
<link rel="stylesheet" href="view/javascript/colorpicker/bootstrap-3.0.0.min.css">
<link rel="stylesheet" href="view/javascript/colorpicker/pick-a-color-1.2.3.min.css">
<link rel="stylesheet" href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css">



<style type="text/css">
.heading{
color: #279882;
font-size: 24px!important;
}
.thead{
color: #e74c3c!important;
font-weight: bold;
text-transform: uppercase
}
i.fa.fa-sign-out.fa-lg {
    display: none;
}
</style>

<?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-thmlilac" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-thmlilac" class="form-horizontal">
          

 <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
<li class="active"><a href="#general" data-toggle="tab">General</a></li>
<li><a href="#colors" data-toggle="tab">Colors</a></li>
<li><a href="#fonts" data-toggle="tab">Fonts</a></li>
<li><a href="#footer" data-toggle="tab">Footer</a></li>
<li><a href="#caticons" data-toggle="tab">Category Icons</a></li>
<?php if($config_maintenance){ ?>
<li><a href="#maintenance" data-toggle="tab">Maintenance</a></li>
<?php } ?>
<li><a href="#support" data-toggle="tab">Support</a></li>
</ul>
<div id="my-tab-content" class="tab-content">
<div class="tab-pane active" id="general">
<br>
  <b class="heading">GENERAL THEME SETTINGS</b><hr>
   

    <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_home_option">Home option in menu:</label>
            <div class="col-sm-10">
              <select name="thmlilac_home_option" id="input-thmlilac_home_option" class="form-control">
                <?php if ($thmlilac_home_option) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          


      <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_quickview_button">Product's Quick View:</label>
            <div class="col-sm-10">
              <select name="thmlilac_quickview_button" id="input-thmlilac_quickview_button" class="form-control">
                <?php if ($thmlilac_quickview_button) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          

        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_scroll_totop">Show scroll to top button:</label>
            <div class="col-sm-10">
              <select name="thmlilac_scroll_totop" id="input-thmlilac_scroll_totop" class="form-control">
                <?php if ($thmlilac_scroll_totop) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>

 <?php /*
        <div class="form-group">
        <label class="col-sm-2 control-label" for="input-thmlilac_animation_effect">Animation Effect:</label>
        <div class="col-sm-10">
        <select name="thmlilac_animation_effect" id="input-thmlilac_animation_effect" class="form-control">
        <?php if ($thmlilac_animation_effect) { ?>
        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
        <option value="0"><?php echo $text_disabled; ?></option>
        <?php } else { ?>
        <option value="1"><?php echo $text_enabled; ?></option>
        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
        <?php } ?>
        </select>
        </div>
        </div> */?>

          

                  
<hr><b class="thead">PRODUCTS "SALE" LABEL</b><hr>
        
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_sale_label">Show "Sale" label for products with discount:</label>
            <div class="col-sm-10">
              <select name="thmlilac_sale_label" id="input-thmlilac_sale_label" class="form-control">
                <?php if ($thmlilac_sale_label) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_sale_labeltitle">Sale label title:</label>
            <div class="col-sm-10">
            <input name="thmlilac_sale_labeltitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_sale_labeltitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_sale_labelcolor">Sale label color:</label>
            <div class="col-sm-10">
            <input name="thmlilac_sale_labelcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_sale_labelcolor; ?>" class="pick-a-color form-control"/>
            </div>
          </div>


<?php  ?>
<hr><b class="thead">HEADER CUSTOM BLOCK</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_headercb_ed">Enable custom Block:</label>
            <div class="col-sm-10">
              <select name="thmlilac_headercb_ed" id="input-thmlilac_headercb_ed" class="form-control">
                <?php if ($thmlilac_headercb_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-thmlilac_headercb_content">Block content:</label>
                  <div class="col-sm-10">
                    <textarea name="thmlilac_headercb_content" placeholder="Enetr text here" id="input-thmlilac_headercb_content" class="form-control summernote"><?php echo $thmlilac_headercb_content; ?></textarea>
                  </div>
                </div>       
           <script type="text/javascript">
          $('#input-thmlilac_headercb_content').css({height: 300});
          </script> 

<hr><b class="thead">HEADER TOP SLIDES BLOCK</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_headertsb_ed">Enable custom Block:</label>
            <div class="col-sm-10">
              <select name="thmlilac_headertsb_ed" id="input-thmlilac_headertsb_ed" class="form-control">
                <?php if ($thmlilac_headertsb_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-thmlilac_headertsb_content">Block content:</label>
                  <div class="col-sm-10">
                    <textarea name="thmlilac_headertsb_content" placeholder="Enetr text here" id="input-thmlilac_headertsb_content" class="form-control summernote"><?php echo $thmlilac_headertsb_content; ?></textarea>
                  </div>
                </div>       
           <script type="text/javascript">
          $('#input-thmlilac_headertsb_content').css({height: 300});
          </script>          
<?php  ?>
<?php /* ?>
<hr><b class="thead">MENUBAR CUSTOM BLOCK</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_menubar_cb">Enable custom Block:</label>
            <div class="col-sm-10">
              <select name="thmlilac_menubar_cb" id="input-thmlilac_menubar_cb" class="form-control">
                <?php if ($thmlilac_menubar_cb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_menubar_cbtitle">Block title:</label>
            <div class="col-sm-10">
            <input name="thmlilac_menubar_cbtitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_menubar_cbtitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-thmlilac_menubar_cbcontent">Block content:</label>
                  <div class="col-sm-10">
                    <textarea name="thmlilac_menubar_cbcontent" placeholder="Enetr text here" id="input-thmlilac_menubar_cbcontent" class="form-control summernote"><?php echo $thmlilac_menubar_cbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-thmlilac_menubar_cbcontent').css({height: 300});
          </script>  

<?php */ ?>
<?php /* ?>
<hr><b class="thead">VERTICAL MENUBAR CUSTOM BLOCK</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_vmenubar_cb">Enable custom Block:</label>
            <div class="col-sm-10">
              <select name="thmlilac_vmenubar_cb" id="input-thmlilac_vmenubar_cb" class="form-control">
                <?php if ($thmlilac_vmenubar_cb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_vmenubar_cbtitle">Block title:</label>
            <div class="col-sm-10">
            <input name="thmlilac_vmenubar_cbtitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_vmenubar_cbtitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-thmlilac_vmenubar_cbcontent">Block content:</label>
                  <div class="col-sm-10">
                    <textarea name="thmlilac_vmenubar_cbcontent" placeholder="Enetr text here" id="input-thmlilac_vmenubar_cbcontent" class="form-control"><?php echo $thmlilac_vmenubar_cbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-thmlilac_vmenubar_cbcontent').summernote({height: 300});
          </script>  

<?php */ ?>
<?php /* ?>
<hr><b class="thead">PRODUCT CUSTOM BLOCK</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_productpage_cb">Enable custom block:</label>
            <div class="col-sm-10">
              <select name="thmlilac_productpage_cb" id="input-thmlilac_productpage_cb" class="form-control">
                <?php if ($thmlilac_productpage_cb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-thmlilac_productpage_cbcontent">Block Content:</label>
                  <div class="col-sm-10">
                    <textarea name="thmlilac_productpage_cbcontent" placeholder="Enetr text here" id="input-thmlilac_productpage_cbcontent" class="form-control"><?php echo $thmlilac_productpage_cbcontent; ?></textarea>
                  </div>
                </div>
        <script type="text/javascript">
        $('#input-thmlilac_productpage_cbcontent').summernote({height: 300});
        </script>
        <?php */  ?>

 <?php /*  ?>
<hr><b class="thead">RELATED PRODUCT  CUSTOM BLOCK</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_productpage_related_cb">Enable custom block:</label>
            <div class="col-sm-10">
              <select name="thmlilac_productpage_related_cb" id="input-thmlilac_productpage_related_cb" class="form-control">
                <?php if ($thmlilac_productpage_related_cb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-thmlilac_productpage_related_cbcontent">Block Content:</label>
                  <div class="col-sm-10">
                    <textarea name="thmlilac_productpage_related_cbcontent" placeholder="Enetr text here" id="input-thmlilac_productpage_related_cbcontent" class="form-control summernote"><?php echo $thmlilac_productpage_related_cbcontent; ?></textarea>
                  </div>
                </div>
        <script type="text/javascript">
        $('#input-thmlilac_productpage_related_cbcontent').summernote({height: 300});
        </script>
        <?php  */ ?>       


<?php /* ?>
<hr><b class="thead">FOOTER FEATURES BLOCK</b><hr>
        
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_footer_fb">Enable footer feature block:</label>
            <div class="col-sm-10">
              <select name="thmlilac_footer_fb" id="input-thmlilac_footer_fb" class="form-control">
                <?php if ($thmlilac_footer_fb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-thmlilac_footer_fbcontent">Footer feature block content:</label>
                  <div class="col-sm-10">
                    <textarea name="thmlilac_footer_fbcontent" placeholder="Enetr text here" id="input-thmlilac_footer_fbcontent" class="form-control summernote"><?php echo $thmlilac_footer_fbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-thmlilac_footer_fbcontent').css({height: 300});
          </script>  <?php   ?>
<?php */ /* ?>

<hr><b class="thead">FOOTER CUSTOM BLOCK</b><hr>
        
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_footer_cb">Enable footer custom block:</label>
            <div class="col-sm-10">
              <select name="thmlilac_footer_cb" id="input-thmlilac_footer_cb" class="form-control">
                <?php if ($thmlilac_footer_cb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-thmlilac_footer_cbcontent">Footer custom block content:</label>
                  <div class="col-sm-10">
                    <textarea name="thmlilac_footer_cbcontent" placeholder="Enetr text here" id="input-thmlilac_footer_cbcontent" class="form-control summernote"><?php echo $thmlilac_footer_cbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-thmlilac_footer_cbcontent').css({height: 300});
          </script>      
<?php */ ?>


</div>
<div class="tab-pane" id="colors">
<br>
<b class="heading">THEME COLORS</b><br>
In this section, you can change theme colors. To change the color of element just click inside text field and use color picker.

<hr><b class="thead">MAIN</b><hr>

       <?php if(empty($thmlilac_body_bg)) { $thmlilac_body_bg="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_body_bg">Body background:</label>
            <div class="col-sm-2">
                <select name="thmlilac_body_bg_ed" id="input-thmlilac_body_bg_ed" class="form-control">
                <?php if ($thmlilac_body_bg_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_body_bg" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_body_bg; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>

      <?php if(empty($thmlilac_fontcolor)) { $thmlilac_fontcolor="#333333"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_fontcolor">Body font color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_fontcolor_ed" id="input-thmlilac_fontcolor_ed" class="form-control">
                <?php if ($thmlilac_fontcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_fontcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_fontcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #333333</div>
          </div>
          

      <?php if(empty($thmlilac_linkcolor)) { $thmlilac_linkcolor="#333333"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_linkcolor">Link color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_linkcolor_ed" id="input-thmlilac_linkcolor_ed" class="form-control">
                <?php if ($thmlilac_linkcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_linkcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_linkcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #333333</div>
          </div>


       <?php if(empty($thmlilac_linkhovercolor)) { $thmlilac_linkhovercolor="#23527c"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_linkhovercolor">Link hover color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_linkhovercolor_ed" id="input-thmlilac_linkhovercolor_ed" class="form-control">
                <?php if ($thmlilac_linkhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_linkhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_linkhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #23527c</div>
          </div>

<hr><b class="thead">HEADER</b><hr>


       <?php if(empty($thmlilac_headerbg)) { $thmlilac_headerbg="#1c95d1"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_headerbg">Header background:</label>
            <div class="col-sm-2">
                <select name="thmlilac_headerbg_ed" id="input-thmlilac_headerbg_ed" class="form-control">
                <?php if ($thmlilac_headerbg_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_headerbg" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_headerbg; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #1c95d1</div>
          </div>

      <?php if(empty($thmlilac_headerlinkcolor)) { $thmlilac_headerlinkcolor="#d1f0ff"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_headerlinkcolor">Header link color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_headerlinkcolor_ed" id="input-thmlilac_headerlinkcolor_ed" class="form-control">
                <?php if ($thmlilac_headerlinkcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_headerlinkcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_headerlinkcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #d1f0ff</div>
          </div>
          

      <?php if(empty($thmlilac_headerlinkhovercolor)) { $thmlilac_headerlinkhovercolor="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_headerlinkhovercolor">Header link hover color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_headerlinkhovercolor_ed" id="input-thmlilac_headerlinkhovercolor_ed" class="form-control">
                <?php if ($thmlilac_headerlinkhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_headerlinkhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_headerlinkhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>


       <?php if(empty($thmlilac_headerclcolor)) { $thmlilac_headerclcolor="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_headerclcolor">Header currency/language links color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_headerclcolor_ed" id="input-thmlilac_headerclcolor_ed" class="form-control">
                <?php if ($thmlilac_headerclcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_headerclcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_headerclcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>

<hr><b class="thead">MAIN MENU</b><hr>


       <?php if(empty($thmlilac_mmbgcolor)) { $thmlilac_mmbgcolor="#41ade2"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_mmbgcolor">Main menu background color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_mmbgcolor_ed" id="input-thmlilac_mmbgcolor_ed" class="form-control">
                <?php if ($thmlilac_mmbgcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_mmbgcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_mmbgcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #41ade2</div>
          </div>


       <?php if(empty($thmlilac_mmlinkscolor)) { $thmlilac_mmlinkscolor="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_mmlinkscolor">Main menu links color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_mmlinkscolor_ed" id="input-thmlilac_mmlinkscolor_ed" class="form-control">
                <?php if ($thmlilac_mmlinkscolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_mmlinkscolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_mmlinkscolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>


       <?php if(empty($thmlilac_mmlinkshovercolor)) { $thmlilac_mmlinkshovercolor="#222222"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_mmlinkshovercolor">Main menu links Hover color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_mmlinkshovercolor_ed" id="input-thmlilac_mmlinkshovercolor_ed" class="form-control">
                <?php if ($thmlilac_mmlinkshovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_mmlinkshovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_mmlinkshovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #222222</div>
          </div>


      <?php if(empty($thmlilac_mmslinkscolor)) { $thmlilac_mmslinkscolor="#222222"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_mmslinkscolor">Main menu sublinks color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_mmslinkscolor_ed" id="input-thmlilac_mmslinkscolor_ed" class="form-control">
                <?php if ($thmlilac_mmslinkscolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_mmslinkscolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_mmslinkscolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #222222</div>
          </div>

      <?php if(empty($thmlilac_mmslinkshovercolor)) { $thmlilac_mmslinkshovercolor="#222222"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_mmslinkshovercolor">Main menu sublinks Hover color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_mmslinkshovercolor_ed" id="input-thmlilac_mmslinkshovercolor_ed" class="form-control">
                <?php if ($thmlilac_mmslinkshovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_mmslinkshovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_mmslinkshovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #222222</div>
          </div>


<hr><b class="thead">BUTTONS</b><hr>

<!-- #0088cc -->
       <?php if(empty($thmlilac_buttoncolor)) { $thmlilac_buttoncolor=""; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_buttoncolor">Button color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_buttoncolor_ed" id="input-thmlilac_buttoncolor_ed" class="form-control">
                <?php if ($thmlilac_buttoncolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_buttoncolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_buttoncolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label"><!-- Default: #0088cc --></div>
          </div>

      <?php if(empty($thmlilac_buttonhovercolor)) { $thmlilac_buttonhovercolor="#37a4d9"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_buttonhovercolor">Button Hover color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_buttonhovercolor_ed" id="input-thmlilac_buttonhovercolor_ed" class="form-control">
                <?php if ($thmlilac_buttonhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_buttonhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_buttonhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #37a4d9</div>
          </div>


      <hr><b class="thead">PRODUCT</b><hr>


       <?php if(empty($thmlilac_pricecolor)) { $thmlilac_pricecolor="#ff0000"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_pricecolor">Price color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_pricecolor_ed" id="input-thmlilac_pricecolor_ed" class="form-control">
                <?php if ($thmlilac_pricecolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_pricecolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_pricecolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #ff0000</div>
          </div>

      <?php if(empty($thmlilac_oldpricecolor)) { $thmlilac_oldpricecolor="#777777"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_oldpricecolor">Old Price color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_oldpricecolor_ed" id="input-thmlilac_oldpricecolor_ed" class="form-control">
                <?php if ($thmlilac_oldpricecolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_oldpricecolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_oldpricecolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #777777</div>
          </div>


      <?php if(empty($thmlilac_newpricecolor)) { $thmlilac_newpricecolor="#ff0000"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_newpricecolor">New Price color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_newpricecolor_ed" id="input-thmlilac_newpricecolor_ed" class="form-control">
                <?php if ($thmlilac_newpricecolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_newpricecolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_newpricecolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #ff0000</div>
          </div>


<hr><b class="thead">FOOTER</b><hr>


       <?php if(empty($thmlilac_footerbg)) { $thmlilac_footerbg="#1c242f"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_footerbg">Footer background:</label>
            <div class="col-sm-2">
                <select name="thmlilac_footerbg_ed" id="input-thmlilac_footerbg_ed" class="form-control">
                <?php if ($thmlilac_footerbg_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_footerbg" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_footerbg; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #1c242f</div>
          </div>

      <?php if(empty($thmlilac_footerlinkcolor)) { $thmlilac_footerlinkcolor="#999999"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_footerlinkcolor">Footer links color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_footerlinkcolor_ed" id="input-thmlilac_footerlinkcolor_ed" class="form-control">
                <?php if ($thmlilac_footerlinkcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_footerlinkcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_footerlinkcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #999999</div>
          </div>
          

      <?php if(empty($thmlilac_footerlinkhovercolor)) { $thmlilac_footerlinkhovercolor="#ffffff"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_footerlinkhovercolor">Footer links hover color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_footerlinkhovercolor_ed" id="input-thmlilac_footerlinkhovercolor_ed" class="form-control">
                <?php if ($thmlilac_footerlinkhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_footerlinkhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_footerlinkhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #ffffff</div>
          </div>


       <?php if(empty($thmlilac_powerbycolor)) { $thmlilac_powerbycolor="#cccccc"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_powerbycolor">Footer powered by text color:</label>
            <div class="col-sm-2">
                <select name="thmlilac_powerbycolor_ed" id="input-thmlilac_powerbycolor_ed" class="form-control">
                <?php if ($thmlilac_powerbycolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="thmlilac_powerbycolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_powerbycolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #cccccc</div>
          </div>

                 

</div>
<div class="tab-pane" id="fonts">
<br><b>THEME FONTS</b><br>
Choose font from list
<hr>


<div class="form-group">
            <label class="col-sm-2 control-label" for="input-thmlilac_fonttransform">Font transform:</label>
            <div class="col-sm-8">
              <?php $gfonts = "Abel,Abril Fatface,Aclonica,Acme,Actor,Adamina,Aguafina Script,Aladin,Aldrich,Alegreya,Alegreya SC,Alex Brush,Alfa Slab One,Alice,Alike,Alike Angular,Allan,Allerta,Allerta Stencil,Allura,Almendra,Almendra SC,Amaranth,Amatic SC,Amethysta,Andada,Andika,Annie Use Your Telescope,Anonymous Pro,Antic,Anton,Arapey,Arbutus,Architects Daughter,Arial,Arimo,Arizonia,Armata,Artifika,Arvo,Asap,Asset,Astloch,Asul,Atomic Age,Aubrey,Bad Script,Balthazar,Bangers,Basic,Baumans,Belgrano,Bentham,Bevan,Bigshot One,Bilbo,Bilbo Swash Caps,Bitter,Black Ops One,Bonbon,Boogaloo,Bowlby One,Bowlby One SC,Brawler,Bree Serif,Bubblegum Sans,Buda,Buenard,Butcherman,Butterfly Kids,Cabin,Cabin Condensed,Cabin Sketch,Caesar Dressing,Cagliostro,Calligraffitti,Cambo,Candal,Cantarell,Cardo,Carme,Carter One,Caudex,Cedarville Cursive,Ceviche One,Changa One,Chango,Chelsea Market,Cherry Cream Soda,Chewy,Chicle,Chivo,Coda,Coda Caption,Comfortaa,Comic Sans MS,Coming Soon,Concert One,Condiment,Contrail One,Convergence,Cookie,Copse,Corben,Cousine,Coustard,Covered By Your Grace,Crafty Girls,Creepster,Crete Round,Crimson Text,Crushed,Cuprum,Damion,Dancing Script,Dawning of a New Day,Days One,Delius,Delius Swash Caps,Delius Unicase,Devonshire,Didact Gothic,Diplomata,Diplomata SC,Dorsa,Dr Sugiyama,Droid Sans,Droid Sans Mono,Droid Serif,Duru Sans,Dynalight,EB Garamond,Eater,Electrolize,Emblema One,Engagement,Enriqueta,Erica One,Esteban,Euphoria Script,Ewert,Exo,Expletus Sans,Fanwood Text,Fascinate,Fascinate Inline,Federant,Federo,Felipa,Fjord One,Flamenco,Flavors,Fondamento,Fontdiner Swanky,Forum,Francois One,Fredericka the Great,Fresca,Frijole,Fugaz One,Galdeano,Gentium Basic,Gentium Book Basic,Geo,Geostar,Geostar Fill,Germania One,Give You Glory,Glegoo,Gloria Hallelujah,Goblin One,Gochi Hand,Goudy Bookletter 1911,Gravitas One,Gruppo,Gudea,Habibi,Hammersmith One,Handlee,Herr Von Muellerhoff,Holtwood One SC,Homemade Apple,Homenaje,IM Fell DW Pica,IM Fell DW Pica SC,IM Fell Double Pica,IM Fell Double Pica SC,IM Fell English,IM Fell English SC,IM Fell French Canon,IM Fell French Canon SC,IM Fell Great Primer,IM Fell Great Primer SC,Iceberg,Iceland,Inconsolata,Inder,Indie Flower,Inika,Irish Grover,Istok Web,Italianno,Jim Nightshade,Jockey One,Josefin Sans,Josefin Slab,Judson,Julee,Junge,Jura,Just Another Hand,Just Me Again Down Here,Kameron,Kaushan Script,Kelly Slab,Kenia,Knewave,Kotta One,Kranky,Krinspire,Kristi,La Belle Aurore,Lancelot,Lato,League Script,Leckerli One,Lekton,Lemon,Lilita One,Limelight,Linden Hill,Lobster,Lobster Two,Lora,Love Ya Like A Sister,Loved by the King,Luckiest Guy,Lusitana,Lucida Grande,Lustria,Macondo,Macondo Swash Caps,Magra,Maiden Orange,Mako,Marck Script,Marko One,Marmelad,Marvel,Mate,Mate SC,Maven Pro,Meddon,MedievalSharp,Medula One,Megrim,Merienda One,Merriweather,Metamorphous,Metrophobic,Michroma,Miltonian,Miltonian Tattoo,Miniver,Miss Fajardose,Modern Antiqua,Molengo,Monofett,Monoton,Monsieur La Doulaise,Montaga,Montez,Montserrat,Mountains of Christmas,Mr Bedfort,Mr Dafoe,Mr De Haviland,Mrs Saint Delafield,Mrs Sheppards,Muli,Neucha,Neuton,News Cycle,Niconne,Nixie One,Nobile,Norican,Nosifer,Nothing You Could Do,Noticia Text,Nova Cut,Nova Flat,Nova Mono,Nova Oval,Nova Round,Nova Script,Nova Slim,Nova Square,Numans,Nunito,Old Standard TT,Oldenburg,Open Sans,Open Sans Condensed,Orbitron,Original Surfer,Oswald,Over the Rainbow,Overlock,Overlock SC,Ovo,PT Sans,PT Sans Caption,PT Sans Narrow,PT Serif,PT Serif Caption,Pacifico,Parisienne,Passero One,Passion One,Patrick Hand,Patua One,Paytone One,Permanent Marker,Petrona,Philosopher,Piedra,Pinyon Script,Plaster,Play,Playball,Playfair Display,Podkova,Poller One,Poly,Pompiere,Port Lligat Sans,Port Lligat Slab,Prata,Princess Sofia,Prociono,Puritan,Quantico,Quattrocento,Quattrocento Sans,Questrial,Quicksand,Qwigley,Radley,Raleway,Rammetto One,Rancho,Rationale,Redressed,Reenie Beanie,Ribeye,Ribeye Marrow,Righteous,Rochester,Rock Salt,Rokkitt,Ropa Sans,Rosario,Rouge Script,Ruda,Ruge Boogie,Ruluko,Ruslan Display,Ruthie,Sail,Salsa,Sancreek,Sansita One,sans-serif,Sarina,Satisfy,Schoolbell,Shadows Into Light,Shanti,Share,Shojumaru,Short Stack,Sigmar One,Signika,Signika Negative,Sirin Stencil,Six Caps,Slackey,Smokum,Smythe,Sniglet,Snippet,Sofia,Sonsie One,Sorts Mill Goudy,Special Elite,Spicy Rice,Spinnaker,Spirax,Squada One,Stardos Stencil,Stint Ultra Condensed,Stint Ultra Expanded,Stoke,Sue Ellen Francisco,Sunshiney,Supermercado One,Swanky and Moo Moo,Syncopate,Tangerine,Tahoma,Times New Roman,Telex,Tenor Sans,Terminal Dosis,The Girl Next Door,Tienne,Tinos,Titan One,Trade Winds,Trochut,Trykker,Tulpen One,Ubuntu,Ubuntu Condensed,Ubuntu Mono,Ultra,Uncial Antiqua,UnifrakturCook,UnifrakturMaguntia,Unkempt,Unlock,Unna,VT323,Varela,Varela Round,Vast Shadow,Vibur,Vidaloka,Viga,Volkhov,Vollkorn,Voltaire,Verdana,Waiting for the Sunrise,Wallpoet,Walter Turncoat,Wellfleet,Wire One,Yanone Kaffeesatz,Yellowtail,Yeseva One,Yesteryear,Zeyada";
      $thmlilacfonts = explode(',', $gfonts);
      ?>

<select name="thmlilac_fonttransform" id="input-thmlilac_fonttransform" class="form-control">
<option value="" <?php if ($thmlilac_fonttransform=='') {?>selected<?php } ?>  ></option>
<?php foreach ($thmlilacfonts as $f ){ ?>
<option value="<?php echo $f; ?>" <?php if($thmlilac_fonttransform==$f){echo 'selected';} ?>>
  <?php echo $f; ?>
</option>
<?php } ?>
</select>
            </div>

            <div class="col-sm-2 control-label"></div>
          </div>



</div>
<div class="tab-pane" id="footer">
<br>
<p align="left">Fill in contact details you want to be displayed in your custom footer. If you don't want some of contact details to be displayed, just leave these fields empty.
 </p>
<hr>
           <div class="form-group">
            <label class="col-sm-2 control-label" for="thmlilac_address">Address:</label>
            <div class="col-sm-10">
              <input class="form-control" name="thmlilac_address" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_address; ?>"/>
              </div>
          </div>

         


          <div class="form-group">
            <label class="col-sm-2 control-label" for="thmlilac_phone">Phone:</label>
            <div class="col-sm-10">
              <input class="form-control" name="thmlilac_phone" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_phone; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="thmlilac_email">Email:</label>
            <div class="col-sm-10">
              <input class="form-control" name="thmlilac_email" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_email; ?>"/>
              </div>
          </div>
<hr>
<p align="left">Leave url field empty if you don't want to display this social icon in footer.</p>
<hr>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="thmlilac_fb">Facebook:</label>
            <div class="col-sm-10">
              <input class="form-control" name="thmlilac_fb" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_fb; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="thmlilac_twitter">Twitter:</label>
            <div class="col-sm-10">
              <input class="form-control" name="thmlilac_twitter" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_twitter; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="thmlilac_gglplus">Google Plus:</label>
            <div class="col-sm-10">
              <input class="form-control" name="thmlilac_gglplus" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_gglplus; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="thmlilac_rss">RSS:</label>
            <div class="col-sm-10">
              <input class="form-control" name="thmlilac_rss" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_rss; ?>"/>
              </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="thmlilac_pinterest">Pinterest:</label>
            <div class="col-sm-10">
              <input class="form-control" name="thmlilac_pinterest" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_pinterest; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="thmlilac_linkedin">Linkedin:</label>
            <div class="col-sm-10">
              <input class="form-control" name="thmlilac_linkedin" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_linkedin; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="thmlilac_youtube">You Tube:</label>
            <div class="col-sm-10">
              <input class="form-control" name="thmlilac_youtube" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $thmlilac_youtube; ?>"/>
              </div>
          </div>


                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-thmlilac_powerby">Powered by text:</label>
                  <div class="col-sm-10">
                    <textarea name="thmlilac_powerby" placeholder="Enetr text here" id="input-thmlilac_powerby" class="form-control summernote"><?php echo $thmlilac_powerby; ?></textarea>
                  </div>
                </div>

 <script type="text/javascript">
$('#input-thmlilac_powerby').css({height: 300});
</script> 
             
 
</div>
<div class="tab-pane" id="caticons">
<h1 class="heading">Category icons for vertical menu on home page</h1><hr>
<p align="left">This will display font-awesome icon for categeries on vertical menu on home page. You need to just paste name of font-awesome class in bellow textboxes for each category. By default it will take font-awesome class "arrows".You can put any suitable class from <a href="https://fortawesome.github.io/Font-Awesome/icons/" target="_blank">https://fortawesome.github.io/Font-Awesome/icons/</a></p>

<?php foreach ($top_categories as $category) { 
 $vname = 'thmlilac_topcaticon'.$category['category_id'];
 if(empty($$vname)) { $$vname="arrows"; }   ?>
           <div class="col-sm-6">
           <div class="form-group">
            <label class="col-sm-2 control-label" for="thmlilac_cat"><?php echo $category['name'];?></label>
            <div class="col-sm-10">
              <input class="form-control" name="thmlilac_topcaticon<?php echo $category['category_id'] ?>" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $$vname; ?>"/>
              </div>
          </div>
          </div>
<?php }?>
</div>


<?php 
if($config_maintenance){?>
<div class="tab-pane" id="maintenance">
<br>
<p>Choose date to display on Maintenance page</p><hr>


                <div class="form-group">
              <label class="control-label col-sm-3" for="input-thmlilac_maintenancedate">Date</label>
              <div class="col-sm-7 input-group datetime">
              <input type="text" name="thmlilac_maintenancedate" value="<?php echo $thmlilac_maintenancedate ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-thmlilac_maintenancedate" class="form-control" />
              <span class="input-group-btn">
              <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
              </span></div>
              </div>


</div>
<?php } ?>

<div class="tab-pane" id="support">
<h1 class="heading">Thm Linea theme for Open Cart 2.3.0.2 </h1><hr>
  <p style="font-weight:bold">Theme designed and developed by <a href="http://themeforest.net/user/Themesmart">Thmcommerce</a>.</p>
<p>Thank you for buying this theme! Contact us for any question or problems regarding the theme at - support@themesmart.net.</p>
<p>If you like theme dont forget to rate theme with stars (you can do it in your Downloads tab, inside your ThemeForest profile. Just click on stars! This little thing helps me to make new theme updates! Thank you!</p>
</div>
</div> 

            
        </form>
      </div>
	</div>
  </div>
</div>



<!-- <script src="build/dependencies/jquery-1.9.1.min.js"></script> -->
  <script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
  <link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
  <script type="text/javascript" src="view/javascript/summernote/opencart.js"></script> 
  <script src="view/javascript/colorpicker/tinycolor-0.9.15.min.js"></script>
  <script src="view/javascript/colorpicker/pick-a-color-1.2.3.min.js"></script>  
  
  <script type="text/javascript">
  
    $(document).ready(function () {

      $(".pick-a-color").pickAColor({
        showSpectrum            : true,
        showSavedColors         : true,
        saveColorsPerElement    : true,
        fadeMenuToggle          : true,
        showAdvanced            : true,
        showBasicColors         : true,
        showHexInput            : true,
        allowBlank              : true,
        inlineDropdown          : true
      });
      
    });
  
    </script>
  <script type="text/javascript"><!--
    $('.datetime').datetimepicker({
      pickDate: true,
      pickTime: true
    });
//--></script>
<?php echo $footer; ?>