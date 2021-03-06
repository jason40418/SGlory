<?php
    include "../db.php";

	//檢查連線狀態
	if($connectStatus)
	{
        date_default_timezone_set("Asia/Taipei");
        $date = date("Y-m-d");

        $ID = $_POST["ID"];
        
        //取得盃賽資訊
        $sql = "SELECT	`ladderMap`.`ID` AS `ID`, `ladderMap`.`name_TC` AS `TC`
                FROM	`ladderMap`
                WHERE 	`ladderMap`.`seasonID` = :ID";
        
        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':ID' => $ID);
        $query -> execute($parameters);
        $data = $query -> fetchAll(PDO::FETCH_ASSOC);
        
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
	}
	else
		echo "fail";

	//強制關閉
	$query -> null;

	//關閉資料庫連線
	$PDO_Connect -> null;
    //抓取 賽事當中正在 ready 狀態最近的賽事
?>