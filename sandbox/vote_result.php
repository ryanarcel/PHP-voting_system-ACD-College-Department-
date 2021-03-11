<?php
error_reporting(0);
//Include authentication
require("process/auth.php");

//Include database connection_aborted
require("../config/db.php");

//Include class Organization
require("classes/Organization.php");

//Include class Position
require("classes/Position.php");

//Include class Nominees
require("classes/Nominees.php");

$org = $_GET['organization'];
$page = "vote_result.php?organization=".$org;
$sec = "10";

?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Refresh" content="<?php echo $sec?>;URL='<?php echo $page?>'" >
    <title>Administrator Login</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/style_admin.css">
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
                <li class="activemodal"><a href="vote_result.php"><span class="glyphicon glyphicon-plus-sign"></span>Vote Result</a></li>
                <li><a href="vote_report.php"><span class="glyphicon glyphicon-plus-sign"></span>Reports </a></li>
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
$types = $_SESSION['ADMIN_TYPE'];
$readOrg = new Organization();
$rtnReadOrg = $readOrg->READ_ORG($types);
?>
<div class="container">
    <div class="row">
        <?php if($rtnReadOrg) { ?>
        <div class="col-md-3">
            <h3>Select Election</h3><hr>
            <form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET" role="form">
                <div class="form-group">
                    <label for="organization">Election</label>
                    <select name="organization" class="form-control">
                        <option value="">*****Select Election*****</option>
                        <?php
                          $stmt = $handler->query("Select * From organization");

                         while($rowOrg = $stmt->fetch(PDO::FETCH_BOTH)) { ?>
                        <option value="<?php echo $rowOrg['org']; ?>"><?php echo $rowOrg['org']; ?></option>
                        <?php } //End while ?>
                    </select>
                </div>
                <button type="submit" name="submit" class="btn btn-info">Submit</button>
            </form>
        </div>
            <?php $rtnReadOrg->free(); ?>
        <?php } //End if ?>


        <div class="col-md-9">
            <?php

            if(!isset($_GET['organization'])) {
                echo "<div class='alert alert-warning'>Please select election and click submit to show vote result.</div>";
            } else {
            $org = trim($_GET['organization']);
            ?>
                <a href="print_result.php?organization=<?php echo $org; ?>"><h3><span class="glyphicon glyphicon-print pull-right"></h3></span> </a>
                <h4><b><?php echo $org; ?> Result</b></h4>
                <hr>

                <?php
                $readPos = new Position();
                $rtnReadPos = $readPos->READ_POS_BY_ORG($org);
                ?>

                <?php if($rtnReadPos) { ?>

                <?php while($rowPos = $rtnReadPos->fetch_assoc()) {

                  if (strpos($rowPos['pos'], 'Executive') !== false) { ?>
                      <p class="help-block"><h4 style="color:green"><b><?php echo $rowPos['pos']; ?></h4></b></p>
                  <?php }
                  else{
                      if (strpos($rowPos['pos'], 'Day') !== false) {
                    ?>
                      <p class="help-block"><h4 style="color:blue"><b><?php echo $rowPos['pos']; ?></h4></b></p>

                  <?php
                      }
                      else{ ?>
                      <p class="help-block"><h4 style="color:red"><b><?php echo $rowPos['pos']; ?></h4></b></p>
                  <?php    }
                  }?>

                        <?php
                        $readNomOrgPos = new Nominees();
                        $rtnReadNomOrgPos = $readNomOrgPos->READ_NOM_BY_ORG_POS($org, $rowPos['pos']);
                        ?>

                        <div class="table-responsive">
                            <?php if($rtnReadNomOrgPos) { ?>
                            <table class="table table-condensed table-striped">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Votes</th>
                                </tr>
                                <?php while($rowCountVotes = $rtnReadNomOrgPos->fetch_assoc()) { ?>
                                    <?php
                                    $countVotes = new Nominees();
                                    $rtnCountVotes = $countVotes->COUNT_VOTES($rowCountVotes['id'])
                                    ?>
                                    <tr>
                                        <td style="width: 20%;"><?php echo $rowCountVotes['stud_id']; ?></td>
                                        <td style="width: 70%;"><?php echo $rowCountVotes['name']; ?></td>
                                        <td style="width: 10%;"><?php echo $rtnCountVotes->num_rows; ?></td>
                                    </tr>





                                <?php } //End while ?>
                            </table>
                            <?php $rtnReadNomOrgPos->free(); } //End if ?>
                        </div>

                <?php } //End while ?>

                <?php $rtnReadPos->free(); } //End if ?>

            <?php } //End if ?>
        </div>



    </div>
</div>







<script src="../assets/js/jquery.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>
