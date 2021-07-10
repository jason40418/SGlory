<?php
    include "../db.php";

	//檢查連線狀態
	if($connectStatus)
	{
        date_default_timezone_set("Asia/Taipei");
        $date = date("Y-m-d");

        $ID = $_POST["ID"];
        $cupID = $_POST["cupID"];
        $data = $_POST["data"];

        foreach ($data as $key => $value) {
            $key = (string)$key + 1;
            $game = "GP_".$key;

            $sql = "SELECT	`ID`
                    FROM	`ladderMap`
                    WHERE 	`name_TC` = :map";
            $query = $PDO_Connect -> prepare($sql);
            $parameters = array(':map' => $value["map"]);
            $query -> execute($parameters);
            $player_data = $query -> fetch();
            $map = $player_data[0];
            

            $sql = "UPDATE	`game`
                    SET	    `redTeam` = :redTeam,
                            `redRace` = :redRace,
                            `blueTeam` = :blueTeam,
                            `blueRace` = :blueRace,
                            `map` = :map,
                            `result` = :result
                    WHERE 	`matchID` = :matchID AND gameNo = :gameNo";
        
            $query = $PDO_Connect -> prepare($sql);
            $parameters = array(':matchID' => $ID,
                                ':gameNo' => $game,
                                ':redTeam' => $value["red"],
                                ':redRace' => $value["redRace"],
                                ':blueTeam' => $value["blue"],
                                ':blueRace' => $value["blueRace"],
                                ':map' => $map,
                                ':result' => $value["result"]);
            $query -> execute($parameters);
        }
	}
	else
		echo "fail";

	//強制關閉
	$query -> null;

	//關閉資料庫連線
	$PDO_Connect -> null;
    //抓取 賽事當中正在 ready 狀態最近的賽事
?>