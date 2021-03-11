<?php
error_reporting(0);
//Include authentication
require("process/auth.php");
require("../config/db.php");
require("classes/Organization.php");
require("classes/Voters.php");
require("classes/Nominees.php");
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrator Login</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="../assets/css/style_admin.css"/>
</head>
<body>

<!-- Header -->
<nav class="navbar navbar-inverse navbar-fixed-top navbarcolor" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php">Voting Sytem</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="admin_page.php"><span class="glyphicon glyphicon-home"></span></a></li>
                <li><a href="add_org.php"><span class="glyphicon glyphicon-plus-sign"></span>Add Election</a></li>
                <li><a href="add_pos.php"><span class="glyphicon glyphicon-plus-sign"></span>Add Position</a></li>
                <li><a href="add_nominees.php"><span class="glyphicon glyphicon-plus-sign"></span>Add Nominees</a></li>
                <li class="activemodal"><a href="viewsastud.php"><span class="glyphicon glyphicon-eye-open"></span>View Voters</a></li>
                <li><a href="vote_result.php"><span class="glyphicon glyphicon-plus-sign"></span>Vote Result</a></li>
                <li><a href="vote_report.php"><span class="glyphicon glyphicon-plus-sign"></span>Reports </a></li>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-plus-sign"> C / O Election</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="close_vote.php">Close Voting</a></li>
                        <li><a href="reopen.php">Re-Open Voting</a></li>
                        <li><a href="partylist.php">Add Partylist</a></li>
                        <li><a href="close_party.php">Closed Partylist</a></li>
                        <li><a href="reopen_party.php">Re-Open Partylist</a></li>
                        <li><a href="viewallvoter.php">All Student Record</a></li>
                  </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="process/logout.php">Logout</a></li>
                  </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->

    </div><!-- /.container-fluid -->
</nav>
<!-- End Header -->

<div class="container">
   <div class="col-md-6 col-md-offset-3">
   <?php

        $name = $_POST["lname"].", ".$_POST["fname"];
        $name = strtoupper($name);
        $course = $_POST["course"];
        $year = $_POST["yrlevel"];
        $class= $_POST["class"];
        $pass = $_SESSION['defaultpass'];

       

        $stmt = $handler->query("INSERT INTO `voters`(`name`, `course`, `year`, `Level`, `stud_id`, `class`, `stud_pass`) VALUES
      ('$name', '$course', '$year', 'College', '', '$class', '$pass')");
        
        //getting genesis id
        $stmt = $handler->query("Select Min(id) From voters");
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $firstId = $row['Min(id)'];

        //getting username; 
        $stmt = $handler->query("Select stud_id From voters Where id = '$firstId'");
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $user = $row['stud_id'];

        //extracts starting string from $user
        $parts = preg_split("/(,?\s+)|((?<=[a-z])(?=\d))|((?<=\d)(?=[a-z]))/i", $user);
        $startingstr =$parts[0];

        //getting max id
        $stmt = $handler->query("Select Max(id) From voters");
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $lastId = $row['Max(id)'];

        //makes new userid/stud_id
       $newuserId = $startingstr.$lastId;

       $stmt = $handler->query("Update voters Set stud_id='$newuserId' Where id ='$lastId'");

       echo "<center>";
       echo "<h2>A new voter account with the student ID of <font color='red'>".$newuserId."</font> has been generated for ".$name.".</h2>";
       echo "<p>The election moderator will provide the default password.</p>";
       echo "</center>";
        

   ?>
    <center>
    <a href="viewsastud.php" class="btn btn-default">OK</a>
    </center
   </div>
</div>

<script src="../assets/js/jquery.js"></script>
<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>



