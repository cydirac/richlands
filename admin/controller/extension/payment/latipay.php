<?php
class ControllerExtensionPaymentLatipay extends Controller {
	private $error = array();

	public function index() {
		
		
		//给数据添加字段,用于邮件发送使用
		$sql = $this->db->query("Describe `" . DB_PREFIX . "order` `if_email_latipay`");
		if($sql->num_rows){
			//echo "you";	
		}else{
			//echo 'no';	
			$this->db->query("ALTER TABLE `" . DB_PREFIX . "order` ADD `if_email_latipay` TINYINT NOT NULL ");
		}
		
		$this->load->language('extension/payment/latipay');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('latipay', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true));
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_all_zones'] = $this->language->get('text_all_zones');
		
		
		$data['entry_shanghuhao'] = $this->language->get('entry_shanghuhao');
		$data['entry_miyao'] = $this->language->get('entry_miyao');
		
		$data['entry_leixing'] = $this->language->get('entry_leixing');
		$data['text_leixing_zhengshi'] = $this->language->get('text_leixing_zhengshi');
		$data['text_leixing_test'] = $this->language->get('text_leixing_test');
		
		$data['entry_order_status'] = $this->language->get('entry_order_status');
		$data['entry_total'] = $this->language->get('entry_total');
		$data['entry_geo_zone'] = $this->language->get('entry_geo_zone');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$data['entry_currency'] = $this->language->get('entry_currency');

		$data['help_total'] = $this->language->get('help_total');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);
		
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/payment/latipay', 'token=' . $this->session->data['token'], true)
		);
		
		$data['action'] = $this->url->link('extension/payment/latipay', 'token=' . $this->session->data['token'], 'SSL');

		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true);
		
		//商户号
		if (isset($this->request->post['latipay_shanghuhao'])) {
			$data['latipay_shanghuhao'] = $this->request->post['latipay_shanghuhao'];
		} else {
			$data['latipay_shanghuhao'] = $this->config->get('latipay_shanghuhao');
		}
		
		//秘钥
		if (isset($this->request->post['latipay_miyao'])) {
			$data['latipay_miyao'] = $this->request->post['latipay_miyao'];
		} else {
			$data['latipay_miyao'] = $this->config->get('latipay_miyao');
		}
		
		//最低金额
		if (isset($this->request->post['latipay_total'])) {
			$data['latipay_total'] = $this->request->post['latipay_total'];
		} else {
			$data['latipay_total'] = $this->config->get('latipay_total');
		}
		
		//状态
		if (isset($this->request->post['latipay_order_status_id'])) {
			$data['latipay_order_status_id'] = $this->request->post['latipay_order_status_id'];
		} else {
			$data['latipay_order_status_id'] = $this->config->get('latipay_order_status_id');
		}

		$this->load->model('localisation/order_status');

		$data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();
		
		//
		if (isset($this->request->post['latipay_geo_zone_id'])) {
			$data['latipay_geo_zone_id'] = $this->request->post['latipay_geo_zone_id'];
		} else {
			$data['latipay_geo_zone_id'] = $this->config->get('latipay_geo_zone_id');
		}

		$this->load->model('localisation/geo_zone');

		$data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();
		
		//状态
		if (isset($this->request->post['latipay_status'])) {
			$data['latipay_status'] = $this->request->post['latipay_status'];
		} else {
			$data['latipay_status'] = $this->config->get('latipay_status');
		}
		
		
		//类型 测试状态或者正式环境
		if (isset($this->request->post['latipay_leixing'])) {
			$data['latipay_leixing'] = $this->request->post['latipay_leixing'];
		} else {
			$data['latipay_leixing'] = $this->config->get('latipay_leixing');
		}
		

		if (isset($this->request->post['latipay_sort_order'])) {
			$data['latipay_sort_order'] = $this->request->post['latipay_sort_order'];
		} else {
			$data['latipay_sort_order'] = $this->config->get('latipay_sort_order');
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/payment/latipay', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/payment/latipay')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}