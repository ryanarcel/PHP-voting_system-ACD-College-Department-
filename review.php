
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
    <!-- End Header -->

<div class="container">
<div class="col-md-12">
<form action="saveVotes.php" action="index.html" method="post">

<div class="panel panel-primary">
  <div class="panel-heading"><h4>Please review your votes</h4></div>
  <div class="panel-body">
    <center>
    <table>
<?php

  $chosens = $_SESSION['chosens'];

  // foreach ($_POST as $key => $value) {
  //   echo $key." : ".$value;
  //   echo "<br>";
  // }
  //
  // echo "<br><br> Chosens Array <br>";
  // foreach ($chosens as $key => $value) {
  //   echo $key." : ".$value;
  //   echo "<br>";
  // }

for ($i=0; $i <sizeof($chosens) ; $i++) {
    if(!isset($_POST[$chosens[$i]])){
      $_POST[$chosens[$i]] = "None";
    }

    //   $chosens[$i] = str_replace("_"," ",$chosens[$i]);

    $id = $_POST[$chosens[$i]];

    $query = $handler->query("Select * From nominees Where id='$id'");
    $result = $query->fetch(PDO::FETCH_BOTH);
    if(!isset($result['name'])){
      $result['name'] = "None";
    }

    $pos = str_replace("_"," ", $chosens[$i]);
    echo "<tr>";
    // echo "<td style='float:right'>".$chosens[$i]."</td>";
     echo "<td style='float:left'>".$pos."</td>";
     echo"<td>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; </td>";
     echo "<td><b>".$result['name']."</b></td>";
    echo "</tr>";

    echo "<input type='hidden' name='".$chosens[$i]."' value='".$_POST[$chosens[$i]]."'/>";
  //  echo "<input type='hidden' name='name' value='".$result['name']."'/>";

  }//end for
  $studId = $_SESSION['STUD_ID'];
  $que = $handler->query("Select id From voters Where stud_id='$studId'");
  $res = $que->fetch(PDO::FETCH_BOTH)
?>

  <input type="hidden" name="voter_name" value="<?php echo $name ?>"/>
  <input type="hidden" name="voters_id" value="<?php echo $res['id']  ?>"/>
</table>
</center>
<br><br><br>
<center>
<a href='javascript:history.back(1);' class="btn btn-warning theB">Return to<br>Voting Page</a>
&nbsp;&nbsp;&nbsp;
<button type="submit" name="confirm" class="btn btn-primary theB">Confirm<br>Votes</button>
</center>

  </div> <!--close panel body-->
</div><!--close panel-->
</form>
</div>
</div>


<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

  </body>
</html>
