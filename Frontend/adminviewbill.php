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
    
    <title>View Bill</title>
    <style type = "text/css" media = "screen">
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
        margin: 13px 20px;
    }
    .navbar li a{
        padding:20px 24px;
        text-decoration: none;
        color:black;
    }
    .navbar li a:hover {
        color: red;
    }
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
                   table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
.board_head{
        border:solid;
        border-radius: 10px;
        margin-left: 35%;
        margin-right: 31%;
        padding: 10px 10px 10px 10px;
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
        margin: 13px 18px;
    }
    .navbar li a{
        padding:20px 10px;
        text-decoration: none;
        color:black;
    }
    .navbar li a:hover {
        color: red;
    }
    .bill_details{
        margin-top: 2%;
        margin-left: 26.5%;
        margin-right: 26.5%;
        border:solid;
        border-width: 2px;
        padding:40px 10px 20px 30px;
        background-color: azure;
        align-content: center;
    }
    </style>
</head>

<body style="background-color: #caebf2;">
    <center><h1 class="board_head">Electricity Board Web Services</h2></center>
    <header>
          <nav class="navbar" style="margin-top: 1%;">
          <ul>
            <li><a href="adminHomePage.html">Home</a></li>
            <li><a href="adminprofile.html">Profile</a></li>
            <li><a href="admincreatebill.html">Create Bills</a></li>
            <li><a href="admincreatereceipt.html">Create Reciepts</a></li>
            <li><a href="adminviewbill.php">View Bills</a></li>
            <li><a href="adminviewusers.PHP"> View Users</a></li>
            <li><a href="admincreateannouncements.html">Announcements</a></li>
            <li><a href="xxxxxxx">View Feedback</a></li>
            <li><a href="adminaboutpage.html">About</a></li></div>
          </ul>
          </nav>
      </header>

        <table border="0"  cellspacing="80" cellpadding="10" style="margin-top:2%;background-color: azure; align-content: center;" align="center" >
        <tr>
            <h2 style="color: black;margin-left:24%;align-content: center;margin-top: 2%;">All Customer Bills:</h2>
            <th>Bill Id</th>
            <th>Customer Id</th>
            <th>Units Utilized</th>
            <th>Bill Generated Date</th>
            <th>Current Rate</th>
            <th>Due Date</th>
            <th>Bill Status</th>
        </tr>
       
    

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
    $query="SELECT * FROM bill_details";
    $data=mysqli_query($con,$query);
    $total = mysqli_num_rows($data);

    echo $result['Bill_Id']." ".$result['Cust_Id']." ".$result['Units_Utilized']." ".$result['Bill_Date']." ".$result['Current_Rate']." ".$result['Bill_Due_Date']." ".$result['Bill_Status'];

    if($total!=0){
        $result = mysqli_fetch_assoc($data);
        while(($result=mysqli_fetch_assoc($data))){
            echo "
            <tr>
            <td>".$result['Bill_Id']."</td>
            <td>".$result['Cust_Id']."</td>
            <td>".$result['Units_Utilized']."</td>
            <td>".$result['Bill_Date']."</td>
            <td>".$result['Current_Rate']."</td>
            <td>".$result['Bill_Due_Date']."</td>
            <td>".$result['Bill_Status']."</td>
            ";
        }
    }
    else{
        echo "No records found";
    }
?>
</table></div>
</body>

</html>