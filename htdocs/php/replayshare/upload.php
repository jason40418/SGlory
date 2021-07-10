<?php
    header("Content-Type: text/html; charset=utf-8");

    include "db.php";
    include "../_globalFunction.php";

    // Check if the form was submitted
    if($_SERVER["REQUEST_METHOD"] == "POST") {
        // Check if file was uploaded without errors
        if(isset($_FILES["file"]) && $_FILES["file"]["error"] == 0){
            $allowed = array("SC2Replay" => "application/octet-stream",);
            $filename = $_FILES["file"]["name"];
            $filetype = $_FILES["file"]["type"];
            $filesize = $_FILES["file"]["size"];
        
            // Verify file extension
            $ext = pathinfo($filename, PATHINFO_EXTENSION);
            if(!array_key_exists($ext, $allowed)) die("Error: Please select a valid file format.");
        
            // Verify file size - 5MB maximum
            $maxsize = 5 * 1024 * 1024;
            if($filesize > $maxsize) die("Error: File size is larger than the allowed limit.");
        
            // Verify MYME type of the file
            if(in_array($filetype, $allowed)){
                // Check whether file exists before uploading it
                if(file_exists("../../replayshare/replay/" . $_FILES["file"]["name"])) {
                    echo $_FILES["file"]["name"] . " is already exists.";
                }
                
                else {
                    //驗證上傳授權碼
                    if($_POST["authorizer"] == "sgloryclan") {
                        $ID = _generateID("RP");
                        $docID = $ID."_1";
                        $docName = $docID.".".$ext;
                        $datetime = _getDateTime();

                        move_uploaded_file($_FILES["file"]["tmp_name"], "../../replayshare/replay/" . $docName);

                        //將上傳資訊新增到資料庫當中
                        $sql = "INSERT INTO
                                    `ReplayShare`
                                VALUES
                                    (:ID, :upDateTime, :sharer, :gameVersion, :combination, :title, :memo, :privacy)";
                    
                        $query = $PDO_Connect -> prepare($sql);
                        $parameters = array(':ID' => $ID,
                                            ':upDateTime' => $datetime,
                                            ':sharer' => $_POST["sharer"],
                                            ':gameVersion' => $_POST["version"],
                                            ':combination' => $_POST["race"],
                                            ':title' => $_POST["name"], 
                                            ':memo' => $_POST["memo"],
                                            ':privacy' => $_POST["privacy"]);
                        $query -> execute($parameters);

                        //將上傳資訊新增到資料庫當中
                        $sql = "INSERT INTO
                                    `ReplayShareDoc`
                                VALUES
                                    (:docID, :replayshareID, :upDateTime, :title, :fileNameExtension, :memo)";
                    
                        $query = $PDO_Connect -> prepare($sql);
                        $parameters = array(':docID' => $docID,
                                            ':replayshareID' => $ID,
                                            ':upDateTime' => $datetime,
                                            ':title' => $_FILES["file"]["name"],
                                            ':fileNameExtension' => $ext, 
                                            ':memo' => "");
                        $query -> execute($parameters);

                        echo "success";
                    }

                    else
                        echo "unauthorizer";
                } 
            }
            else {
                echo "Error: There was a problem uploading your file. Please try again."; 
            }
        }
        
        else {
            echo "Error: " . $_FILES["file"]["error"];
        }
    }
?>