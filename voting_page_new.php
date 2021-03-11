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
  header("location:process/logout.php");
}


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
if(isset($_GET['organization'])) {
    $org = $_GET['organization'];
}

?>

<?php
$class = $_SESSION['CLASS'];
$readPos = new Voting();
$rtnReadPos = $readPos->READ_POSITION($org, $class);

?>

<div class="container">
    <div class="row">
        <?php if($rtnReadPos) { ?>
        <div class="col-md-6 col-md-offset-3">
            <?php
            if(isset($_POST['vote'])) {
                if($_POST['nominee'] != ""){
                $org            = trim($_POST['org']);
                $pos            = trim($_POST['pos']);
                $candidate_id   = trim($_POST['nominee']);
                $voters_id      = trim($_POST['voter_id']);
                $voters_name    = trim($_POST['voter_name']);

                $insertVote = new Voting();
                $rtnInsertVote = $insertVote->VOTE_NOMINEE($org, $pos, $candidate_id, $voters_id, $voters_name);
            }
        }

            ?>
             <div class="voting-con">

                <h4 style="text-align: center;"><?php echo $org; ?> Voting Page</h4><hr />
                <?php

                  $chosens = array();

                  if(isset($_GET['organization'])) {
                      $org = $_GET['organization'];
                      $_SESSION['org'] = $org;
                  }
                ?>

                <form action="review.php" method="POST" role="form">
                <?php while($rowPos = $rtnReadPos->fetch_assoc()) {

                  if (strpos($rowPos['pos'], 'Executive') !== false) { ?>
                      <p class="help-block"><h4 style="color:#006266"><b><?php echo $rowPos['pos']; ?></h4></b></p>
                  <?php }
                  else{ ?>
                      <p class="help-block"><h4 style="color:#660300"><b><?php echo $rowPos['pos']; ?></h4></b></p>
                  <?php }?>

                <?php
                        $readNominee = new Voting();
                        $rtnReadNominee = $readNominee->READ_NOMINEES($org, $rowPos['pos']);
                    $position = str_replace(' ', '_', $rowPos['pos']);
                    array_push($chosens, $position);
                    $_SESSION['chosens'] = $chosens;
                        ?>
                        <?php if($rtnReadNominee) { ?>
                            <div class="form-group">
                                <?php while($rowNominee = $rtnReadNominee->fetch_assoc()) {
                                    $theName = str_replace('�', '&Ntilde',$rowNominee['name']);
                                  ?>

                                    <input type="radio" name="<?php echo $rowPos['pos']; ?>" value="<?php echo $rowNominee['id']; ?>"> <?php echo $theName; ?> <i>(<?php echo $rowNominee['party']; ?>)</i><br>
                                <?php

                                  } //End while ?>
                            </div>
                        <?php } //End if ?>

                        <input type="hidden" name="org" value="<?php echo $org; ?>">
                        <input type="hidden" name="pos" value="<?php echo $rowPos['pos']; ?>">
                        <input type="hidden" name="voter_id" value="<?php echo $_SESSION['STUD_ID']; ?>">
                        <input type="hidden" name="voter_name" value="<?php echo $_SESSION['NAME']; ?>">

                <hr />
                <?php } //End while ?>
                <input type="hidden" name="orgs" value="<?php echo $org;?>">

                <input type="submit" name="submitforReview" class="btn btn-info" value="Submit Votes">

                </form>
            </div>
            </form>
        </div>
        <?php } //End if ?>
    </div>
</div>


<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

</body>
</html>
