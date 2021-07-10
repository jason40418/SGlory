<?php
    header("Content-Type:text/html; charset=utf-8");

    include "../../db.php";

	//檢查連線狀態
	if($connectStatus)
	{
        date_default_timezone_set("Asia/Taipei");
        $date = date("Y-m-d");

        $cupID = $_POST["cupID"];
        $phaseID = $_POST["phaseID"];

        $cupID = "2018-01-SG-inTeam";
        $phaseID = "2018-01-SG-inTeam-round";

        //抓取隊伍資訊
        $sql = "SELECT
                    `teamID`, `teamName_TC`
                FROM
                    `team`
                WHERE
                    `cupID` = :cupID";
    
        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':cupID' => $cupID);
        $query -> execute($parameters);

        $team = $query -> fetchAll(PDO::FETCH_ASSOC);

        //紀錄單隊戰績變數
        $currentTeam = "";
        $currentColor = "R";
        $win = 0;
        $lose = 0;
        $gameWin = 0;
        $gameLose = 0;
        $tempWin = 0;
        $tempLose = 0;
        
        foreach ($team as $key => $value) {
            //抓取單隊賽事資訊
            $sql = "SELECT
                        `ID`, `redTeam`, `blueTeam`
                    FROM
                        `match`
                    WHERE
                        `phaseID` = :phaseID AND (`redTeam` = :redTeam OR `blueTeam` = :blueTeam) AND `status` = 'final'";

            $query = $PDO_Connect -> prepare($sql);
            $parameters = array(':phaseID' => $phaseID,
                                ':redTeam' => $value["teamID"],
                                ':blueTeam' => $value["teamID"]);
            $query -> execute($parameters);
            $record = $query -> fetchAll(PDO::FETCH_ASSOC);

            //紀錄目前處理隊伍
            $currentTeam = $value["teamID"];
            $currentTeamName = $value["teamName_TC"];

            //重設變數
            $win = 0;
            $lose = 0;
            $gameWin = 0;
            $gameLose = 0;
            $tempWin = 0;
            $tempLose = 0;

            foreach($record as $result) {
                
                //確認為何種顏色
                $currentColor = ($currentTeam == $result["redTeam"]) ? "R" : "B";

                $sql = "SELECT 	`result`
                        FROM 	`game`, `ladderMap`
                        WHERE 	`matchID` = :matchID  AND `ladderMap`.`ID` = `game`.`map`";        
                $query = $PDO_Connect -> prepare($sql);
                $parameters = array(':matchID' => $result["ID"]);
                $query -> execute($parameters);
                $data = $query -> fetchAll(PDO::FETCH_ASSOC);

                //統計單場賽事分數
                foreach($data as $standing) {
                    //分析為左（紅）方或右（藍）方隊伍
                    if ($currentColor == "R") {
                        if($standing["result"] == "1_0") {
                            $gameWin++;
                            $tempWin++;
                        }
                        else if($standing["result"] == "0_1") {
                            $gameLose++;
                            $tempLose++;
                        }
                    }
                    else if ($currentColor == "B") {
                        if($standing["result"] == "1_0") {
                            $gameLose++;
                            $tempLose++;
                        }
                        else if($standing["result"] == "0_1") {
                            $gameWin++;
                            $tempWin++;
                        }
                    }
                }
                unset($standing);

                //計入總戰績當中
                if($tempWin > $tempLose)        $win ++;
                else if($tempWin < $tempLose)   $lose ++;
                
                $tempWin = 0;
                $tempLose = 0;
            }
            unset($result);

            $disparity = $gameWin - $gameLose;
            $gamePlay = $win + $lose;
            $returnData[] = array(  'team' => $currentTeam,
                                    'teamName' => $currentTeamName,
                                    'gamePlay' => $gamePlay,
                                    'win' => $win,
                                    'lose' => $lose,
                                    'gameWin' => $gameWin,
                                    'gameLose' => $gameLose,
                                    'disparity' => $disparity);
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