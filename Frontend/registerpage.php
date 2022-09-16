<?php

if(!empty($_POST['Cust_Fname'])){
    echo "Php";
    $server="localhost";
    $username="root";
    $password="";
    $dbname="electricity board payment system";
    $con=mysqli_connect($server,$username,$password,$dbname);
    if(!$con){
        die("fialed".mysqli_connect_error());
    }

    $Cust_Fname=$_POST['Cust_Fname'];
    $Cust_Lname=$_POST['Cust_Lname'];
    $Aadhar_No=$_POST['Aadhar_No'];
    $Dob=$_POST['Dob'];
    $House_No=$_POST['House_No'];
    $Street_Name=$_POST['Street_Name'];
    $Pincode=$_POST['Pincode'];
    $Phone_No=$_POST['Phone_No'];
    $City=$_POST['City'];
    $State=$_POST['State'];
    $Meter_No=$_POST['Meter_No'];
    $Meter_Reading=$_POST['Meter_Reading'];
    $User_Category=$_POST['User_Category'];
    $Card_No=$_POST['Card_No'];
    $CVV=$_POST['CVV'];
    $Expiry_Date=$_POST['Expiry_Date'];
    $Upi_Id=$_POST['Upi_Id'];
    $Mobile_No=$_POST['Mobile_No'];
    $Supply_No=$_POST['Supply_No'];
    $Units_Generated=$_POST['Units_Generated'];
    $SecQn1=$_POST['SecQn1'];
    $SecQn2=$_POST['SecQn2'];
    $SecQn3=$_POST['SecQn3'];
    $Password=$_POST['Password'];


    $sql1 = "INSERT INTO  customer_details VALUES ( '$Aadhar_No', '$Cust_Fname', '$Cust_Lname', '$Dob', '$House_No', '$Street_Name'
    , '$Pincode')";
    $sql2 = "INSERT INTO  user_login VALUES ( '$Phone_No'  ,  '$Password' ,  '$SecQn1' ,  '$SecQn2' , '$SecQn3')";
    $sql3 = "INSERT INTO   region VALUES ( '$Pincode'  ,  '$City' ,  '$State')";
    $sql4 = "INSERT INTO   meter_details VALUES ( '$Meter_No'  ,  '$Meter_Reading' )";
    $sql6 = "INSERT INTO   sppa_details VALUES 
    ( '$Supply_No'  , current_timestamp() ,  '$Units_Generated')";
    $sql7 = "INSERT INTO  upi_details VALUES ( '$Upi_Id' ,  '$Mobile_No'  ,  '$Cust_Id')";
    $sql8 = "INSERT INTO   card_details VALUES ( '$Card_No' ,  '$CVV' ,  '$Expiry_Date', '$Cust_Id')";
    $sql5 = "INSERT INTO   customer VALUES (  '$Phone_No' ,  '$Aadhar_No' ,  '$Meter_No ' ,  '$Supply_No' ,  '$User_Category',  '$Connection_Status')";
    
    if($con->query($sql2)==true && $con->query($sql3)==true && $con->query($sql4)==true && $con->query($sql6)==true && $con->query($sql1)==true &&  $con->query($sql5)==true && $con->query($sql7)==true && $con->query($sql8)==true ){
        echo "success sql2";
    }
    else{
        echo "Error: $sql1 <br> $conn->error";
    }
    $con->close();
}  
?>
