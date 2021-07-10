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
?>