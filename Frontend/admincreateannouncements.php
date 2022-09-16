<?php
    $server="localhost";
    error_reporting(0);
    $username="root";
    $password="";
    $dbname="electricity board payment system";
    $con=mysqli_connect($server,$username,$password,$dbname);
    if(!$con){
        die("failed".mysqli_connect_error());
    }
    $Admin_Id=$_POST['Admin_Id'];
    $Announcement_Content=$_POST['Announcement_Content'];
    $sql = "INSERT INTO announcement_details (`Admin_Id`,current_timestamp(),`Announcement_Content`) VALUES (`$Admin_Id`,current_timestamp(),`$Announcement_Content`);";
    mysqli_query($con,$sql);
    if($con->query($sql) == true){
        echo "inserted";
    }
    else{
        echo "not inserted";
    }
    $con.close();
?>

