<html>
    <style>
   .board_head{
        border:solid;
        border-radius: 10px;
        margin-left: 35%;
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
        margin: 13px 20px;
    }
    .navbar li a{
        padding:20px 34px;
        text-decoration: none;
        color:black;
    }
    .navbar li a:hover {
        color: red;
    }
    .cust_home_content{
        border:solid;
        padding: 20px 20px 20px 20px;
        float:left;
        margin-left: 2%;
        margin-top: 1%;
        margin-right: 45%;
        width: 50%;
    }
    .cust_home_updates{
        position: absolute;
        border:solid;
        padding: 20px 20px 20px 20px;
        float:right;
        margin-top: 1%;
        margin-left: 55%;
        width: 40%;
    }
    .container {
    width: 100%;
    margin: auto;
    clear: both;
    }
    
    </style>
    <body style="background-color: #caebf2 ;margin-top:1%;">
        <center><h1 class="board_head">Electricity Board Web Services</h2></center>
            <header>
                <nav class="navbar">
                <ul>
                    
                    <li><a href="custHomepage.html">Home</a></li>
                    <li><a href="custviewbills.html">Bills</a></li>
                    <li><a href="custviewpasttransactions.html">Past Transactions</a></li>
                    <!-- li><a href="custsppa.html">SPPA</a>li>
                    <li><a href="custfeedback.html">Feedback</a></li> -->
                    <li><a href="custprofile.html">Profile</a></li>
                    <li><a href="custaboutpage.html">About</a></li>
                </ul>
                </nav>
            </header>
        
        <table border="0"  cellspacing="80" cellpadding="10" style="background-color: azure; align-content: center;" align="center" >
        <tr>
            <th>Admin Id</th>
            <th>Date </th>
            <th>Announcement</th>         
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
    $query="SELECT * FROM announcement_details";
    $data=mysqli_query($con,$query);
    $total = mysqli_num_rows($data);

    echo $result['Admin_Id']." ".$result['Announcement_Datetime']." ".$result['Announcement_Content'];

    if($total!=0){
        $result = mysqli_fetch_assoc($data);
        while(($result=mysqli_fetch_assoc($data))){
            echo "
            <tr>
            <td>".$result['Admin_Id']."</td>
            <td>".$result['Announcement_Datetime']."</td>
            <td>".$result['Announcement_Content']."</td>
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