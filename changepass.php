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
<body style="background:#edeeef">

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
$name = $_SESSION['NAME'];
$stud_id = $_SESSION['STUD_ID'];
$stud_pass = $_SESSION['STUD_PASS'];
?>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
        <?php
        if(isset($_POST['submit'])) {
        $pass = trim($_POST['password']);
        $pass1 = trim($_POST['password1']);
        if($pass == $pass1 && $stud_pass != $pass){
            $password = password_hash($pass, PASSWORD_DEFAULT);
            $updatePass = new Voting();
            $rntUpPass = $updatePass->UPDATE_PASSWORD($stud_id,$password);
            header("location:process/logout.php?err=changed");
        }
        else{
          echo "<div class='alert alert-danger'>";
          echo "Passwords do not match!";
          echo "</div>";
        }
        }
        ?>
        
        <div class="panel panel-default" style="padding: 20px 20px 20px 20px">
            <div class="panel-body">
            <form method="POST" action="<?php $_SERVER['PHP_SELF']; ?>" role="form">
                <h4>Create New Password!</h4>
                <br>
                <div class="form-group">
                    <label for="name">Name:</label></th><br>
                    <input readonly type="text" name="name" class="form-control" value="<?php echo $_SESSION['NAME']. " (".$_SESSION['STUD_ID'].")"; ?>">
                </div>    
                <div class="form-group">
                    <label for="pass">Password:</label>
                    <input required="" type="password" class="form-control" name="password" id="password">
                </div> 
                <div class="form-group">
                    <th><label for="password">Confirm Password:</label></th><br>
                    <td><input required="" type="password" class="form-control" name="password1" id="password1"></td>
                </div>
                <div class="form-group-sm">
                    <input type="submit" name="submit" value="Submit" class="btn btn-info">
                </div>
            </form>
            </div>
        </div>
        </div>
    </div>
</div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>


</body>
</html>
