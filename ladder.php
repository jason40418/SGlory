<?php
    function removeEmpty($array) {
        $trimmed_array = array_map('trim', $array);

        foreach($trimmed_array as $key => $arr) {
            if($arr === '') {
                unset($trimmed_array[$key]);
            }
        }

        $trimmed_array = array_values($trimmed_array);
        return $trimmed_array;
    }

    function obj_to_array($data, $type) {
        $array = array();

        foreach ($data as $i => $node) {
            if($node->nodeValue != "") {
                $data = $node->nodeValue;

                if($type == "league" || $type == "race") {
                    $temp = explode("/", $data);
                    $temp = explode("-", $temp[5]);
                    $data = $temp[0];
                }

                array_push($array, $data);
            }
        }

        return (array)$array;
    }

    /* Use internal libxml errors -- turn on in production, off for debugging */
    libxml_use_internal_errors(true);
    /* Createa a new DomDocument object */
    $dom = new DomDocument;
    /* Load the HTML */
    $dom -> loadHTMLFile("http://www.rankedftw.com/clan/SGlory/mmr/");
    /* Create a new XPath object */
    $xpath = new DomXPath($dom);

    //取得選手名稱
    $player_name_raw = $xpath -> query("//table/tr/td/span[@class='name']");
    $player_name = obj_to_array($player_name_raw, "");

    //取得選手資料
    $player_info_raw = $xpath -> query("//table/tr/td[@class='number']");
    $player_info = obj_to_array($player_info_raw, "");

    //取得選手所屬聯賽
    $player_league_raw = $xpath -> query("//table/tr/td/img[@class='league']/@src");
    $player_league = obj_to_array($player_league_raw, "league");

    //取得選手階級
    $player_tier_raw = $xpath -> query("//table/tr/td[@class='img']");
    $player_tier = obj_to_array($player_tier_raw, "");

    //取得選手種族
    $player_race_raw = $xpath -> query("//table/tr/td/img[@class='race']/@src");
    $player_race = obj_to_array($player_race_raw, "race");

    $i = 0;
    $result = array();
    while($i < (count($player_info)/8) ) {
        $name = $player_name[$i];
        $tier = $player_tier[$i];
        $currLeague = $player_league[$i];
        $currRace = $player_race[$i];

        $rank = $player_info[$i * 8 + 0];
        $mmr = $player_info[$i * 8 + 1];
        $points = $player_info[$i * 8 + 2];
        $wins = $player_info[$i * 8 + 3];
        $losses = $player_info[$i * 8 + 4];
        $played = $player_info[$i * 8 + 5];
        $win_rate = $player_info[$i * 8 + 6];
        $age = $player_info[$i * 8 + 7];


        $arr = array('rank' => $rank,
                     'name' => $name,
                     'league' => $currLeague,
                     'tier' => $tier,
                     'mmr' => $mmr,
                     'points' => $points,
                     'wins' => $wins,
                     'losses' => $losses,
                     'played' => $played,
                     'win_rate' => $win_rate,
                     'age' => $age,
                     'race' => $currRace);

        $result[$i] = $arr;
        $i++;
    }

    echo json_encode($result, JSON_UNESCAPED_UNICODE);
?>