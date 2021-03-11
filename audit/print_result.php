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

<div class="container">
    <div class="row">

        <div class="col-md-12">
            <?php
            if(!isset($_GET['organization'])) {
                echo "<div class='alert alert-warning'>Please select organization and click submit to show vote result.</div>";
            } else {
                $org = trim($_GET['organization']);
                ?>
                <?php
                $readPos = new Position();
                $rtnReadPos = $readPos->READ_POS_BY_ORG($org);
                ?>

                <?php if($rtnReadPos) { ?>

                    <?php while($rowPos = $rtnReadPos->fetch_assoc()) { ?>
                        <h5><?php echo $rowPos['pos']; ?></h5>

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
<?php

    $db->close();