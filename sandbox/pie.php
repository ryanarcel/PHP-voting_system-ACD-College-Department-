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

if(isset($_GET['canId'])) {
    $canId = $_GET['canId'];

}

$name = $_GET['name'];

$stmt = $handler->query("SELECT course, COUNT(*) as number FROM `votes` WHERE candidate_id = '$canId' GROUP BY course");
$result = $stmt->fetchAll(PDO::FETCH_BOTH);

$dataPoints = array();
foreach($result as $row){
    array_push($dataPoints, array("label"=> $row['course'], "y"=> $row['number']));
  }

  $position = $_GET['pos'];
  $stmtTotal = $handler->query("Select count(*) as total From voters");
  $resTotal = $stmtTotal->fetch(PDO::FETCH_BOTH);
  $totalVoters = $resTotal['total'];

  $stmtVoters = $handler->query("Select count(*) as number From votes Where pos='$position'");
  $resVoters = $stmtVoters->fetch(PDO::FETCH_BOTH);
  $theVoters = $resVoters['number'];

  $nonVoters = $totalVoters - $theVoters;

  //  array_push($dataPoints, array("label"=> "Did not vote", "y"=> $nonVoters));

?>
<body>
  <div class="container">

    <div class="col-md-12">
    <script type="text/javascript">

      window.onload = function () {

          //Better to construct options first and then pass it as a parameter
          var options = {
           title: {
             text: "Voting Results for <?php echo $name ?>",
             fontSize: 25
           },
           axisX:{
                  labelFontSize: 15
                },
           data: [
           {
             // Change type to "doughnut", "line", "splineArea", etc.

             type: "pie",
             indexLabelPlacement: "outside",
             indexLabel: "{label} {y} votes",
             indexLabelOrientation: "horizontal",
             indexLabelFontSize: 17,
             showInLegend: true,
		         toolTipContent: "<b>{label}</b>: {y} votes(#percent%)",
             legendText: "{label} (#percent%)",


             dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
           }
           ]
          };

          $("#chartContainer").CanvasJSChart(options);
      }

    </script>

      <div id="chartContainer" style="margin-top:20px;height:500px;width:100%"></div>
      </div>
  </div>
 </body>
 <script src="../assets/js/jquery.js"></script>
 <script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/canvasjs.min.js"></script>
</html>
