<?php
/*
	Latipay 纽元通 支付接口
	
	QQ群 50415210 群共享有免费插件,请加群查看
	
	开发者: TT
	邮箱: 30171310@qq.com
	QQ:30171310
*/
class ModelExtensionPaymentLatipay extends Model {
	public function getMethod($address, $total) {
		$this->load->language('extension/payment/latipay');

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('latipay_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");

		if ($this->config->get('latipay_total') > 0 && $this->config->get('latipay_total') > $total) {
			$status = false;
		} elseif (!$this->config->get('latipay_geo_zone_id')) {
			$status = true;
		} elseif ($query->num_rows) {
			$status = true;
		} else {
			$status = false;
		}
		
		
		//此支付接口,支付货币为CNY，NZD或AUD
		$currencies = array(
			'CNY',
			'NZD',
			'AUD'
		);
		
		if (!in_array(strtoupper($this->session->data['currency']), $currencies)) {
			$status = false;
		}
		

		$method_data = array();

		if ($status) {
			$method_data = array(
				'code'       => 'latipay',
				'title'      => $this->language->get('text_title'),
				'terms'      => '',
				'sort_order' => $this->config->get('latipay_sort_order')
			);
		}

		return $method_data;
	}
}