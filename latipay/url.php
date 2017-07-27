<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 2016/5/16
 * Time: 10:07
 *
 * 前台通知：将此次支付订单的交易结果（参数）以页面连接的形式发送给商户。这里的前台指这个参数传递过程对持卡买家是可见的，无返回值
 * 详细说明见API文档 https://merchant.latipay.co.nz/developer/api.action
 */

//http://www.ccxshop.cn/latipay_demo/url.php?orderId=20161125-M00001263-1&payType=2&status=20&currency=NZD&amount=0.01&md5info=e5292ebc945cedf4be822b6fad27316b
	
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

    $orderId = $_GET['orderId'];
    $payType = $_GET['payType'];//0网银 1支付宝 2微信
    $status = $_GET['status'];//支付状态 20 支付成功
    $currency = $_GET['currency'];//货币币种
    $amount = $_GET['amount'];//实际收到的金额
    $md5info = $_GET['md5info'];//订单数字指纹
	
	
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
	
	
	$file  = 'latipay_url_log.txt';//要写入文件的文件名（可以是任意文件名），如果文件不存在，将会创建一个
	
	
    // 验证数字指纹
    if ($sign==$md5info){
        if($status == "20"){
			
			$content = "支付成功";
			
			file_put_contents($file , $content . $log , FILE_APPEND);
			
			
            //支付成功
			//echo '支付成功';exit;
			
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
			
			header("Location: ".HTTP_SERVER."index.php?route=checkout/success");
        }else{
            //支付失败
			echo '支付失败';
			$content = "支付失败";
			
			file_put_contents($file , $content . $log , FILE_APPEND);
        }
    }else{
        //签名错误
		echo '签名错误';
		$content = "签名错误";
			
		file_put_contents($file , $content . $log , FILE_APPEND);
    }