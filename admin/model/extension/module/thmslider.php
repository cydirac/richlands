<?php
class ModelExtensionModuleThmslider extends Model {
	public function getInfo($module_id) {
		$thmslider_image_data = array();

		$thmslider_image_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "module WHERE module_id = '" . (int)$module_id . "' ");
        $info = $thmslider_image_query->rows;
        $thmslider = json_decode($info[0]['setting'],true);
        if(isset($thmslider['thmslider_image'])){
		foreach ($thmslider['thmslider_image'] as $thmslider_image) {

			foreach ($thmslider_image['thmslider_image_description'] as $key => $value) {
				$description[$key]=array('description'=>$value['description']);
				}
			foreach ($thmslider_image['thmslider_image_title'] as $key => $value) {
			$title[$key]=array('title'=>$value['title']);
			}	

			$thmslider_image_data[] = array(
				'thmslider_image_title'       => $title,
				'link'                          => $thmslider_image['link'],
				'image'                         => $thmslider_image['image'],
				'thmslider_image_description' => $description				
			);
		}
		}

		return $thmslider_image_data;
	}
}?>