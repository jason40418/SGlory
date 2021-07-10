<?php
	header("Access-Control-Allow-Origin: *");

	//連接資料庫資訊
	define('DB_TYPE' , 'mysql');
	define('DB_HOST' , 'sql301.unaux.com');
	define('DB_NAME' , 'unaux_21450381_sglory');
	define('DB_USER' , 'unaux_21450381');
	define('DB_PASSWORD' , 'SGlory2018');
	define('DB_CHARSET' , 'utf8');

 	//連接資料庫	
	try {
		$PDO_Connect = new PDO(DB_TYPE . ':host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=' . DB_CHARSET , DB_USER , DB_PASSWORD);
		$PDO_Connect -> exec("set names utf8");
		
		$PDO_Connect -> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
		$PDO_Connect -> setAttribute(PDO::ATTR_ERRMODE , PDO::ERRMODE_EXCEPTION);
		
        $connectStatus = true;
	} catch(PDOException $e) {
		$connectStatus = false;
		
		##印出資料庫連線錯誤訊息
		//die("Connection failed: ".$e->getMessage()."\n");
	}
?>