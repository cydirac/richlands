<?php
class lilac_ControllerExtensionModuleFeatured extends ControllerExtensionModuleFeatured {

public function preRender( $template_buffer, $template_name, &$data ) {
      if (!$this->endsWith( $template_name, '/template/extension/module/featured.tpl' )) {
      return parent::preRender( $template_buffer, $template_name, $data );
    }  
       
        // add new controller variables
        $this->load->language( 'extension/module/featured' );
        $data['text_compare'] = $this->language->get('text_compare');
		    $data['text_quickview'] = $this->language->get('text_quickview');
        $data['text_wishlist'] = $this->language->get('text_wishlist');
        $data['thmlilac_sale_labeltitle']=$this->config->get('thmlilac_sale_labeltitle');
        $data['thmlilac_sale_label'] = $this->config->get('thmlilac_sale_label');
        $data['thmlilac_quickview_button'] = $this->config->get('thmlilac_quickview_button');
        
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