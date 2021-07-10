<?php
    function _generateID($prefixes) {
        //設定日期和時區
        date_default_timezone_set("Asia/Taipei");
        $dateID = date("YmdHis");

        //資料庫日期格式
        $date = date("Y-m-d H:i:s");

        //產生隨機碼，並向左補零到三位數
        $random = rand(0,999);
        $value = str_pad($random, 3, '0', STR_PAD_LEFT);

        //數字轉字串
        $strRandom = sprintf("%s" , $value);
        $ID = "$prefixes"."-"."$dateID"."$strRandom";

        //回傳結果
        return $ID;
    }

    function _getDateTime() {
        //設定日期和時區
        date_default_timezone_set("Asia/Taipei");
        $dateID = date("YmdHis");

        //資料庫日期格式
        $date = date("Y-m-d H:i:s");

        return $date;
    }
?>