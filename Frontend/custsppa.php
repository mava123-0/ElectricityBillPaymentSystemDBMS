<?php
$server="localhost";
$username="root";
$password="";
$dbname="electricity board payment system";
$con=mysqli_connect($server,$username,$password,$dbname);
if(!$con){
    die("fialed".mysqli_connect_error());
}
if(!empty($_POST['sppa_submit'])){
    $sppaform_custid=$_POST['sppaform_custid'];
    $Units_Generated=$_POST['sppaform_supplyno'];
    $sql="INSERT INTO sppa_details ('Units_Generated','sppaform_supplyno') VALUES ('$Units_Generated','$sppaform_supplyno')";
    mysqli_query($con,$sql);
    $con.close();
}
?>