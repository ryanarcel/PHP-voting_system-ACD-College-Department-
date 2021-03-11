<?php

//Include authentication
require("process/auth.php");
require("../config/db.php");
require("classes/Organization.php");
require("classes/Voters.php");



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
                <li><a href="viewsastud.php"><span class="glyphicon glyphicon-eye-open"></span>View Voters</a></li>
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
<?php

if(isset($_GET['organization'])) {
    $election = $_GET['organization'];
    $_SESSION['election'] = $election;
}

?>

<body>
  <div class="container">
  <?php
      $election = $_GET["elect"];
      echo $election."<br>";

      $position = $_GET["pos"];
      echo $position."<br>";
      $stmt = $handler->query("SELECT candidate_id, count(*) as number FROM `votes` WHERE pos='$position' AND ORG='$election' GROUP By candidate_id");
      while($row = $stmt->fetch(PDO::FETCH_BOTH)){
        echo "['".$row['candidate_id']."', ".$row['number']."],";
        echo "<br>";
      }
   ?>
   <script type="text/javascript" src="../assets/js/loader.js"></script>
   <script type="text/javascript">
      google.charts.load('current',{'packages':['corechart']});
      google.charts.setOnloadCallback(drawChart);
      function drawChart(){
        var data = google.visualization.arrayToDataTable([
            ['Candidate', 'Number of Voters'],
            <?php
              while($row = $stmt->fetch(PDO::FETCH_BOTH)){
                echo "['".$row['candidate_id']."', '".$row['number']."'],";
              }
            ?>
        ]);
        var options:{
          title: "Percentage of voters for <?php echo $position ?>"
        };
        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
      }
   </script>
   <div class="col-md-6 col-md-offset-3">

        <div id="piechart" style=" height:500px"></div>


  </div>


  </div>
 </body>
 <script src="../assets/js/jquery.js"></script>
 <script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/canvasjs.min.js"></script>
</html>
