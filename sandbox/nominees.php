<?php

//Include authentication
require("process/auth.php");

//Include database connection
require("../config/db.php");

//Include class Organization
require("classes/Organization.php");

//Include class Position
require("classes/Position.php");

//Include class Nominees
require("classes/Nominees.php");

?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrator Login</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/style_admin.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
        function getPos(val) {
            $.ajax({
                type: "POST",
                url: "get_pos.php",
                data: 'stud_id='+val,
                success: function(data) {
                    $("#poslist").html(data);
                }
            });
        }
    </script>
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
                <li class="activemodal"><a href="add_nominees.php"><span class="glyphicon glyphicon-plus-sign"></span>Add Nominees</a></li>
                <li><a href="viewsastud.php"><span class="glyphicon glyphicon-eye-open"></span>View Voters</a></li>
                <li><a href="vote_result.php"><span class="glyphicon glyphicon-plus-sign"></span>Vote Result</a></li>
                <li><a href="vote_report.php"><span class="glyphicon glyphicon-plus-sign"></span>Reports </a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-plus-sign"> C / O Election</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="close_vote.php">Close Voting</a></li>
                        <li><a href="reopen.php">Re-Open Voting</a></li>
                        <li><a href="partylist.php">Add Partylist</a></li>
                        <li><a href="party.php">Partylist</a></li>
                        <li><a href="close_party.php">Closed Partylist</a></li>
                        <li><a href="reopen_party.php">Re-Open Partylist</a></li>
                        <li><a href="viewallvoter.php">All Student Record</a></li>
                  </ul>
                </li>                <li class="dropdown">
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
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <?php

            if(isset($_GET['stud_id'])){
              $stud_id = $_GET["stud_id"];
            }
            if(isset($_GET['posId'])){
                $posId = trim($_GET['posId']);
            }

            if(isset($_POST['submit'])) {
                $org        = trim($_POST['organization']);
                $pos        = trim($_POST['position']);
                $name       = trim($_POST['name']);
                //$stud_id    = trim($_POST['stud_id']);
                $level      = $_SESSION['ADMIN_TYPE'];
                $party      = trim($_POST['party']);
                $stat       = 'Active';

                $hopeless = new Nominees();
                $rtnhopeless = $hopeless->HOPELESS($stud_id);
                if($rtnhopeless){
                    while($rowhope = $rtnhopeless->fetch_assoc()) {
                        $course = $rowhope['course'];
                        $year = $rowhope['year'];
                    }
                }
                $insertNominee = new Nominees();
                $rtnInsertNominee = $insertNominee->INSERT_NOMINEE($org, $pos, $party, $name, $level, $course, $year, $stud_id, $stat, $posId);
            }
            ?>
            <h4>Add Nominee</h4><hr>

            <?php
            if(isset($_GET['id'])) {
                $nom_id = trim($_GET['id']);
                $editNominee = new Nominees();
                $rtnEditNominee = $editNominee->EDIT_NOMINEE($nom_id);
            }
            if(isset($_GET['pos'])){
                $nom_pos = trim($_GET['pos']);
            }

            ?>
                <form method="POST" action="<?php $_SERVER['PHP_SELF']; ?>" role="form">
                    <div class="form-group-sm">
                        <label for="organization">Election</label>
                            <input readonly type="text" required name="organization" class="form-control" value="<?php echo $nom_id; ?>">
                    </div>
                    <div class="form-group-sm">
                        <label for="position">Position</label>
                        <input type="text" readonly required name="position" class="form-control" value="<?php echo $nom_pos; ?>" >
                    </div>
                    <?php
                    $types = $_SESSION['ADMIN_TYPE'];

                      //$type ="College";
                    $readParty = new Position();
                    $rtnReadParty = $readParty->READ_PARTY($types);
                    ?>

                    <?php
                  //  $types = $_SESSION['ADMIN_TYPE'];

                    // var_dump($types);

                    $readStud = new Position();
                    $rtnReadStud = $readStud->READ_ID($types);
                    ?>
                    <br>

                    <?php


                      if (isset($_GET['trueId'])){

                        $trueId = $_GET['trueId'];
                        $getName = $handler->query("Select * From voters Where id = '$trueId'");
                        $fetch = $getName->fetch(PDO::FETCH_BOTH);
                    ?>
                          <label for="Name">Student Name</label>
                          <div class="input-group form-group-sm">

                            <input type="text" class="form-control" name="name" value="<?php echo $fetch['name']?>">
                              <span class="input-group-btn">
                                  <a class="btn btn-default" href="searchNominee.php?elect=<?php echo $nom_id ?>&&posId=<?php echo $posId?>&&pos=<?php echo $_GET['pos']?>">Search</a>
                              </span>

                          </div>
                    <?php
                      }else{
                    ?>
                          <label for="Name">Student Name</label>
                          <div class="input-group form-group-sm">

                            <input type="text" class="form-control" name="name" >
                              <span class="input-group-btn">
                                  <a class="btn btn-default" href="searchNominee.php?elect=<?php echo $nom_id ?>&&posId=<?php echo $posId?>&&pos=<?php echo $_GET['pos']?>">Search</a>
                              </span>

                          </div>

                    <?php
                      }

                    ?>



                    <div class="form-group-sm">
                    <label for="position">Partylist</label>
                     <?php if($rtnReadParty) { ?>
                        <select required name="party" class="form-control">
                            <option value="Independent">Independent</option>
                            <?php while($rowParty = $rtnReadParty->fetch_assoc()) { ?>
                                <option value="<?php echo $rowParty['party_name']; ?>"><?php echo $rowParty['party_name']; ?></option>
                            <?php } //End while ?>
                    </select>
                        <?php $rtnReadParty->free(); ?>
                        <?php } //End if ?>
                    </div>
                    <hr/>
                    <div class="form-group-sm">
                        <input type="submit" name="submit" value="Nominate" class="btn btn-info">
                    </div>
                </form>

                <?php $rtnEditNominee->free(); ?>

        </div>
    </div>
</div>



<script src="../assets/js/jquery.js"></script>
<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>
