<?php  if ($thmtestimonials) { ?>

<?php $test_count=count($thmtestimonials);  ?>


<?php $block=1; $thmtest=0; for($test_i=0;$test_i<$block;$test_i++){  ?>

  <div class="clients-block">
           <img src="<?php echo $thmtestimonials[$test_i]['image'];?>" alt="" class="fresh_green">
          
            <div class="clients-text">
            <div class="clients-txt">
            <p class="comment more shortened"><?php echo $thmtestimonials[$test_i]['text']; ?></p>
            <span class="<?php if($thmtestimonials[$test_i]['bio']) { echo "clients-block-meta"; } else { echo "clients-block-meta clients-border-right"; } ?>"><?php echo $thmtestimonials[$test_i]['author']; ?></span>
            <?php if($thmtestimonials[$test_i]['bio']) { ?>
            <span class="clients-block-position"> <?php if($display_author_bio) { echo $thmtestimonials[$test_i]['bio']; } ?></span>
            <?php } ?>
            <div class="clients-block-date"> <?php if($display_date_added){ echo $thmtestimonials[$test_i]['date_added']; } ?></div>
            </div>
            
            <?php if($display_rating) { ?>
            <?php if(isset($thmtestimonials[$test_i]['rating'])) { ?>
            <div class="rating">
            <?php for ($i = 1; $i <= 5; $i++) { ?>
            <?php if ($thmtestimonials[$test_i]['rating'] < $i) { ?>
            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
            <?php } else { ?>
            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            </div>
            <?php } ?>
            </div>
    </div>

<?php } ?>

<div class="testimonials_thm">
<?php $block=$test_i+4; for($test_i=$test_i;$test_i<$block;$test_i++) { if(isset($thmtestimonials[$test_i])) { ?>
 <div class="<?php if($test_i % 2 == 0) { echo "inner-right";} else { echo "inner-left"; } ?>">
        <div class="quote-box"><cite>
          <span class="photo tina">       
          <img src="<?php echo $thmtestimonials[$test_i]['image'];?>" alt="">
          </span></cite>
         <span class="quote-left">&nbsp;</span> <q class="comment1 more shortened"><?php echo $thmtestimonials[$test_i]['text']; ?> </q>  
         <span class="<?php if($thmtestimonials[$test_i]['bio']) { echo "author"; } else { echo "author author-border-right"; } ?>"><?php echo $thmtestimonials[$test_i]['author']; ?></span> 
         <?php if($thmtestimonials[$test_i]['bio']) { ?>
         <span class="clients-block-position"> <?php if($display_author_bio) { echo $thmtestimonials[$test_i]['bio']; } ?></span>
         <?php } ?>
        <div class="clients-block-date"> <?php if($display_date_added){ echo $thmtestimonials[$test_i]['date_added']; } ?> </div>     
        <?php if($display_rating) { ?>
        <?php if(isset($thmtestimonials[$test_i]['rating'])) { ?>
        <div class="rating">
        <?php for ($i = 1; $i <= 5; $i++) { ?>
        <?php if ($thmtestimonials[$test_i]['rating'] < $i) { ?>
        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
        <?php } else { ?>
        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
        <?php } ?>
        <?php } ?>
        <?php } ?>
        </div>
        <?php } ?>
       </div>
        </div>

<?php  } } ?>
 </div>

<?php $block=$test_i+1; for($test_i=$test_i;$test_i<$block;$test_i++){  if(isset($thmtestimonials[$test_i])) { ?>

  <div class="clients-block">
           <img src="<?php echo $thmtestimonials[$test_i]['image'];?>" alt="" class="fresh_green">
          
            <div class="clients-text">
            <div class="clients-txt">
            <p class="comment more shortened"><?php echo $thmtestimonials[$test_i]['text']; ?></p>
           
            <span class="<?php if($thmtestimonials[$test_i]['bio']) { echo "clients-block-meta"; } else { echo "clients-block-meta clients-border-right"; } ?>"><?php echo $thmtestimonials[$test_i]['author']; ?></span>
            <?php if($thmtestimonials[$test_i]['bio']) { ?>
            <span class="clients-block-position"> <?php if($display_author_bio) { echo $thmtestimonials[$test_i]['bio']; } ?></span>
           <?php } ?>
             <div class="clients-block-date"> <?php if($display_date_added){ echo $thmtestimonials[$test_i]['date_added']; } ?></div>
          </div>          
          <?php if($display_rating) { ?>
          <?php if(isset($thmtestimonials[$test_i]['rating'])) { ?>
          <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($thmtestimonials[$test_i]['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
          <?php } ?>
          </div>
          <?php } ?>
            </div>
    </div>

<?php } } ?>


<?php $block=$test_i+3; for($test_i=$test_i;$test_i<$block;$test_i++){  if(isset($thmtestimonials[$test_i])) { ?>
<div class="clients-block1"  <?php if($test_i == $block-1) echo 'style="margin-right:0px;"'; ?> >  
  <img src="<?php echo $thmtestimonials[$test_i]['image'];?>" alt="">
  <div class="clients-text1">
  <div class="clients-txt1">
  <p class="comment more shortened"><?php echo $thmtestimonials[$test_i]['text']; ?></p>
  </div>
  </div>

  <span class="<?php if($thmtestimonials[$test_i]['bio']) { echo "clients-block-meta1"; } else { echo "clients-block-meta1 clients-border-right"; } ?>"><?php echo $thmtestimonials[$test_i]['author']; ?></span>
  <?php if($thmtestimonials[$test_i]['bio']) { ?>
  <span class="clients-block-position"> <?php if($display_author_bio) { echo $thmtestimonials[$test_i]['bio']; } ?></span>
  <?php } ?>
  <div class="clients-block-date"> <?php if($display_date_added){ echo $thmtestimonials[$test_i]['date_added']; } ?></div>
  <?php if($display_rating) { ?>
  <?php if(isset($thmtestimonials[$test_i]['rating'])) { ?>
  <div class="rating">
  <?php for ($i = 1; $i <= 5; $i++) { ?>
  <?php if ($thmtestimonials[$test_i]['rating'] < $i) { ?>
  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
  <?php } else { ?>
  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  </div>
  <?php } ?>
</div>
<?php } } ?>



 <div class="testimonials_thm">
 <?php $block=$test_i+2; for($test_i=$test_i;$test_i<$block;$test_i++){  if(isset($thmtestimonials[$test_i])) { ?>
        <div class="<?php if($test_i % 2 == 0) { echo "inner-right";} else { echo "inner-left"; } ?>">
        <div class="quote-box"><cite>
         <span class="photo tina">       
         <img src="<?php echo $thmtestimonials[$test_i]['image'];?>" alt="">
         </span></cite>
         <span class="quote-left">&nbsp;</span> <q class="comment1 more shortened"><?php echo $thmtestimonials[$test_i]['text']; ?>
         </q> 
         <span class="<?php if($thmtestimonials[$test_i]['bio']) { echo "author"; } else { echo "author author-border-right"; } ?>"><?php echo $thmtestimonials[$test_i]['author']; ?></span> 
          <?php if($thmtestimonials[$test_i]['bio']) { ?>
         <span class="clients-block-position"> <?php if($display_author_bio) { echo $thmtestimonials[$test_i]['bio']; } ?></span>
         <?php } ?>
          <div class="clients-block-date"> <?php if($display_date_added){ echo $thmtestimonials[$test_i]['date_added']; } ?> </div>       
          <?php if($display_rating) { ?>
          <?php if($thmtestimonials[$test_i]['rating']) { ?>
          <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($thmtestimonials[$test_i]['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
          <?php } ?>
          </div>
          <?php } ?>
       </div>
      </div> 
      <?php } } ?>

    </div>


<div class="text-right"><?php echo $pagination; ?></div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>
