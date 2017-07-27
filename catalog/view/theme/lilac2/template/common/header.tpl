<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
<link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700%7CFjalla+One%7COpen+Sans:300,400,600,700,800%7CPoppins:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Abril+Fatface&amp;subset=latin-ext" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script&amp;subset=latin-ext" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Barrio&amp;subset=latin-ext" rel="stylesheet">

<?php // external CSS thm theme  ?>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" media="all">

<link rel="stylesheet" href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="catalog/view/javascript/jquery/owl-carousel/owl.theme.css" type="text/css">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $thm_theme ?>/stylesheet/jquery.bxslider.css" >
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $thm_theme ?>/stylesheet/jquery.mobile-menu.css" >
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $thm_theme ?>/stylesheet/revslider.css" >

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<link href="catalog/view/theme/<?php echo $thm_theme ?>/stylesheet/stylesheet.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $thm_theme ?>/stylesheet/style.css" media="all">

<?php // external js thm theme  ?>
<script type="text/javascript" src="catalog/view/theme/<?php echo $thm_theme ?>/js/revslider.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $thm_theme ?>/js/common.js"></script> 
<script type="text/javascript" src="catalog/view/theme/<?php echo $thm_theme ?>/js/common1.js"></script> 
<script type="text/javascript" src="catalog/view/theme/<?php echo $thm_theme ?>/js/jquery.bxslider.min.js"></script> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"></script> 
<script type="text/javascript" src="catalog/view/theme/<?php echo $thm_theme ?>/js/jquery.mobile-menu.min.js"></script> 
<script type="text/javascript" src="catalog/view/theme/<?php echo $thm_theme ?>/js/jquery.countdown.min.js"></script> 


<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

<style type="text/css">

<?php if($thmlilac_fonttransform!=''){?>
body {font-family:<?php echo $thmlilac_fonttransform; ?>, sans-serif !important ;}
<?php }?>

/* sale label */
.sale-label {
background:  <?php echo "#".$thmlilac_sale_labelcolor; ?> 
}

/*Main color section */
<?php if($thmlilac_body_bg_ed==1) { ?>
body {background:<?php echo "#".$thmlilac_body_bg; ?> } <?php } ?>
<?php if($thmlilac_fontcolor_ed==1) { ?>
body {color:<?php echo "#".$thmlilac_fontcolor; ?> } <?php } ?>
<?php if($thmlilac_linkcolor_ed==1) { ?>
a,a:visited {color:<?php echo "#".$thmlilac_linkcolor; ?>} <?php } ?>
<?php if($thmlilac_linkhovercolor_ed==1) { ?>
a:hover {color:<?php echo "#".$thmlilac_linkhovercolor; ?>} <?php } ?>


/* header color section */ 
<?php if($thmlilac_headerbg_ed==1) { ?>
.header-container { background-color: <?php echo "#".$thmlilac_headerbg; ?>;} <?php } ?>
<?php if($thmlilac_headerlinkcolor_ed==1) { ?>
.top_section .toplinks div.links div a{color:<?php echo "#".$thmlilac_headerlinkcolor; ?>;} <?php } ?>
<?php if($thmlilac_headerlinkhovercolor_ed==1) { ?>
.top_section .toplinks div.links div a:hover{color:<?php echo "#".$thmlilac_headerlinkhovercolor."! important" ?>;} <?php } ?>
<?php if($thmlilac_headerclcolor_ed==1) { ?>
#language a{color:<?php echo "#".$thmlilac_headerclcolor."! important"; ?>;} 
#currency a{color:<?php echo "#".$thmlilac_headerclcolor."! important"; ?>;} 
<?php } ?>

/*Top Menu */
/*background*/
<?php if($thmlilac_mmbgcolor_ed==1) { ?>
.mega-menu-category > .nav > li > a { background:<?php echo "#".$thmlilac_mmbgcolor; ?> } 
<?php } ?>
/*main menu links*/
<?php if($thmlilac_mmlinkscolor_ed==1) { ?>
.mega-menu-category > .nav > li > a{ color:<?php echo "#".$thmlilac_mmlinkscolor; ?>; } <?php } ?>
/*main menu link hover*/
<?php if($thmlilac_mmlinkshovercolor_ed==1) { ?>
.mega-menu-category > .nav > li > a:hover{color:<?php echo "#".$thmlilac_mmlinkshovercolor."! important"; ?>} <?php } ?>
<?php if($thmlilac_mmslinkscolor_ed==1) { ?>
.popup a{color:<?php echo "#".$thmlilac_mmslinkscolor; ?>} <?php } ?>
/*sub links hover*/
<?php if($thmlilac_mmslinkshovercolor_ed==1) { ?>
.popup a:hover{color:<?php echo "#".$thmlilac_mmslinkshovercolor; ?> } <?php } ?> 

/*buttons*/
<?php if($thmlilac_buttoncolor_ed==1) { ?>
button.button,.btn{background-color:<?php echo "#".$thmlilac_buttoncolor."! important"; ?> } <?php } ?>
<?php if($thmlilac_buttonhovercolor_ed==1) { ?>
button.button:hover,.btn:hover{background-color: <?php echo "#".$thmlilac_buttonhovercolor."! important"; ?>} <?php } ?>


/*price*/
<?php if($thmlilac_pricecolor_ed==1) { ?>
.regular-price .price{ color:<?php echo "#".$thmlilac_pricecolor; ?> } <?php } ?>
<?php if($thmlilac_oldpricecolor_ed==1) { ?>
.old-price .price{ color:<?php echo "#".$thmlilac_oldpricecolor."! important"; ?> } <?php } ?>
<?php if($thmlilac_newpricecolor_ed==1) { ?>
.special-price .price{ color:<?php echo "#".$thmlilac_newpricecolor; ?> } <?php } ?>

/*footer*/
<?php if($thmlilac_footerbg_ed==1) { ?>
.footer,.footer-top{background:<?php echo "#".$thmlilac_footerbg; ?> } <?php } ?>
<?php if($thmlilac_footerlinkcolor_ed==1) { ?>
.footer a{color: <?php echo "#".$thmlilac_footerlinkcolor."! important"; ?>} 
<?php } ?>
<?php if($thmlilac_footerlinkhovercolor_ed==1) { ?>
.footer a:hover{color: <?php echo "#".$thmlilac_footerlinkhovercolor."! important"; ?>} <?php } ?>
<?php if($thmlilac_powerbycolor_ed==1) { ?>
footer .coppyright{color: <?php echo "#".$thmlilac_powerbycolor; ?>} <?php } ?>
</style>
</head>
<?php 
$page_route='';
if(!$thm_config_seo_url) {
 if (isset($_GET['route'])) {
  $page_route = $_GET['route'];  
} else {
  $page_route = 'common/home';
}
}else {
  
  $currentpage = $_SERVER['REQUEST_URI'];
  if($currentpage=="/" || $currentpage=="/index.php?route=common/home" || $currentpage=="" ) {
  $page_route ="common/home";}
  
}



?>
<body class="<?php echo $class; ?> <?php if($page_route=='common/home') { echo "cms-home-page";}  ?>">
<div id="page" class="<?php if($page_route=='common/home' || $category_page=='category_page') { echo "category_page"; } else { echo "";}  ?>">
<?php 
$cat_id=$cat_id;
$cbim=$cbim_data;


if (function_exists('search')) {}
else {
function search($array, $key, $value)
{
    $results = array();

    if (is_array($array)) {
        if (isset($array[$key]) && $array[$key] == $value) {
            $results[] = $array;
        }

        foreach ($array as $subarray) {
            $results = array_merge($results, search($subarray, $key, $value));
        }
    }

    return $results;
}
}
if($cbim=='' || $cbim==null){$cbim=0;}
?>
<header>
 <?php if($thmlilac_headertsb_ed==1){  ?> 
    <?php echo html_entity_decode($thmlilac_headertsb_content); ?> 
 <?php } ?>  
      <div class="header-container">
       <div class="container">
            <div class="row">
             <div class="col-xs-12 col-sm-4 col-md-6 col-lg-6 pull-left">
              <?php echo $language; ?>
              <?php echo $currency; ?>
               <div class="welcome-msg">
                 <?php if (!$logged) { ?>
                  <p><?php echo $text_welcome; ?></p>
                  <?php } else { ?>
                  <p><?php echo $text_logged; ?></p>
                  <?php } ?>  
               </div>
             </div>
            <div class="col-xs-12 col-sm-8 col-md-6 col-lg-6 pull-right hidden-xs">
            <div class="toplinks">
              <div class="links">
                <div class="myaccount"><a title="<?php echo $text_account; ?>" href="<?php echo $account; ?>"><span class="hidden-xs"><?php echo $text_account; ?></span></a> </div>
                <div class="check"><a title="<?php echo $text_checkout; ?>" href="<?php echo $checkout; ?>"><span class="hidden-xs"><?php echo $text_checkout; ?></span></a> </div>
                <div class="check"><a title="<?php echo $text_wishlist; ?>" href="<?php echo $wishlist; ?>"><span class="hidden-xs"><?php echo $text_wishlist; ?></span></a> </div>                
                <?php if($thmblog_status==1){ ?>               
                <div class="demo"> <a title="<?php echo $text_blog ?>" href="<?php echo $blog_href;?>"><span class="hidden-xs"><?php echo $text_blog ?></span></a></div><?php }?>
                <!-- Header Company -->
                 <div class="dropdown block-company-wrapper hidden-xs"> <a role="button" data-toggle="dropdown" data-target="#" class="block-company dropdown-toggle" href="#"> <?php echo $text_information; ?> <span class="caret"></span></a>
                          <ul class="dropdown-menu">
                          
                            <?php $i=0;$cnt=count($informations); foreach ($informations as $information) { ?>
                                <li role="presentation"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                                <?php $i++;} ?>
                          </ul>
                      </div>
                <!-- End Header Company -->
               
               <div class="login">  <?php if (!$logged) { ?>
                      <a href="<?php echo $login; ?>"><span class="hidden-xs"><?php echo $text_login; ?></span></a>
                      <?php }  else { ?>
                      <a href="<?php echo $logout; ?>"><span class="hidden-xs"><?php echo $text_logout; ?></span></a>
                      <?php } ?></div>
              </div>
            </div>
            <!-- End Header Top Links --> 
          </div>          
          </div>   
        </div><!-- end header cointainer -->    
        </div>
        
            
           
        <div class="container">
        <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 logo-block"> 
        <?php if ($logo) { ?>
                  <a class="logo" href="<?php echo $home; ?>" title="<?php echo $name; ?>">
                    <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"/>
                  </a>
                  <?php } else { ?>
                  <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                <?php } ?>
        </div>
        <div class="col-lg-7 col-md-6 col-sm-6 col-xs-3 hidden-xs category-search-form">
        <div class="search-box">
            <div id="search_mini_form">
              <?php echo $search; ?>
            </div>
        </div>
        </div>
        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 card_wishlist_area">
        <div class="mm-toggle-wrap">
            <div class="mm-toggle"><i class="fa fa-align-justify"></i><span class="mm-label"><?php echo $text_menu;?></span> </div>
          </div>
                  <div class="top-cart-contain"> 
                              <!-- Top Cart -->
                              <div class="mini-cart">
                               <?php echo $cart; ?>
                              </div>
                              <!-- Top Cart -->
                              <div id="ajaxconfig_info" style="display:none"><a href="#/"></a>
                                <input value="" type="hidden">
                                <input id="enable_module" value="1" type="hidden">
                                <input class="effect_to_cart" value="1" type="hidden">
                                <input class="title_shopping_cart" value="Go to shopping cart" type="hidden">
                              </div>
                            </div>
        </div>
        </div>
        </div>
        <nav class="hidden-xs">
           <div class="nav-container">
           <div class="col-md-3 col-xs-12 col-sm-3">
             <div class="mega-container visible-lg visible-md visible-sm">
              <div class="navleft-container">
                 <div class="mega-menu-title">
                  <h3><i class="fa fa-navicon"></i><?php echo $text_all_categories;?></h3>
                 </div>
                 <div class="mega-menu-category">
                          <ul class="nav">
                              <?php if($thmlilac_home_option==1){ ?>
                                <li class="nosub"> <a href="<?php echo $home; ?>"><i class="fa fa-home"></i> <?php echo $text_home;?></a></li>
                              <?php } ?>
                              <?php foreach ($categories1 as $category) { ?>
                                 <li class="<?php if ($category['children']){ echo ""; } else {echo "nosub"; } ?>"> <a href="<?php echo $category['href']; ?>">
                                  <i class="fa <?php echo $category['thmlilac_topcaticon']; ?>"></i>
                                    <?php echo $category['name']; ?></a>
                                          <?php if ($category['children']) { ?>
                                              <?php $customDataMenu=search($cbim['custom_menu_content'], 'category_id', $category['category_id']); ?>
                                               <div class="wrap-popup">
                                                  <div class="popup">
                                                    <div class="row">
                                                             <?php $i_cnt=0;  if(isset($customDataMenu[0]['rightcontent'])) {  ?>

                                                              <?php for ($i = 0; $i < count($category['children']);) { ?>
                                                               <?php if($i_cnt < 3){ ?>
                                                              <div class="col-md-4 col-sm-6">
                                                              <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                                              <?php for (; $i < $j; $i++) { ?>
                                                              <?php  $i_cnt++; ?>
                                                               <?php if($i_cnt > 2){ break; }?>
                                                              <?php if (isset($category['children'][$i])) { ?>                                           
                                                           
                                                               <h3> <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></h3>
                                                                <?php //print_r($category['children'][$i]['child2']);
                                                                if(count($category['children'][$i]['children']) )
                                                                {?>
                                                                <ul class="nav">

                                                                <?php for($m=0;$m<count($category['children'][$i]['children']);$m++){
                                                                ?>
                                                                <li><a href="<?php echo $category['children'][$i]['children'][$m]['href'];?>"><?php echo $category['children'][$i]['children'][$m]['name']?></a></li>
                                                                <?php  }?>
                                                                </ul>
                                                                  <br>
                                                             
                                                              <?php }?>
                                                              <?php } ?>
                                                              <?php } ?>
                                                             </div>


                                                            <?php } else { ?>


                                                              <div class="col-md-4 col-sm-6 has-sep">
                                                              <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                                              <?php for (; $i < $j; $i++) { ?>
                                                              <?php if (isset($category['children'][$i])) { ?>
                                                               <h3> <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></h3>
                                                                <?php //print_r($category['children'][$i]['child2']);
                                                                if(count($category['children'][$i]['children']) )
                                                                {?>
                                                                <ul class="nav">

                                                                <?php for($m=0;$m<count($category['children'][$i]['children']);$m++){
                                                                ?>
                                                                <li><a href="<?php echo $category['children'][$i]['children'][$m]['href'];?>"><?php echo $category['children'][$i]['children'][$m]['name']?></a></li>
                                                                <?php  }?>
                                                                </ul>
                                                                  <br>
                                                              <?php }?>
                                                              <?php } ?>
                                                              <?php } ?>
                                                             </div>

                                                              <?php } ?>

                                                              <?php } ?> 

                                                              <!-- Right Menu images -->
                                                             
                                                              <?php if($customDataMenu[0]['rightcontent']!='') {  ?>
                                                               <div class="col-md-4 has-sep hidden-sm">
                                                                <div class="custom-menu-right">
                                                                 
                                                                   
                                                                     <?php echo html_entity_decode($customDataMenu[0]['rightcontent']); ?>
                                                                    
                                                                </div>
                                                              </div>
                                                              <?php  } ?> 

                                                            <?php } else { ?> 

                                                               <?php for ($i = 0; $i < count($category['children']);) { ?>
                                                              <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                                              <?php for (; $i < $j; $i++) { ?>
                                                              <?php if (isset($category['children'][$i])) { ?>
                                                             
                                                              <div class="col-md-4 col-sm-6">
                                                               <h3> <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></h3>
                                                                <?php //print_r($category['children'][$i]['child2']);
                                                                if(count($category['children'][$i]['children']) )
                                                                {?>
                                                                <ul class="nav">

                                                                <?php for($m=0;$m<count($category['children'][$i]['children']);$m++){
                                                                ?>
                                                                <li><a href="<?php echo $category['children'][$i]['children'][$m]['href'];?>"><?php echo $category['children'][$i]['children'][$m]['name']?></a></li>
                                                                <?php  }?>
                                                                </ul>
                                                                <br>
                                                              
                                                              <?php }?>
                                                              </div>
                                                              <?php } ?>
                                                              <?php } ?>
                                                           
                                                              <?php } ?>                                         

                                                  <?php } ?>
                                                            
                                                  </div>
                                                  <!-- bootom block content -->
                                                   <?php if(isset($customDataMenu[0]['bottomcontent'])) { ?>
                                                    <?php if($customDataMenu[0]['bottomcontent']!='') { ?>
                                                     
                                                    <?php echo html_entity_decode($customDataMenu[0]['bottomcontent']); ?>
                                                   
                                                    <?php } } ?>
                                              </div>
                                            </div>

                                          <?php }?>
                                       </li>
                                      <?php }?>
                                      <?php if($thmblog_status==1){ ?>
                                        <li class="nosub"><a href="<?php echo $blog_href;?>"><i class="fa fa-comments"></i><?php echo $text_blog ?></a>

                                        </li>
                                      <?php } ?>

                          </ul>
                          <!-- custom bock-->
                          <?php if($thmlilac_menubar_cb== 1)
                            {
                                 echo html_entity_decode($thmlilac_menubar_cbcontent);
                            } ?>
                        </div>
              </div>
             </div>
           </div>
           
            <?php if($thmlilac_headercb_ed== 1)
            {
                 echo html_entity_decode($thmlilac_headercb_content);
            } ?>
             </div>
        </nav>
</header>