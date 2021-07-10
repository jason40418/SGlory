<?php
    include "../db.php";

	//檢查連線狀態
	if($connectStatus)
	{
        date_default_timezone_set("Asia/Taipei");
        $date = date("Y-m-d");

        //取得最近一次的比賽ID
        $sql = "SELECT 	    *
				FROM 	    `match`, `team`
                WHERE 	    `status` = 'schedule' AND `dateTime` >= :date
                ORDER BY    `dateTime` ASC";
		$query = $PDO_Connect -> prepare($sql);
		$parameters = array(':date' => $date);
		$query -> execute($parameters);
        $data = $query -> fetch();
        
        $matchID = $data[0];

        //取得場次和BAN圖資訊
        $gameArray = array();
        $sql = "SELECT 	    `gameNo`, `redTeam`,`redRace`,`blueTeam`,`blueRace`,`name_TC` as `map`,`result`
				FROM 	    `game`, `ladderMap`
                WHERE 	    `matchID` = :matchID  AND `ladderMap`.`ID` = `game`.`map`
                ORDER BY    `gameNo` ASC";        
        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':matchID' => $matchID);
        $query -> execute($parameters);
        $data = $query -> fetchAll(PDO::FETCH_ASSOC);

        $game_array = array();
        foreach($data as $row) {
            array_push($game_array, $row);
        }
        
        //取得盃賽資訊
        $sql = "SELECT  * 
                FROM    `cup` , `phase` , `match` 
                WHERE   `cup`.`cupID` =  `phase`.`cupID` AND `match`.`phaseID` =  `phase`.`ID` AND `match`.`ID` = :matchID";
        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':matchID' => $matchID);
        $query -> execute($parameters);
        $data = $query -> fetchAll(PDO::FETCH_ASSOC);
        
        $match_array = array();
        foreach($data as $row) {
            $match_array['cup_data'] = $row;
        }
        
        $match_array['game_data'] = $game_array;
        
        echo json_encode($match_array, JSON_UNESCAPED_UNICODE);
	}
	else
		echo "fail";

	//強制關閉
	$query -> null;

	//關閉資料庫連線
	$PDO_Connect -> null;
    //抓取 賽事當中正在 ready 狀態最近的賽事
?>