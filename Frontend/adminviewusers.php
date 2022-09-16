<!DOCTYPE html>
<html lang="en">

<head>
    <script>function onFocus(input)
        {
            input.style.background="cyan";
            
            
        }
        function onBlur(input){
            input.style.background="white";
        }
        function validate(){
            var fstname =document.getElementById("fname").value;
            
           
            
            if(fstname == "")
            {
                //fstname.style.border.input='solid 3px red';
                window.alert('Please Enter your  ID');
                document.getElementById("lblfname").style.visibility='visible';
                return false;
            }
            
           
            else{
                true;
            }

            
        }
     
        function changeCursor(){
            
            document.getElementById("submit").style.cursor = "pointer";
            document.getElementById("reset").style.cursor = "pointer";
        }</script>
    <meta charset="UTF-8" />
    
    <title>View users</title>
    <style type = "text/css" media = "screen">
        .container {
            margin: 0px;
            text-align: center;
            border-style: solid;
            border-width: 2px;
            border-spacing: 10px;
            
        }
        
        .heading {
            color: aqua;
            font-size: 30px;
            
        }
        
        .success {
            font-size: 20px;
            
        }
        
        h2 {
            color: red;
            font-size: 20px;
        }
        
        .footer {
            margin-top: 0px;
            background-color: rgb(150, 128, 128);
            text-align: center;
            color: white;
            padding: 8px;
          
        }
        

            ::placeholder {
            color:pink;
            opacity: 1; 
        }
        .survey {
            text-align: center;
            font-weight: bold;
            font-size: 30px;
            
        }
        input {
           
           padding: 12px 20px;
           margin: 8px 0;
           box-sizing: border-box;
                     border: 2px solid pink;
                     border-radius: 4px;
                   }
                   table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
.board_head{
        border:solid;
        border-radius: 10px;
        margin-left: 33%;
        margin-right: 33%;
        padding: 10px 10 10 10;
    }

    .navbar{
        background-color: #efefef;  
        border-radius: 30px;
    }
    .navbar ul{
        overflow:auto;
    }
    .navbar li{
        float:left;
        list-style: none;
        font-size: 20px;
        margin: 10px 4px 10px 0px;
    }
    .navbar li a{
        padding:0px 20px;
        text-decoration: none;
        color:black;
    }
    .navbar li a:hover {
        color: red;
    }  
    </style>
</head>

<body style="background-color: #caebf2;" >
    <center><h1 class="board_head" style="margin-top: 1%;">Electricity Board Web Services</h2></center>

        <header>
          <nav class="navbar" style="margin-top: 1%;">
          <ul>
            <li><a href="adminHomePage.html">Home</a></li>
            <li><a href="adminprofile.html">Profile</a></li>
            <li><a href="admincreatebill.html">Create Bills</a></li>
            <li><a href="admincreatereceipt.html">Create Reciepts</a></li>
            <li><a href="xxx">View Bills</a></li>
            <li><a href="adminviewusers.PHP"> View Users</a></li>
            <li><a href="admincreateannouncements.html">Announcements</a></li>
            <li><a href="xxxxxxx">View Feedback</a></li>
            <li><a href="adminaboutpage.html">About</a></li></div>
          </ul>
          </nav>
      </header>
           <center>
   
    
    <div class="forms">
    <form onsubmit="return validate();" style="text-align: left;" ><br>
    <table border="0"  cellspacing="80" cellpadding="10" style="background-color: azure; align-content: center;" align="center" >
        <tr>
            <th>Phone Number</th>
            <th>Password</th>
            <th>Security Qn1</th>      
            <th>Security Qn2</th>    
            <th>Security Qn3</th>    
            <th>User Type</th>        
        </tr>
        
        
    </form></div>
    
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
    $query="SELECT * FROM user_login";
    $data=mysqli_query($con,$query);
    $total = mysqli_num_rows($data);

    echo $result['Phone_No']." ".$result['Password']." ".$result['SecQn1']." ".$result['SecQn2']." ".$result['SecQn3']." ".$result['User_Type'];

    if($total!=0){
        $result = mysqli_fetch_assoc($data);
        while(($result=mysqli_fetch_assoc($data))){
            echo "
            <tr>
            <td>".$result['Phone_No']."</td>
            <td>".$result['Password']."</td>
            <td>".$result['SecQn1']."</td>
            <td>".$result['SecQn2']."</td>
            <td>".$result['SecQn3']."</td>
            <td>".$result['User_Type']."</td>
            ";
        }
    }
    else{
        echo "No records found";
    }
?>
</table>

</body>

</html>
