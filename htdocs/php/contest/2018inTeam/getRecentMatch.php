<?php
    header("Content-Type:text/html; charset=utf-8");

    include "../../db.php";

	//檢查連線狀態
	if($connectStatus)
	{
        date_default_timezone_set("Asia/Taipei");
        $date = date("Y-m-d");

        $returnData = array();

        //取得最近一次的比賽ID
        $sql = "SELECT 	    *
				FROM 	    `match`
                WHERE 	    `status` = 'schedule' AND `dateTime` >= :date
                ORDER BY    `dateTime` ASC, `matchNo` ASC";

		$query = $PDO_Connect -> prepare($sql);
		$parameters = array(':date' => $date);
		$query -> execute($parameters);
        $data = $query -> fetchAll(PDO::FETCH_ASSOC);

        foreach($data as $value) {
            $result = array();
            //取得場次和BAN圖資訊
            $gameArray = array();
            $sql = "SELECT 	    `gameNo`, `redTeam`,`redRace`,`blueTeam`,`blueRace`,`name_TC` as `map`,`result`
                    FROM 	    `game`, `ladderMap`
                    WHERE 	    `matchID` = :matchID  AND `ladderMap`.`ID` = `game`.`map`
                    ORDER BY    `gameNo` ASC";        
            $query = $PDO_Connect -> prepare($sql);
            $parameters = array(':matchID' => $value["ID"]);
            $query -> execute($parameters);
            $game_data = $query -> fetchAll(PDO::FETCH_ASSOC);

            $game_array = array();
            foreach($game_data as $row) {
                array_push($game_array, $row);
            }
            unset($row);
            
            $result["match"] = $value;
            $result["gameMatch"] = $game_array;

            array_push($returnData, $result);
        }
        unset($value);
        
        echo json_encode($returnData, JSON_UNESCAPED_UNICODE);
	}
	else
		echo "fail";

	//強制關閉
	$query -> null;

	//關閉資料庫連線
	$PDO_Connect -> null;
    //抓取 賽事當中正在 ready 狀態最近的賽事
?>