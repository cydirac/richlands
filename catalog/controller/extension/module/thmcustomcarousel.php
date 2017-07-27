<?php

class ControllerExtensionModuleThmcustomcarousel extends Controller {
	public function index($setting) {

		$this->load->model('tool/image');		
		$data = array();
		if (isset($setting['thmcustomcarousel_image'])) {
			$slider = array();
			foreach ($setting['thmcustomcarousel_image'] as $slide) {
			
 			$slider[] = array('title'=>isset($slide['thmcustomcarousel_image_title'][$this->config->get('config_language_id')]['title']) ? html_entity_decode($slide['thmcustomcarousel_image_title'][$this->config->get('config_language_id')]['title']) : "",'link'=>$slide['link'],'image'=>$this->model_tool_image->resize($slide['image'], $setting['width'],$setting['height']),'description'=>isset($slide['thmcustomcarousel_image_description'][$this->config->get('config_language_id')]['description']) ? html_entity_decode($slide['thmcustomcarousel_image_description'][$this->config->get('config_language_id')]['description']) : ""); 

			}
		}

		$data['slider'] = $slider;


		return $this->load->view('extension/module/thmcustomcarousel', $data);
		
		}
}	