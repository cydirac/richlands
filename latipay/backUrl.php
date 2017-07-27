<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/3/25
 * Time: 10:40
 *
 * 后台通知：由LATIPAY支付平台转发银行支付确认信息。
 *          这种方式是LATIPAY支付平台服务器与商户服务器之间进行通信的，对于持卡买家不可见
 *          参数同前台通知，有返回值
 * 详细说明见API文档 https://merchant.latipay.co.nz/developer/api.action
 */	
require_once('../config.php');
	
// Startup
require_once(DIR_SYSTEM . 'startup.php');

// Registry
$registry = new Registry();

// Loader
$loader = new Loader($registry);
$registry->set('load', $loader);

// Config
$config = new Config();
$registry->set('config', $config);

// Database
$db = new DB(DB_DRIVER, DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
$registry->set('db', $db);

// Settings
$query = $db->query("SELECT * FROM `" . DB_PREFIX . "setting` WHERE code = 'latipay' ");
foreach($query->rows as $result){
	$config->set($result['key'], $result['value']);
}
	
//秘钥
$ikey = $config->get('latipay_miyao');

//支付成功后的订单状态
$order_status_id = $config->get('latipay_order_status_id');
	 

$orderId = $_POST['orderId'];
$payType = $_POST['payType'];//0网银 1支付宝 2微信
$status = $_POST['status'];//支付状态 20 支付成功
$currency = $_POST['currency'];//货币币种
$amount = $_POST['amount'];//实际收到的金额
$md5info = $_POST['md5info'];//订单数字指纹


$log = "";

$log .= "orderId=" . $orderId;
$log .= " payType=" . $payType;
$log .= " status=" . $status;
$log .= " currency=" . $currency;
$log .= " amount=" . $amount;
$log .= " md5info=" . $md5info;


$signText = $orderId.$payType.$status.$currency.$amount.$ikey;

$log .= " signText=" . $signText;

$sign = md5($signText);

$log .= " sign=" . $sign;


$file  = 'latipay_log.txt';//要写入文件的文件名（可以是任意文件名），如果文件不存在，将会创建一个

if ($sign==$md5info){
	if($status == "20"){
		echo "sent"; //返回值不可修改，用于LATIPAY电子支付平台验证回调是否成功
		
		$order_id_array = explode("-",$orderId);
		$order_id = trim($order_id_array['2']);
		
		//修改订单状态
		$db->query("UPDATE `" . DB_PREFIX . "order` SET order_status_id = '".$order_status_id."' WHERE order_id = '".$order_id."' ");
		
		//发送邮件信息
		//发送邮件
		//210.5.2.106
		$url = HTTP_SERVER ."index.php?route=extension/payment/latipay/callback";
		
		$post_data = array (
			"order_id" => $order_id,
			"order_status_id" => $order_status_id
		);
		
		$ch = curl_init();
		
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		// post数据
		curl_setopt($ch, CURLOPT_POST, 1);
		// post的变量
		curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
		
		$output = curl_exec($ch);
		curl_close($ch);
		
		
		$content = "PAY_SUCCESS";
		//return PAY_SUCCESS;
	}else{
		echo "error"; //返回值不可修改，用于LATIPAY电子支付平台验证回调是否成功
		$content = "PAY_ERROR1";
		//return ;
	}
}else{
	echo "error"; //返回值不可修改，用于LATIPAY电子支付平台验证回调是否成功
	$content = "PAY_ERROR2";
	//return PAY_ERROR;
}
file_put_contents($file , $content . $log , FILE_APPEND);