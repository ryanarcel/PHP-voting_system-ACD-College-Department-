<?php

//Include authentication
require("process/auth.php");
require("../config/db.php");
require("classes/Organization.php");
require("classes/Voters.php");
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrator Login</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="../assets/css/style_admin.css"/>
    <link type="text/css" rel="stylesheet" href="../assets/css/jquery.dataTables.css"/>
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
                <li class="activemodal"><a href="viewsastud.php"><span class="glyphicon glyphicon-eye-open"></span>View Voters</a></li>
                <li><a href="vote_result.php"><span class="glyphicon glyphicon-plus-sign"></span>Vote Result</a></li>
                <li><a href="vote_report.php"><span class="glyphicon glyphicon-plus-sign"></span>Reports </a></li>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-plus-sign"> C / O Election</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="close_vote.php">Close Voting</a></li>
                        <li><a href="reopen.php">Re-Open Voting</a></li>
                        <li><a href="partylist.php">Add Partylist</a></li>
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

<body style="background: #e1e4ea">
<div class="container">
    <div class="panel panel-default col-md-4 col-md-offset-4" style="margin-top:10px; padding: 20px 30px 20px 30px">
    
    <?php
        $id = $_GET['id'];
        $stmt = $handler->query("Select * From voters Where id = '$id'");
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
    ?>
    <form action="updatevoter.php?id=<?php echo $row['id']?>" method="post">
        <div class="form-group">
            <h4 style="margin-bottom:20px">Update <?php echo $row["name"]?></h4>
        </div>
        <div class="form-group">
            <label for="">Course</label>
                <select name="course" class="form-control">
                <option value="<?php echo $row['course']?>" selected><?php echo $row['course']?></option>
                <?php
                    $stmt1 = $handler->query("Select Distinct course From voters");
                    while($r = $stmt1->fetch(PDO::FETCH_ASSOC)){
                        echo "<option value='".$r['course']."'>".$r['course']."</option>";
                    }
                ?>
                </select>
        </div>
        <div class="form-group">
            <label for="">Year Level</label>
                <select name="yrlevel" class="form-control">
                <option value="<?php echo $row['year']?>" selected><?php echo $row['year']?></option>
                <?php
                    $i=1;
                    while($i<=4){
                        echo "<option value='".$i."'>".$i."</option>";
                        $i++;
                    }
                ?>
                </select>
        <div class="form-group" style="padding-top:10px">
            <label for="">Class</label>
                <?php if($row["class"] == "AM"){ ?>
                    <div class="radio">   
                        <label><input type="radio" name="class" value="AM" required checked>AM</label>
                    </div>
                    <div class="radio">   
                        <label><input type="radio" name="class" value="PM">PM</label>
                    </div>
                <?php }
                    else{
                ?>
                    <div class="radio">   
                        <label><input type="radio" name="class" value="AM" required>AM</label>
                    </div>
                    <div class="radio">   
                        <label><input type="radio" name="class" value="PM" checked>PM</label>
                    </div>
                <?php
                    }
                ?>

        </div>
        <div class="form-group">
                <input type="submit" value="Update" name="submit" class="btn btn-success"/>
        </div>
    </form>
    </div>
</div>
  <script src="../assets/js/jquery.js"></script>
  <script src="../assets/js/bootstrap.min.js"></script>

 </body>
<script>
</script>
</html>
