<?php
class ControllerModuleHideRegistrationFields extends Controller {
    
	private $error = array(); 
	
	public function install() {
	    $defaultSettings = array(
            'hide_registration_fields' => array()
	    );
	    
		$this->load->model('setting/setting');
		$this->model_setting_setting->editSetting('hide_registration_fields', $defaultSettings);
		
// 		$this->load->model('module/hide_registration_fields');
// 		$this->model_module_hide_registration_fields->install();
		
	}
	
	public function index() {
		
	    $module_route = 'module/hide_registration_fields';
	    if(version_compare(VERSION, "2.2.0.0", "le")){
	        $modules_route = 'extension/module';
	    }else{
	        $modules_route = 'extension/extension';
	    }
	     
	    
		//Seems to be available in a "default" language object. See controller/common/header.php @0ce36
		$data['direction'] = $this->language->get('direction');
		
		$this->load->language('module/hide_registration_fields');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		//Load the settings model. You can also add any other models you want to load here.
		$this->load->model('setting/setting');
		
		//Save the settings if the user has submitted the admin form (ie if someone has pressed save).
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
		    
			$this->model_setting_setting->editSetting('hide_registration_fields', $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->response->redirect($this->url->link($modules_route, 'token=' . $this->session->data['token'] . '&type=module', 'SSL'));
		}

		$text_strings = array(
			'heading_title',
			'text_enabled',
			'text_disabled',
			'text_left',
			'text_right',
			'text_home',
			'text_yes',
			'text_no',
			'button_save',
			'button_cancel'
		);
		
		foreach ($text_strings as $text) {
			$data[$text] = $this->language->get($text);
		}
		
 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}


		$data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
       		'text'      => $this->language->get('text_home'),
      		'separator' => FALSE
   		);

   		$data['breadcrumbs'][] = array(
       		'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
       		'text'      => $this->language->get('text_module'),
      		'separator' => ' :: '
   		);
		
   		$data['breadcrumbs'][] = array(
       		'href'      => $this->url->link('module/hide_registration_fields', 'token=' . $this->session->data['token'], 'SSL'),
       		'text'      => $this->language->get('heading_title'),
      		'separator' => ' :: '
   		);
		
		$data['action'] = $this->url->link($module_route, 'token=' . $this->session->data['token'], 'SSL');
		$data['cancel'] = $this->url->link($modules_route, 'token=' . $this->session->data['token'] . '&type=module', 'SSL');
		
		
		
		$config_data = array(
	        'hide_registration_fields'
		);
		
		foreach ($config_data as $conf) {
		    if (isset($this->request->post[$conf])) {
		        $data[$conf] = $this->request->post[$conf];
		    } else {
		        $data[$conf] = $this->config->get($conf);
		    }
		}
		
		if(empty ($data['hide_registration_fields'])) $data['hide_registration_fields'] = array();
		
		$data['header']      = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer']      = $this->load->controller('common/footer');
		
		$this->response->setOutput($this->load->view('module/hide_registration_fields.tpl', $data));
	}
	
}