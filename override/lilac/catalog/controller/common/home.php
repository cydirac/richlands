<?php
class lilac_ControllerCommonHome extends ControllerCommonHome {

    /* overridden method, this newly introduced function is always called
       before the final rendering
    */
protected function endsWith( $haystack, $needle ) {
        if (strlen( $haystack ) < strlen( $needle )) {
            return false;
        }
        return (substr( $haystack, strlen($haystack)-strlen($needle), strlen($needle) ) == $needle);
}
public function preRender( $template_buffer, $template_name, &$data ) {
    
    if (!$this->endsWith( $template_name, '/template/common/home.tpl' )) {
      return parent::preRender( $template_buffer, $template_name, $data );
    }

         $data['bottom_left'] = $this->load->controller('common/bottom_left');
         $data['bottom_right'] = $this->load->controller('common/bottom_right');
         $data['slider_right'] = $this->load->controller('common/slider_right');
         $data['slider_left'] = $this->load->controller('common/slider_left');
         $data['header'] = $this->load->controller('common/header');//js present in header needed for slider]        
        // call parent method
        return parent::preRender( $template_buffer, $template_name, $data );
    }
}

?>