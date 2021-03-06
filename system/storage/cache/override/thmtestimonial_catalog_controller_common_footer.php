<?php
class thmtestimonial_ControllerCommonFooter extends lilac_ControllerCommonFooter {

public function preRender( $template_buffer, $template_name, &$data ) {
      if (!$this->endsWith( $template_name, '/template/common/footer.tpl' )) {
      return parent::preRender( $template_buffer, $template_name, $data );
    }
       
        // add new controller variables

        $this->load->language('thmtestimonial/thmtestimonial');
        $this->load->model('thmtestimonial/thmtestimonial');
        $isTestimonialStore = $this->model_thmtestimonial_thmtestimonial->isTestimonialStore();

        if($isTestimonialStore){ 
        $this->load->language( 'common/footer' );
        $data['text_testimonial'] = $this->language->get( 'text_testimonial' );
        $data['testimonial_href']=$this->url->link('thmtestimonial/thmtestimonial');
        // modify template file
        $template_buffer = str_replace(
            '<?php echo $text_sitemap; ?></a></li>',
            '<?php echo $text_sitemap; ?></a></li><li><a href="<?php echo $testimonial_href; ?>"><?php echo $text_testimonial; ?></a></li>',
            $template_buffer
        );
        }



     // call parent method
        return parent::preRender( $template_buffer, $template_name, $data );
    }


    protected function endsWith( $haystack, $needle ) {
    if (strlen( $haystack ) < strlen( $needle )) {
      return false;
    }
    return (substr( $haystack, strlen($haystack)-strlen($needle), strlen($needle) ) == $needle);
   }
} 
