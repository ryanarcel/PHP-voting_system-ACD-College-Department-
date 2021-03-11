<?php
//Include authentication
require("process/auth.php");

//Include database connection
require("../config/db.php");

//Include class Voting
require("../classes/Voting.php");
require("../sandbox/classes/Position.php");
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
  $orgs = $_GET['organization'];
}
?>

<?php
$readPos = new Voting();
$rtnReadPos = $readPos->AUDIT_RESULT($orgs);

?>

<div class="container">
    <div class="row">
        <?php if($rtnReadPos) { ?>
        <div class="col-md-3">
            <h3>Select Candidate</h3><hr>
            <form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET" role="form">
                <div class="form-group">
                    <label for="organization">Candidate</label>
                    <select name="organization" class="form-control">
                        <option value="">*****Select Candidate*****</option>
                        <?php while($rowOrg = $rtnReadPos->fetch_assoc()) { ?>
                        <option value="<?php echo $rowOrg['name']; ?>"><?php echo $rowOrg['name']; ?></option>
                        <?php } //End while ?>
                    </select>
                </div>
                <button type="submit" name="submit" class="btn btn-info">Submit</button>
            </form>
        </div>
            <?php $rtnReadPos->free(); ?>
        <?php } //End if ?>


        <div class="col-md-9">
            <?php
            if(!isset($_GET['organization'])) {
                echo "<div class='alert alert-warning'>Please select organization and click submit to show vote result.</div>";
            } else {
            $org = trim($_GET['organization']);
            ?>
                <a href="../sandbox/print_result.php?organization=<?php echo $org; ?>"><h3><span class="glyphicon glyphicon-print pull-right"></h3></span> </a>
                <h4><?php echo $org; ?> Result</h4>
                <hr>

                <?php
                $readPos = new Position();
                $rtnReadPos = $readPos->READ_ORG_BY_POS($org);
                ?>

                <?php if($rtnReadPos) { ?>

                    <?php while($rowPos = $rtnReadPos->fetch_assoc()) { ?>
                    <h5><?php $candid_id = $rowPos['id']; $candid_org = $rowPos['org'];?></h5>

                        <?php
                        $readNomOrgPos = new Nominees();
                        $rtnReadNomOrgPos = $readNomOrgPos->READ_AUDIT($candid_org, $candid_id);
                        ?>

                        <div class="table-responsive">
                            <?php if($rtnReadNomOrgPos) { ?>
                            <table class="table table-condensed table-striped">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                </tr>
                                <?php while($rowCountVotes = $rtnReadNomOrgPos->fetch_assoc()) { ?>
                                    <?php
                                    $votersID = $rowCountVotes['voters_id'];
                                    $countVotes = new Nominees();
                                    $rtnCountVotes = $countVotes->COUNT_VOTED($votersID);
                                    ?>
                                    <?php if($rtnCountVotes) { ?>
                                    <?php while($rowCounts = $rtnCountVotes->fetch_assoc()) { ?>
                                    <tr>
                                        <td><?php echo $rowCounts['stud_id']; ?></td>
                                        <td><?php echo $rowCounts['name']; ?></td>
                                    </tr>






                                <?php } //End while ?>
                            </table>

                        </div>

                    <?php } //End while ?>
                    <?php } //End while ?>
                <?php $rtnReadNomOrgPos->free(); } //End if ?>
                <?php $rtnCountVotes->free(); } //End if ?>
                <?php $rtnReadPos->free(); } //End if ?>

            <?php } //End if ?>
        </div>



    </div>
</div>





<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

</body>
</html>
