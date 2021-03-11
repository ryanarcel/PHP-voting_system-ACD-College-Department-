<?php

//Include authentication
require("process/auth.php");

//Include database connection_aborted
require("../config/db.php");

//Include class Organization
require("../sandbox/classes/Organization.php");

//Include class Position
require("../sandbox/classes/Position.php");

//Include class Nominees
require("../sandbox/classes/Nominees.php");

?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voting System</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/style_voter.css">
    <link type="text/css" rel="stylesheet" href="../assets/css/jquery.dataTables.css"/>
</head>
<body>

<!-- Header -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="audit.php"><span class="glyphicon glyphicon-home"></span> Voting Sytem</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="audit.php"><span class="glyphicon glyphicon-home"></span></a></li>
                <li><a href="didNotVote.php" class="btn btn-info" style="color:rgb(69, 49, 68)">View who skipped the election</a></li>
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

<div class="col-md-12">
<center><h3>The following registered voters did not vote.</h3></center>
<table id="table_id" class="table table-striped">
<thead>
    <tr>
        <th>Student ID</th>
        <th>Name</th>
        <th>Course - Year</th>
        <th>Level</th>
    </tr>
</thead>
<tbody>
<?php

    $stmt = $handler->query("SELECT * FROM `voters` WHERE voters.id NOT IN (SELECT voters_id FROM votes)");
    while($r = $stmt->fetch(PDO::FETCH_BOTH)){
      echo "<tr>";
      echo "<td>".$r['stud_id']."</td>";
      echo "<td>".$r['name']."</td>";
      echo "<td>".$r['course']." - ".$r['year']."</td>";
      echo "<td>".$r['Level']."</td>";
      echo "</tr>";
    }
?>
</tbody>
</table>


</div>


<script src="../assets/js/jquery.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery.dataTables.js"></script>
<script type="text/javascript">
  $(document).ready( function () {
    $('#table_id').DataTable();
  } );
</script>
</body>
</html>
