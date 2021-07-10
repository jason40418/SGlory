<?php
	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;

	require 'vendor/PHPMailer/Exception.php';
	require 'vendor/PHPMailer/PHPMailer.php';
	require 'vendor/PHPMailer/SMTP.php';
	
	//Create a new PHPMailer instance
	$mail = new PHPMailer;
	//Tell PHPMailer to use SMTP
	$mail->isSMTP();
	//Enable SMTP debugging
	// 0 = off (for production use)
	// 1 = client messages
	// 2 = client and server messages
	$mail->SMTPDebug = 2;
	//Set the hostname of the mail server
	$mail->Host = 'smtp.elasticemail.com';
	//Set the SMTP port number - likely to be 25, 465 or 587
	$mail->Port = 587;
	//Whether to use SMTP authentication
	$mail->SMTPAuth = true;
	//Username to use for SMTP authentication
	$mail->Username = '';
	//Password to use for SMTP authentication
	$mail->Password = '';
	//Set who the message is to be sent from 
	$mail->setFrom('support@posking.cf', 'POS King 系統回復');
	//Set an alternative reply-to address
	$mail->addReplyTo('admin@posking.cf', 'First Last');
	//Set who the message is to be sent to
	$mail->addAddress('jason40418@gmail.com', 'John Doe');
	// 設定字數段行
	$mail->WordWrap = 50;
	// 設定信件字元編碼(預設:utf-8，PS:一般收信軟體都是以當地語系為主，如果使用utf-8格式可能會有亂碼的現象)
	$mail->CharSet = "utf-8";
	//設定信件編碼，大部分郵件工具都支援此編碼方式
	$mail->Encoding = "base64";
	//Set the subject line
	$mail->Subject = 'PHPMailer SMTP test';
	//Read an HTML message body from an external file, convert referenced images to embedded,
	//convert HTML into a basic plain-text alternative body
	//$mail->msgHTML(file_get_contents('contents.html'), __DIR__);
	//Replace the plain text body with one created manually
	$mail->Body    = 'This is the HTML message body <b>in bold!</b>';
	$mail->AltBody = 'This is a plain-text message body';
	//Attach an image file
	//$mail->addAttachment('images/phpmailer_mini.png');
	//send the message, check for errors
	if (!$mail->send()) {
		echo 'Mailer Error: ' . $mail->ErrorInfo;
	} else {
		echo 'Message sent!';
	}
?>