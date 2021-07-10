<?php
    header("Content-Type:text/html; charset=utf-8");

    include "../../db.php";

	//檢查連線狀態
	if($connectStatus)
	{
        date_default_timezone_set("Asia/Taipei");
        $date = date("Y-m-d");

        $cupID = "2018-01-SG-inTeam";
        
        $result = array();

        // ### STEP-1 取得隊伍清單
        $sql = "SELECT 	    *
				FROM 	    `team`
                WHERE 	    `cupID` = :ID";

		$query = $PDO_Connect -> prepare($sql);
		$parameters = array(':ID' => $cupID);
		$query -> execute($parameters);
        //紀錄隊伍名稱
        $teamData = $query -> fetchAll(PDO::FETCH_ASSOC);

        foreach($teamData as $teamValue) {
            $team = array();
            $teamInfo = $teamValue;

            //取得隊伍隊員
            $sql = "SELECT 	    `playerName`, `race`, `buildDateTime`
                    FROM 	    `player`
                    WHERE 	    `cupID` = :ID AND `playerClan` = :clanID";

            $query = $PDO_Connect -> prepare($sql);
            $parameters = array(':ID' => $cupID,
                                ':clanID' => $teamValue["teamID"]);
            $query -> execute($parameters);
            //紀錄隊伍名稱
            $playerData = $query -> fetchAll(PDO::FETCH_ASSOC);

            //取得選手資料
            foreach($playerData as $playerValue) {
                $player = $playerValue;
                
                //取得比賽資料
                $sql = "SELECT  
                            `game`.`redTeam`, `game`.`blueTeam`, `game`.`result`
                        FROM
                            `match`, `game`
                        WHERE
                            `match`.`ID` = `game`.`matchID` AND (`game`.`redTeam` = :redTeam OR `game`.`blueTeam` = :blueTeam)";

                $query = $PDO_Connect -> prepare($sql);
                $parameters = array(':redTeam' => $playerValue["playerName"],
                                    ':blueTeam' => $playerValue["playerName"]);
                $query -> execute($parameters);
                //紀錄隊伍名稱
                $recordData = $query -> fetchAll(PDO::FETCH_ASSOC);
                
                $win = 0;
                $lose = 0;
                $state = "W";
                $streak = 0;

                foreach($recordData as $recordValue) {
                    if($recordValue["redTeam"] == $playerValue["playerName"]) {
                        if($recordValue["result"] == "1_0") {
                            //勝利
                            $win++;
                            if($state == "W") {
                                $streak++;
                            }
                            else {
                                $state = "W";
                                $streak = 1;
                            }
                        }
                        else if($recordValue["result"] == "0_1") {
                            //敗戰
                            $lose++;
                            if($state == "L") {
                                $streak++;
                            }
                            else {
                                $state = "L";
                                $streak = 1;
                            }
                        }
                    }
                    else if($recordValue["blueTeam"] == $playerValue["playerName"]) {
                        if($recordValue["result"] == "1_0") {
                            //敗戰
                            $lose++;
                            if($state == "L") {
                                $streak++;
                            }
                            else {
                            //勝利
                                $state = "L";
                                $streak = 1;
                            }
                        }
                        else if($recordValue["result"] == "0_1") {
                            $win++;
                            if($state == "W") {
                                $streak++;
                            }
                            else {
                                $state = "W";
                                $streak = 1;
                            }
                        }
                    }
                }
                unset($recordValue);

                $player["result"] = array(  "Win" => $win,
                                            "Lose" => $lose,
                                            "state" => $state,
                                            "staight" => $streak);
                $team[$playerValue["playerName"]] = $player;
            }
            unset($playerValue);
            
            $result[$teamValue["teamID"]] = array(  "info" => $teamInfo,
                                                    "player" => $team);
        }
        unset($teamValue);

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