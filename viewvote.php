<?php
//Include authentication
require("process/auth.php");

//Include database connection
require("config/db.php");

//Include class Voting
require("classes/Voting.php");
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voting System</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style_voter.css">
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
    <div class="row">
        <?php
        $types = $_SESSION['STUD_ID'];
        $readVote = new Voting();
        $rtnReadVote = $readVote->READ_VOTES($types);
        ?>
        <div class="col-md-8">
            <h4>List of Elections that you Voted</h4><hr>
            <div class="table-responsive">
                <?php if($rtnReadVote) { ?>
                <table class="table table-bordered table-condensed table-striped">
                    <tr>
                        <th>Election</th>
                        <th>View Votes</th>
                    </tr>
                    <?php while($rowVote = $rtnReadVote->fetch_assoc()) { ?>
                    <tr>
                        <td><?php echo $rowVote['org']; ?></td>
                        <td><a href="viewresult.php?org=<?php echo $rowVote['org']; ?>"><span class="glyphicon glyphicon-eye-open"></span>View Votes</a></td>
                    </tr>
                    <?php } //End while ?>
                </table>
                    <?php $rtnReadVote->free(); ?>
                <?php } //end if ?>
            </div>
        </div>
    </div>
</div>




<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

</body>
</html>
