<?php
    include "db.php";

	//檢查連線狀態
	if($connectStatus)
	{
        date_default_timezone_set("Asia/Taipei");
        $date = date("Y-m-d");
        $result = array();
        
        $ID = $_POST["ID"];

        //取得RP資訊
        $sql = "SELECT	*
                FROM	`ReplayShare`
                WHERE   `ID` = :ID";
        
        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':ID' => $ID);
        $query -> execute($parameters);
        $data = $query -> fetchAll(PDO::FETCH_ASSOC);

        foreach($data as $row) {
            $result["info"] = $row;
        }

        //取得下載資訊
        //取得RP資訊
        $sql = "SELECT	*
                FROM	`ReplayShareDoc`
                WHERE   `replayshareID` = :ID";
        
        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':ID' => $ID);
        $query -> execute($parameters);
        $data = $query -> fetchAll(PDO::FETCH_ASSOC);

        $link_array = array();
        foreach($data as $row) {
            array_push($link_array, $row);
        }
        $result["link"] = $link_array;
        
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