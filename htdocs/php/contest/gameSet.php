<?php
    include "../db.php";

	//檢查連線狀態
	if($connectStatus)
	{
        date_default_timezone_set("Asia/Taipei");
        $date = date("Y-m-d");

        $ID = $_POST["ID"];
        $cupID = $_POST["cupID"];

        $sql = "UPDATE	`match`
                SET	    `status` = :status
                WHERE 	`ID` = :matchID";
    
        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':matchID' => $ID,
                            ':status' => "LiveEnd");
        $query -> execute($parameters);
	}
	else
		echo "fail";

	//強制關閉
	$query -> null;

	//關閉資料庫連線
	$PDO_Connect -> null;
    //抓取 賽事當中正在 ready 狀態最近的賽事
?>