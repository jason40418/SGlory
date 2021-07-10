<?php
    header("Content-Type:text/html; charset=utf-8");

    include "../../db.php";

    function _pushData(&$array, $data) {
        array_push($array, $data);
    }

    function _getTeam($cupID) {
        global $PDO_Connect;

        $sql = "SELECT
                    *
				FROM
                    `team`
                WHERE
                    `cupID` = :ID";

		$query = $PDO_Connect -> prepare($sql);
		$parameters = array(':ID' => $cupID);
        $query -> execute($parameters);
        
        $data = $query -> fetchAll(PDO::FETCH_ASSOC);

        return $data;
    }

    function _getTeamPlayer($cupID, $teamID) {
        global $PDO_Connect;

        //取得隊伍隊員
        $sql = "SELECT
                    `playerID`, `playerName`, `race`, `buildDateTime`
                FROM
                    `player`
                WHERE
                    `cupID` = :ID AND `playerClan` = :clanID AND `state` = :state";

        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':ID' => $cupID,
                            ':clanID' => $teamID,
                            ':state' => "active");
        $query -> execute($parameters);
        $data = $query -> fetchAll(PDO::FETCH_ASSOC);

        return $data;
    }

    function _getFullName($cupID, $playerID) {
        global $PDO_Connect;

        //取得隊伍隊員
        $sql = "SELECT
                    `oldName`
                FROM
                    `rename`
                WHERE
                    `cupID` = :cupID AND `playerID` = :playerID";

        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':cupID' => $cupID,
                            ':playerID' => $playerID);
        $query -> execute($parameters);
        $data = $query -> fetchAll(PDO::FETCH_ASSOC);

        return $data;
    }

    function _getGameData($cupID, $playerName) {
        global $PDO_Connect;

        $sql = "SELECT  
                    `game`.`redTeam`, `game`.`blueTeam`, `game`.`result`
                FROM
                    `match`, `game`
                WHERE
                    `match`.`ID` = `game`.`matchID` AND (`game`.`redTeam` = :redTeam OR `game`.`blueTeam` = :blueTeam)";

        $query = $PDO_Connect -> prepare($sql);
        $parameters = array(':redTeam' => $playerName,
                            ':blueTeam' => $playerName);
        $query -> execute($parameters);

        $data = $query -> fetchAll(PDO::FETCH_ASSOC);

        return (array)$data;
    }

    function _calculate(&$win, &$lose, &$state, &$streak, $recordValue, $player) {
        if($recordValue["redTeam"] == $player) {
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
        else if($recordValue["blueTeam"] == $player) {
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

	//檢查連線狀態
	if($connectStatus)
	{
        date_default_timezone_set("Asia/Taipei");
        $date = date("Y-m-d");

        $cupID = "2018-01-SG-inTeam";
        
        $result = array();

        //取得隊伍資料
        $teamData = _getTeam($cupID);

        foreach($teamData as $teamValue) {
            $team = array();
            $teamInfo = $teamValue;

            $playerData = _getTeamPlayer($cupID, $teamValue["teamID"]);

            foreach($playerData as $playerValue) {
                $player = $playerValue;

                //記錄勝敗關係
                $win = 0;
                $lose = 0;
                $state = "W";
                $streak = 0;

                $fullName = _getFullName($cupID, $playerValue["playerID"]);
                
                //目前名稱
                $currName = $playerValue["playerName"];

                $gameData = array();
                

                foreach($fullName as $nameValue) {
                    $tempGameData = _getGameData($cupID, $nameValue["oldName"]);

                    foreach($tempGameData as $gameResult) {
                        _calculate($win, $lose, $state, $streak, $gameResult, $nameValue["oldName"]);
                    }
                    unset($gameResult);
                }

                foreach(_getGameData($cupID, $currName) as $gameResult) {
                    _calculate($win, $lose, $state, $streak, $gameResult, $currName);
                }
                unset($gameResult);

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