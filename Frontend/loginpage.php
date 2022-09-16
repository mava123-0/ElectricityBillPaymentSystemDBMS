<?php
    $server="localhost";
    $username="root";
    $password="";
    $dbname="electricity board payment system";
    $con=mysqli_connect($server,$username,$password,$dbname);
    if(!$con){
        die("fialed".mysqli_connect_error());
    }
    if(!empty($_POST['login_submit'])){
    $Phone_No=$_POST['login_phone'];
    $L_Password=$_POST['login_pwd'];
    $radioVal=$_POST['login_choose'];
    $query="select * from user_login where Phone_No='$Phone_No' and Password='$L_Password'";
    $result=mysqli_query($con,$query);
    $count=mysqli_num_rows($result);
    if($count>0){
        if($radioVal == "Admin"){
        header("Location: adminHomePage.html");
        exit();
        }
        if($radioVal == "Customer"){
            header("Location: custhomepage.html");
            exit();
        }
    }
    else{
        echo '<script>alert("Invalid Credentials")</script>';
    }
}
?>

<html>
<body>
    <style>
    body{
        margin: 0;
        background-color: #caebf2 ;
    }
    .text 
    {
        position: absolute;
        font-size: 25px;
        font-family: helvatica;
        text-align: center;
        top: 15%;
        left: 20%;
        color: black;
        padding-left:200px;
        padding-right: 200px;
        padding-bottom: 20px;
        border-radius: 35px;
        border-style: solid;
        border-width: 4px;
        background-color: #efefef  ;
        
    }

    .btn{
        background-color: rgb(129, 152, 153);
        width: 10%;
        height: 15%;
        color:black;
        font-size: 16px;
    }
    #textbox{
     height: 30px  ;
     font-size: 20px;
    }
    </style>
<div >
<div class="text">

    <form method="POST">
<h2>ELECTRICITY BOARD</h2>

Phone Number:
<input type="text" placeholder="Enter Phone Number" name="login_phone" required/> 

<br>
Password:
<input type="password" placeholder="Enter Password Here"  name="login_pwd" required/><br>
<br>
<INPUT TYPE="radio" id="admin_radio" value="Admin" name="login_choose">
    <label>Admin</label>
<INPUT TYPE="radio" id="cust_radio" value="Customer" name="login_choose" required/>
    <label>Customer</label><br>
<input type="submit"  value="LOGIN" name="login_submit"><br>

<div style="font-size: 20px;">
<p>Not Registered? <a href="registerpage.html" style="color: black;" >Click Here</a></p><br>
 <a href="resetpassword.html" style="color:black;">Reset Password</a>
</div>
 

</form>
</div>
</div>
</body>
</html>
