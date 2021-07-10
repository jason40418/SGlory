<?php
    include "../../db.php";

	//檢查連線狀態
	if($connectStatus)
	{
        date_default_timezone_set("Asia/Taipei");
        $date = date("Y-m-d");

        $cupID = "2018-01-SG-inTeam";
        
        $result = array();

        // ### STEP-1 取得隊伍清單
        $sql = "SELECT 	    `key`, `value`, `memo`
				FROM 	    `broadcastSetting`
                WHERE 	    `cupID` = :ID";

		$query = $PDO_Connect -> prepare($sql);
		$parameters = array(':ID' => $cupID);
		$query -> execute($parameters);
        //紀錄隊伍名稱
        $result = $query -> fetchAll(PDO::FETCH_ASSOC);

        // ### STEP-2
        echo json_encode($result, JSON_UNESCAPED_UNICODE);
	}
	else
		echo "fail";

	//強制關閉
	$query -> null;

	//關閉資料庫連線
	$PDO_Connect -> null;
    //抓取 賽事當中正在 ready 狀態最近的賽事
?>