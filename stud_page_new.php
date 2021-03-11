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




<?php

$damang = $_SESSION['STUD_ID'];
$damangs = $_SESSION['STUD_PASS'];
if($damang == $damangs){
     header("location: changepass.php");
}
else if($damangs == $_SESSION['defaultpass']){
     header("location: process/logout.php");
}
$lagot = $_SESSION['LEVEL'];
$lagots = $_SESSION['COURSE'];
$readOrganization = new Voting();
$rtnReadOrg = $readOrganization->READ_ORG($lagot,$lagots);
?>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h3 style="text-align: center;">Select Election</h3><hr />
            <h4>Welcome <?php echo $_SESSION['NAME'];?></h4>
            <h4><?php echo $_SESSION['LEVEL'];?></h4>
            <?php if($rtnReadOrg) { ?>
           <!-- <form action="voting_page_new.php" method="GET" role="form"> -->
             <form action="voting_page_new.php" method="GET" role="form">
                <div class="form-group">
                    <label for="organization">Election</label>
                    <select required class="form-control" name="organization">
                        <option value="">*****Select Election*****</option>
                        <?php while($rowOrg = $rtnReadOrg->fetch_assoc()) { ?>
                        <option value="<?php echo $rowOrg['org']; ?>"><?php echo $rowOrg['org']; ?></option>
                        <?php } //End while ?>
                    </select>
                </div>
                <div class="form-group">
                  <?php
                    $stmt1 = $handler->query("Select id From voters Where stud_id='$damang'");
                    $row1 = $stmt1->fetch(PDO::FETCH_ASSOC);
                    $DBId = $row1['id'];
                    $_SESSION['DBId'] = $DBId;
                    $stmt2 = $handler->query("Select * from votes Where voters_id='$DBId'");
                    $row2 = $stmt2->fetch(PDO::FETCH_ASSOC);
                    if(!$row2){
                      echo "<input type='submit' name='submit' value='Submit' class='btn btn-info'>";
                    }
                    else{
                      echo "<input type='submit' name='submit' value='You have already voted' class='btn btn-danger' disabled>";
                    }
                      //echo $_SESSION['STUD_ID'];
                      //echo $damangs;
                  ?>
                  <br>

                </div>
            </form>
                <?php $rtnReadOrg->free(); ?>
            <?php } //End if ?>
        </div>
    </div>
</div>


<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

</body>
</html>
