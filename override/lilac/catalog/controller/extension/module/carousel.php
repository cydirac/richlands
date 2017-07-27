<?php
class lilac_ControllerExtensionModuleCarousel extends ControllerExtensionModuleCarousel {

public function preRender( $template_buffer, $template_name, &$data ) {
      if (!$this->endsWith( $template_name, '/template/extension/module/carousel.tpl' )) {
      return parent::preRender( $template_buffer, $template_name, $data );
    }  
       
        // add new controller variables
        $this->load->language( 'extension/module/carousel' );
        $data['heading_title'] = $this->language->get('heading_title');    
        
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