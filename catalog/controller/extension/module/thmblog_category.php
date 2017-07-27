<?php  
class ControllerExtensionModuleThmblogCategory extends Controller {

	public function index() {

		$this->language->load('extension/module/thmblog_category');

		$data['heading_title'] = $this->language->get('heading_title');

		$this->load->model('thmblog/category');
		$data['categoryList'] = array();
		$categoryList = $this->model_thmblog_category->categoryParentChildTree(); 

		foreach ($categoryList as $category) {
			$data['categoryList'][] = array(
					'category_id' => $category['category_id'],
					'name'     => $category['name'],
					'href'     => $this->url->link('thmblog/category', 'tmblogcategory_id=' . $category['category_id'])
			);
		}

		return $this->load->view('extension/module/thmblog_category', $data);
		

	}
}
?> 
