<?php
error_reporting(0);
session_start();
if(isset($_SESSION['STUD_ID']) || count($_SESSION['STUD_ID']) == 1) {
 header("location: ../stud_page_new.php");
}
else if (isset($_SESSION['ADMIN_ID']) || count($_SESSION['ADMIN_ID']) == 1) {
header("location: audit.php");
}
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voting System</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/client.css">
    <style type="text/css">
      body{
        height: 700px;
      }
      .footer{
        background-color: #000;
        color: #fff;
        padding-top: 50px;
        padding-bottom: 20px;
        margin-top: 80px;
        margin-bottom: 0px;
        height: 50%;
      }
      .dev{
        color:#fff;
        background-color: #000;
      }
    </style>
</head>
<body>

<!-- Header -->
<nav class="navbar navbar-inverse navbar-fixed-top navbarcolor" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php">Voting Sytem</a>
        </div>

    </div><!-- /.container-fluid -->
</nav>
<!-- End Header -->






<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-con">
                <?php
                if(isset($_SESSION['ERROR_MSG_ARR']) && is_array($_SESSION['ERROR_MSG_ARR']) && count($_SESSION['ERROR_MSG_ARR']) > 0) {
                    foreach($_SESSION['ERROR_MSG_ARR'] as $msg) {
                        echo "<div class='alert alert-danger'>";
                        echo $msg;
                        echo "</div>";
                    }
                    unset($_SESSION['ERROR_MSG_ARR']);
                }
                ?>
                <center><img src="../assets/img/acd_logo.png"></center>
                <h3>Auditor Log-in</h3><hr>
                <form method="post" action="process/audit_login.php" role="form">
                    <div class="form-group has-feedback">
                        <label for="username">Username</label>
                        <input type="text" name="username" id="username" class="form-control" autocomplete="off">
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="password">Password</label>
                        <input type="password" name="password" id="password" class="form-control" autocomplete="off">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="form-group">
                        <input type="submit" name="submit" value="Submit" class="btn btn-info">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="footer navbar-static-bottom">
    <center>
      <h4>ACD College Dept 2018</h4>
  <p>
      <a href="../" style="color:#fff">&#9679; Login as voter</a>&nbsp;&nbsp;&nbsp;
      <a href="../sandbox" style="color:#fff">&#9679; Login as admin</a>&nbsp;&nbsp;&nbsp;
      <a style="color:#fff" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        &#9679; Developers
      </a>

    <div class="collapse" id="collapseExample">
    <div class="card card-body col-sm-2 col-sm-offset-5">
      <ul class="list-group">
        <li class="list-group-item dev">Karyl Ma&ntilde;os</li>
        <li class="list-group-item dev">Rayell Reboquio</li>
        <li class="list-group-item dev">Meldren Estorpe</li>
        <li class="list-group-item dev">Vicente Duguiles</li>
        <li class="list-group-item dev">Ryan Arcel Galendez (<b>Faculty</b>)</li>
      </ul>
    </div>
    </div>
  </p>
    </center>
</div>

<script src="../assets/js/jquery.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>
