<footer  class="footer">
<?php
if($newslettersubscription_status==1) { ?>
      <div class="newsletter-wrap">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <div class="newsletter">
              <form>
                <div>
                   <?php echo $newslettersubscription; ?>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
<?php } ?>
 <div class="footer-middle">
    <div class="container">
      <div class="row">
         <div class="col-md-3 col-sm-6">
          <div class="footer-column pull-left">
              <h4><?php echo $text_service; ?></h4>
              <ul class="links">
                  <li class="first"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                  <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                  <li class="last"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><?php echo $text_account; ?></a></li>
                </ul>
           </div>
           </div>
       
         <div class="col-md-3 col-sm-6">          
           <div class="footer-column pull-left">
              <h4><?php echo $text_extra; ?></h4>
                <ul class="links">
                    <li class="first"><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                    <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                    <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                    <?php if($thmblog_status==1){ ?>                     
                       <li><a href="<?php echo $blog_href; ?>"><?php echo $text_blog; ?></a></li>
                       <?php } else { ?>
                        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                       <?php }?> 
                    <li class="last"><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                  </ul>
                  </div>
           </div>
           <?php if ($informations) { ?>
           <div class="col-md-3 col-sm-6">
           <div class="footer-column pull-left">
            <h4><?php echo $text_information; ?></h4>
            <ul class="links">
            <?php $i=0;$cnt=count($informations); foreach ($informations as $information) { ?>
            <li class="<?php if($i==0){echo 'first';} if($i==$cnt){echo 'last';} ?>"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
            <?php $i++;} ?>
            </ul>
           </div>
           </div>
           <?php } ?>
            <div class="col-md-3 col-sm-6">
               <div class="footer-column pull-left">
                <h4><?php echo $text_contact; ?></h4>
                 <div class="contacts-info">             
                      <address><?php if ($thmlilac_address):?><i class="add-icon">&nbsp;</i><?php echo html_entity_decode($thmlilac_address); ?>               
                          <?php endif;?>
                      </address>
                        <?php if ($thmlilac_phone) : ?>                       
                        <div class="phone-footer"><i class="phone-icon">&nbsp;</i><?php echo $thmlilac_phone; ?></div>
                        <?php endif;?>
                        <?php if ($thmlilac_email): ?>
                           <div class="email-footer"><i class="email-icon">&nbsp;</i>
                            <a href="mailto:<?php echo $thmlilac_email; ?>"><?php echo $thmlilac_email; ?></a>
                          </div>
                        <?php endif; ?>
                     
                  </div>      
                  </div>       
            </div>
         
    </div>
  </div>
</div>
<div class="footer-top">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-6">
            <div class="social">
              <ul>
                   <?php if($facebookurl!='') { ?>
                    <li class="fb pull-left"><a href="<?php echo $facebookurl; ?>" target="_blank"></a></li>
                    <?php } ?>
                    <?php if($twitterurl!='') { ?>
                    <li class="tw pull-left"><a href="<?php echo $twitterurl; ?>" target="_blank"></a></li>
                    <?php } ?>
                    <?php if($gplusurl!='') { ?>
                    <li class="googleplus pull-left"><a href="<?php echo $gplusurl; ?>" target="_blank"></a></li>
                    <?php } ?>
                    <?php if($rssurl!='') { ?>
                    <li class="rss pull-left"><a href="<?php echo $rssurl; ?>" target="_blank"></a></li>
                    <?php } ?>
                    <?php if($pintresturl!='') { ?>
                    <li class="pintrest pull-left"><a href="<?php echo $pintresturl; ?>" target="_blank"></a></li>
                    <?php } ?>
                    <?php if($linkedinurl!='') { ?>
                    <li class="linkedin pull-left"><a href="<?php echo $linkedinurl; ?>" target="_blank"></a></li>
                    <?php } ?>
                    <?php if($youtubeurl!='') { ?>
                    <li class="youtube pull-left"><a href="<?php echo $youtubeurl; ?>" target="_blank"></a></li>
                    <?php } ?>
                </ul>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6">
            <div class="payment-accept"> 
            <img alt="payment1" src="catalog/view/theme/<?php echo $thm_theme ?>/image/payment-1.png"> 
            <img alt="payment2" src="catalog/view/theme/<?php echo $thm_theme ?>/image/payment-2.png"> 
            <img alt="payment3" src="catalog/view/theme/<?php echo $thm_theme ?>/image/payment-3.png"> 
            <img alt="payment4" src="catalog/view/theme/<?php echo $thm_theme ?>/image/payment-4.png">
            </div>
          </div>
        </div>
      </div>
    </div>
<div class="footer-bottom">
    <div class="container">
      <div class="row">
         <?php
        if(trim($thmlilac_powerby) != '') {
          echo html_entity_decode($thmlilac_powerby);
        } else {
          echo $powered;
        }
      ?>        
      </div>
    </div>
</div>
</footer>
</div> <!-- page id -->

<div id="mobile-menu">
  <ul>
  <li>
     <div class="mm-search">
     <div id="mob-search">
          <div class="input-group">
            <div class="input-group-btn">
                  <button id="mm-submit-button-search-header" class="btn btn-default">
                  <i class="fa fa-search"></i>
                  </button>
            </div>
             <input id="srch-term" class="form-control simple" type="text" name="search_mm" maxlength="70" value="<?php echo $search;?>" placeholder="<?php echo $text_search; ?>">
          </div>
      </div>
     </div>
  </li>
  
      <?php if($thmlilac_home_option==1){ ?>
      <li>
        <div class="home"><a href="<?php echo $home;?>"><?php echo $text_home; ?></a></div>
      </li><?php }?>

      <?php foreach ($categories1 as $category) { ?>
      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php if ($category['children']) { ?>
        <ul>
          <?php for($i=0;$i<count($category['children']);$i++){ ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
              <?php if($category['children'][$i]['children']) {?>
              <ul>
                <?php for($j=0;$j<count($category['children'][$i]['children']);$j++) { ?>
                <li><a href="<?php echo $category['children'][$i]['children'][$j]['href']; ?>"><?php echo $category['children'][$i]['children'][$j]['name']; ?></a></li>
                <?php }?>
              </ul>
              <?php }?> 
          </li>
          <?php }?>
        </ul>
        <?php }?>
      </li>
      <?php } ?>
  </ul>
   <div class="top-links"> 
   
            <ul class="links">
            <li><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
            <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><?php echo $text_checkout; ?></a></li>  
            <?php if($thmblog_status==1){ ?>
            <li><a href="<?php echo $blog_href;?>"><span><?php echo $text_blog ?></span></a></li><?php }?> 
            <li class="last">
            <?php if (!$logged) { ?>
            <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
            <?php }  else { ?>
            <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
            <?php } ?>
            </li>
            </ul>
            
  </div>
</div><!-- mobile-menu -->
<?php if($thmlilac_scroll_totop!=1) { ?>
<script type="text/javascript">
window.onload=function(){
$('body #toTop').remove();
}
</script>
<?php }?>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<div id="tmquickview">
<div id="thmloading" style="display:none;text-align:center;margin-top:400px;"><img src="catalog/view/theme/<?php echo $thm_theme ?>/image/loading.gif" alt="loading">
</div></div>
</body></html>