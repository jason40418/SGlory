<?php
    // Expires in the past
    header("Expires: Mon, 26 Jul 1990 05:00:00 GMT");
    // Always modified
    header("Last-Modified: ".gmdate("D, d M Y H:i:s")." GMT");
    // HTTP/1.1
    header("Cache-Control: no-store, no-cache, must-revalidate");
    header("Cache-Control: post-check=0, pre-check=0", false);
    // HTTP/1.0
    header("Pragma: no-cache");

	include_once("global_function.php");
    include_once("xpath.php");

	$rawData = getFromPage("http://www.rankedftw.com/clan/SGlory/mmr/","//table/tr/td");
	$dataArray = explode("\n", $rawData);
	$profile_array = removeEmpty($dataArray);
	
	$rawData = getFromPage("http://www.rankedftw.com/clan/SGlory/mmr/","//table/tr/td/img[@class='league']/@src");
	$dataArray = explode("\n", $rawData);
	$league_array = removeEmpty($dataArray);

	$league = array();
	foreach($league_array as $key => $arr) { 
		if($arr === '') { 
			unset($league_array[$key]); 
		}
		$temp = explode("/", $arr);
		$temp = explode("-", $temp[5]);
	
		array_push($league, $temp[0]);
    }

    $rawData = getFromPage("http://www.rankedftw.com/clan/SGlory/mmr/","//table/tr/td/img[@class='race']/@src");
	$dataArray = explode("\n", $rawData);
	$race_array = removeEmpty($dataArray);

	$race = array();
	foreach($race_array as $key => $arr) { 
		if($arr === '') { 
			unset($race_array[$key]); 
		}
		$temp = explode("/", $arr);
		$temp = explode("-", $temp[5]);
	
		array_push($race, $temp[0]);
    }
    
    $i = 0;
	$result = array();
	while($i < (count($profile_array)/10) ) {
		$rank = $profile_array[$i * 10 + 0];
        $currLeague = $league[$i];
		$tier = $profile_array[$i * 10 + 1];
		$name = $profile_array[$i * 10 + 2];
		$mmr = $profile_array[$i * 10 + 3];
		$points = $profile_array[$i * 10 + 4];
		$wins = $profile_array[$i * 10 + 5];
		$losses = $profile_array[$i * 10 + 6];
		$played = $profile_array[$i * 10 + 7];
		$win_rate = $profile_array[$i * 10 + 8];
        $age = $profile_array[$i * 10 + 9];
        $currRace = $race[$i];

		$arr = array(	'rank' => $rank,
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