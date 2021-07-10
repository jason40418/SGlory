<style>
    body {
    background-color: lightblue;
}
</style>
<?php
    include "db.php";

    function downloadFile() {
        $filename = "//sglory.cf/replayshare/replay/".$_POST["fileID"].".".$_POST["fileExtension"];
        
    	/*header('Pragma: public');
    	header('Expires: 0');
    	header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
        header('Cache-Control: private', false);
    	header('Content-type: application/octet-stream');

    	header('Content-Disposition: attachment; filename="'.basename($filename).'";');
    	header('Content-Transfer-Encoding: binary');
        header('Content-Length: ' . filesize($filename));
        
        readfile($filename);

        exit;*/
        header('Location:'.$filename);
    }

    //將上傳資訊新增到資料庫當中
    $ID = explode('_', $_POST["fileID"]);

    $sql = "SELECT
                *
            FROM
                `ReplayShare`
            WHERE
                `ID` = :ID";

    $query = $PDO_Connect -> prepare($sql);
    $parameters = array(':ID' => $ID["0"]);
    $query -> execute($parameters);
    $data = $query -> fetchAll(PDO::FETCH_ASSOC);

    if( (bool)$data["0"]["privacy"] ) {
        //隱私
        if($_POST["data"] == "sgloryclan") {
            downloadFile();
        }
        else {
            echo "檔案無法下載，您所輸入的帳號密碼錯誤";
        }
    }

    else {
        downloadFile();
    }
?>