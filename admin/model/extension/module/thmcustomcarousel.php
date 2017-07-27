<?php
class ModelExtensionModuleThmcustomcarousel extends Model {
	public function getInfo($module_id) {
		$thmcustomcarousel_image_data = array();

		$thmcustomcarousel_image_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "module WHERE module_id = '" . (int)$module_id . "' ");
        $info = $thmcustomcarousel_image_query->rows;
        $thmcustomcarousel = json_decode($info[0]['setting'],true);
		foreach ($thmcustomcarousel['thmcustomcarousel_image'] as $thmcustomcarousel_image) {

			foreach ($thmcustomcarousel_image['thmcustomcarousel_image_description'] as $key => $value) {
				$description[$key]=array('description'=>$value['description']);
				}
			foreach ($thmcustomcarousel_image['thmcustomcarousel_image_title'] as $key => $value) {
			$title[$key]=array('title'=>$value['title']);
			}	

			$thmcustomcarousel_image_data[] = array(
				'thmcustomcarousel_image_title'       => $title,
				'link'                          => $thmcustomcarousel_image['link'],
				'image'                         => $thmcustomcarousel_image['image'],
				'thmcustomcarousel_image_description' => $description				
			);
		}

		return $thmcustomcarousel_image_data;
	}
}?>