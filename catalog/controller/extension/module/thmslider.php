<?php

class ControllerExtensionModuleThmslider extends Controller {
	public function index($setting) {

		$this->load->model('tool/image');
		
		$data = array();
		if (isset($setting['thmslider_image'])) {
			$slider = array();
			foreach ($setting['thmslider_image'] as $slide) {
		
 			$slider[] = array('title'=>isset($slide['thmslider_image_title'][$this->config->get('config_language_id')]['title']) ? html_entity_decode($slide['thmslider_image_title'][$this->config->get('config_language_id')]['title']) : "",'link'=>$slide['link'],'image'=>$this->model_tool_image->resize($slide['image'],850,437),'description'=>isset($slide['thmslider_image_description'][$this->config->get('config_language_id')]['description']) ? html_entity_decode($slide['thmslider_image_description'][$this->config->get('config_language_id')]['description']) : ""); 

			}
		}
		$data['thmslider_width']=$setting['width'];
		$data['thmslider_height']=$setting['height'];		
		if(isset($slider)){
		$data['slider'] = $slider;
	    }
			
		return $this->load->view('extension/module/thmslider', $data);
			
		}
}	