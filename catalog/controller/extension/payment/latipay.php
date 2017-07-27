<?php
/*
	Latipay 纽元通 支付接口
	
	QQ群 50415210 群共享有免费插件,请加群查看
	
	开发者: TT
	邮箱: 30171310@qq.com
	QQ:30171310


    设置密钥：为确保商户交易信息的真实性和完整性，入驻LATIPAY电子支付平台的商户需要设置密钥，以用于数字签名，
    商户登录LATIPAY系统，在Developer>>Update key中可修改自己的秘钥，为确保商户交易数据安全，请商户正式上线前务必另行设定密钥。
    参数详细说明见API文档 https://merchant.latipay.co.nz/developer/api.action
*/
class ControllerExtensionPaymentLatipay extends Controller {
	public function index() {
		
		
		//////////////////////////////////////////////////////////////////////////////////
		$merId = $this->config->get('latipay_shanghuhao');//商户号
		$ikey = $this->config->get('latipay_miyao'); //秘钥
	
		
		$date = date('Ymd');
		
		$order_id = $this->session->data['order_id'];
		
		
		$this->load->model('checkout/order');

		$order_info = $this->model_checkout_order->getOrder($order_id);		
		
		
		$toSubmit['orderId'] = $date.'-'.$merId.'-'.$order_id;//订单编号
		
		//echo 'orderId:'.$toSubmit['orderId'];
		
		$toSubmit['currency'] = $order_info['currency_code']; //订单币种
		$toSubmit['amount'] = $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false);//订单总金额   
		$toSubmit['merchantCode'] =  $merId;
		
		
		
		$toSubmit['frontUrl'] = HTTP_SERVER . "latipay/url.php";//前台回调地址
		$toSubmit['key'] = $ikey;
		
		
		
		$mac= "";
		foreach($toSubmit as $k=>$v) {
			$mac .= "{$v}";
		}
		$toSubmit['md5info'] = md5($mac);  //订单数字指纹
	
		$toSubmit['backUrl'] = HTTP_SERVER . "latipay/backUrl.php";//后台回调地址
		$toSubmit['version'] = "1.0";//版本号
	   	
		
		//商品名称
		//$product_name = $params['ordername'];
		
		$product_names = '';
		$i = 1;
		$quantity = 0;
		foreach ($this->cart->getProducts() as $product) {
			
			$quantity += 1;
			
			if($i > 1){
				$product_names = utf8_substr(strip_tags(html_entity_decode($product['name'], ENT_QUOTES, 'UTF-8')), 0, 15) . '等多件商品';
				break;
			}else{
				$product_names = utf8_substr(strip_tags(html_entity_decode($product['name'], ENT_QUOTES, 'UTF-8')), 0, 20);
			}
			
			
			$i++;
		}
		
		
		$toSubmit['itemName'] = $product_names;//产品名称
		$toSubmit['quantity'] = $quantity;//产品数量
		
		
		/*
		$toSubmit['idName'] =  "张三";//身份证名称
		$toSubmit['idNumber'] =  "130126188711011515";//身份证名称
		$toSubmit['phone'] =  "+86 17722553636";//身份证名称
		
		$toSubmit['email'] =  "zhangsan@xx.com";//身份证名称
		*/
	
		$html = '';
		//header("Content-Type: text/html;charset=UTF-8");
		//$html ="<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"
		/*			\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">
					<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\" dir=\"ltr\">
					<head>
				</header><body><div>Redirecting...</div>";*/
		
		//测试地址
		//https://testmerchant.latipay.co.nz/api/show.action
		
		
		//正式地址
		//https://merchant.latipay.co.nz/api/show.action
		
		
		$leixing = $this->config->get('latipay_leixing');
		if($leixing == '1'){
			$huan_jing = 'https://merchant.latipay.co.nz/api/show.action';	
		}else{
			$huan_jing = 'https://testmerchant.latipay.co.nz/api/show.action';	
		}
		
		//采用post方式		
		
		$html = '<form id="payment" action="'.$huan_jing.'" method="post">';
		foreach($toSubmit as $k=>$v){
			if ($k<>$ikey){
				$html.='<input name="'.urldecode($k).'" type="hidden" value="'.htmlspecialchars($v).'"/>';
			}
		}
		/*$html.='
				</form>
				<script language="javascript">
				document.getElementById(\'payment\').submit();
				</script>
				</html>';*/
	
		
		$data['html'] = $html;
		//////////////////////////////////////////////////////////////////////
		
		
		$data['button_confirm'] = $this->language->get('button_confirm');

		$data['text_loading'] = $this->language->get('text_loading');

		$data['continue'] = $this->url->link('checkout/success');
		
		return $this->load->view('extension/payment/latipay', $data);
	}

	//发送邮件
	public function callback() {
		
		$this->load->model('checkout/order_latipay');
		$order_id = $this->request->post['order_id'];
		$order_status_id = $this->request->post['order_status_id'];
		
		//$order_id = $this->request->get['order_id'];
		//$order_status_id = $this->request->get['order_status_id'];

		//查看是否发送过数据
		$sql = $this->db->query("SELECT if_email_latipay FROM " . DB_PREFIX . "order WHERE order_id = '".$order_id."' LIMIT 1 ");
		if($sql->num_rows){
			if($sql->row['if_email_latipay'] == '0'){
				
				$this->db->query("UPDATE " . DB_PREFIX . "order SET if_email_latipay = '1' WHERE order_id = '".$order_id."' ");
				//发送邮件
				$this->model_checkout_order_latipay->addOrderHistory($order_id, $order_status_id , '' , 1);
				
			}else{
				//nothing
			}
		}
		
	}
}
