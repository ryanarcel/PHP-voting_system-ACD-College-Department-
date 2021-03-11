
<?php
error_reporting(0);
//Include authentication
require("process/auth.php");

//Include database connection
require("config/db.php");

//Include class Voting
require("classes/Voting.php");


  $damang = $_SESSION['STUD_ID'];

  $stmt1 = $handler->query("Select id From voters Where stud_id='$damang'");
  $row1 = $stmt1->fetch(PDO::FETCH_ASSOC);
  $DBId = $row1['id'];
  $stmt2 = $handler->query("Select * from votes Where voters_id='$DBId'");
  $row2 = $stmt2->fetch(PDO::FETCH_ASSOC);
  if(!$row2){
    echo "";
  }
  else{
  //    echo "<input type='submit' name='submit' value='You have already voted' class='btn btn-danger' disabled>";
    header("location:process/logout.php?err=flying-voter");
  }



?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Voting System</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style_voter.css">
    <style type="text/css">
      .theB{
        width: 100px;
        height: 60px;
      }

    </style>
  </head>
  <body>

    <!-- Header -->
    <nav class="navbar navbar-inverse navbar-fixed-top navbardesign" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="stud_page_new.php"><span class="glyphicon glyphicon-home"></span> Voting Sytem</a>
            </div>
            <?php
            $name = $_SESSION['NAME'];
            ?>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                <li> <h5>Welcome <?php echo $name;?> </h5> </li>
                    <li><a href="stud_page_new.php"><span class="glyphicon glyphicon-home"></span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="viewvote.php">View Election Votes</a></li>
                            <li><a href="process/logout.php">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->

        </div><!-- /.container-fluid -->
    </nav>


    <div class="container">
    <div class="col-md-6 col-md-offset-3">

<?php


$chosens = $_SESSION['chosens'];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  if(isset($_POST['confirm'])){
    foreach ($_POST as $key => $value) {
      // echo $key." : ".$value;
      // echo "<br>";

    }
    echo "<br><br><br>";
    foreach ($chosens as $key => $value) {
  //    echo $key." : ".$value."<br>";

    $position = str_replace("_"," ", $value);

      if(isset($_POST[$value])){
        $org = $_SESSION['org'];
        $canId = $_POST[$value];
        $voters_id = $_POST['voters_id'];
        $voter_name = $_POST['voter_name'];

        $result = $handler->query("Select * From voters Where id = '$voters_id'");
        $r = $result->fetch(PDO::FETCH_BOTH);
        $course = $r['course'];

        if(!$row2){
          if($canId != "None"){
             $query = $handler->query("INSERT INTO votes (org, pos, candidate_id, voters_id, voter_name, course)
                VALUES ('$org', '$position', '$canId', '$voters_id', '$voter_name', '$course')");

          }
        }
        else{
          header("location:process/logout.php?err=flying-voter");

        }

      }
    }

  }

}


?>
    <div class="alert alert-success">
        <strong>Success!</strong> <br>Your votes have been counted. Thank You!
        <br>
      Don't forget to <a href="process/logout.php">Logout</a> your account.
    </div>


</div>
</div>


<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

  </body>
</html>
