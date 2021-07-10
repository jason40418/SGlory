<?php
    include "../../db.php";

	//檢查連線狀態
	if($connectStatus)
	{
        $data = $_POST["data"];

        date_default_timezone_set("Asia/Taipei");
        $dateTime = date('Y-m-d H:i:s', strtotime($data["date"].$data["time"]));

        $cupID = $_POST["cupID"];
        $phaseID = $_POST["phaseID"];

        $cupID = "2018-01-SG-inTeam";
        $phaseID = "2018-01-SG-inTeam-round";
        $matchID = $phaseID."-".$data["gameNo"];

        //新增賽事資訊
        $sql = "INSERT INTO
                    `match`
                VALUES
                    (:ID, :phaseID, :matchNo, :redTeam, :blueTeam, :matchDateTime, :status)";
    
        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':ID' => $matchID,
                            ':phaseID' => $phaseID,
                            ':matchNo' => $data["gameNo"],
                            ':redTeam' => $data["redTeam"],
                            ':blueTeam' => $data["blueTeam"],
                            ':matchDateTime' => $dateTime,
                            ':status' => "schedule");
        $query -> execute($parameters);

        echo $matchID."/".$phaseID."/".$data["gameNo"]."/".$data["redTeam"]."/".$data["blueTeam"]."/".$dateTime."/";

        //新增紅方禁選圖
        $sql = "INSERT INTO
                    `game`(`ID`, `matchID`, `gameNo`, `map`, `result`)
                VALUES
                    (:ID, :matchID, :gameNo, :map, :result)";
    
        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':ID' => $matchID."-BR_1",
                            ':matchID' => $matchID,
                            ':gameNo' => "BR_1",
                            ':map' => $data["red_ban"],
                            ':result' => "BR_1");
        $query -> execute($parameters);

        //新增藍方禁選圖
        $sql = "INSERT INTO
                    `game`(`ID`, `matchID`, `gameNo`, `map`, `result`)
                VALUES
                    (:ID, :matchID, :gameNo, :map, :result)";
    
        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':ID' => $matchID."-BB_1",
                            ':matchID' => $matchID,
                            ':gameNo' => "BB_1",
                            ':map' => $data["blue_ban"],
                            ':result' => "BB_1");
        $query -> execute($parameters);

        //新增回合資訊
        for($i=1 ; $i <=3 ; $i++) {
            $sql = "INSERT INTO
                    `game`(`ID`, `matchID`, `gameNo`, `redTeam`, `redRace`, `blueTeam`, `blueRace`, `map`)
                VALUES
                    (:ID, :matchID, :gameNo, :redTeam, :redRace, :blueTeam, :blueRace, :map)";
    
            $query = $PDO_Connect -> prepare($sql);
            $parameters = array(':ID' => $matchID."-GP_".$i,
                                ':matchID' => $matchID,
                                ':gameNo' => "GP_".$i,
                                ':redTeam' => $data["red_".$i],
                                ':redRace' => $data["red_race_".$i],
                                ':blueTeam' => $data["blue_".$i],
                                ':blueRace' => $data["blue_race_".$i],
                                ':map' => $data["map_".$i]);
            $query -> execute($parameters);
        }

        //新增回合資訊
        for($i=4 ; $i <=5 ; $i++) {
            $sql = "INSERT INTO
                    `game`(`ID`, `matchID`, `gameNo`)
                VALUES
                    (:ID, :matchID, :gameNo)";
    
            $query = $PDO_Connect -> prepare($sql);
            $parameters = array(':ID' => $matchID."-GP_".$i,
                                ':matchID' => $matchID,
                                ':gameNo' => "GP_".$i);
            $query -> execute($parameters);
        }

	}
	else
		echo "fail";

	//強制關閉
	$query -> null;

	//關閉資料庫連線
	$PDO_Connect -> null;
?>