<?php
session_start();

$_SESSION['defaultpass'] = '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G';

if(isset($_SESSION['STUD_ID'])){
  header("location:stud_page_new.php");
}
// error_reporting(0);

// session_start();
// if(isset($_SESSION['ADMIN_ID']) || count($_SESSION['ADMIN_ID']) == 1) {
// header("location: http://localhost/voting_system/sandbox/admin_page.php");
// }
// else if (isset($_SESSION['AUDIT_ID']) || count($_SESSION['AUDIT_ID']) == 1) {
// header("location: http://localhost/voting_system/audit/audit.php");
// }
if(isset($_POST['submit'])){
    $con = mysqli_connect("localhost", "root", "", "voting_system");

    $username = $con->real_escape_string($_POST['stud_id']);
    $password = $con->real_escape_string($_POST['stud_pass']);



    //$password = 'acd';
   // $password_encrypted = password_hash($password, PASSWORD_DEFAULT);
    // echo $password_encrypted;

    //$sql = $con->query("SELECT * FROM voters WHERE stud_id = '$username' AND stud_pass = '$password' ");
    $sql = $con->query("SELECT * FROM voters WHERE stud_id = '$username' ");

     if($sql->num_rows > 0){
        $data = $sql->fetch_array();
        // $s = password_verify($password, $data['stud_pass']);


        if(password_verify($password, $data['stud_pass'])){
        session_start();
             session_regenerate_id();
            $_SESSION['ID']      = $data['id'];
            $_SESSION['NAME']    = $data['name'];
            $_SESSION['COURSE']  = $data['course'];
            $_SESSION['YEAR']    = $data['year'];
            $_SESSION['LEVEL']   = $data['Level'];
            $_SESSION['STUD_ID'] = $data['stud_id'];
            $_SESSION['STUD_PASS'] = $data['stud_pass'];
            $_SESSION['CLASS'] = $data['class'];
            
            session_write_close();


            //header("location: stud_page_new.php");
           if($data['stud_pass'] == $_SESSION['defaultpass']){


              header("location: changepass.php");
            }
            else{
              header("location: stud_page_new.php");
            }
        }
        else
             echo "<div class='alert alert-danger'>Login Failed</div>";
    }
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
    <style type="text/css">
      body{
        height: 700px;
      }
      .footer{
        background-color: #006266;
        color: #fff;
        padding-top: 50px;
        padding-bottom: 20px;
        margin-top: 80px;
        margin-bottom: 0px;
        height: 50%;
      }
      .dev{
        color:#fff;
        background-color: #006266;
      }
    </style>
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

              if(isset($_GET['err'])){
                if($_GET['err']=="flying-voter"){
                  echo "<center>";
                  echo "<br><div class='alert alert-danger'>";
                    echo "<strong>Flying voter alert.</strong>.";
                  echo "</div>";
                  echo "</center>";
                }
                if($_GET['err']=="changed"){
                  echo "<center>";
                  echo "<br><div class='alert alert-success'>";
                    echo "Please login again with your new <strong>new password</strong>.";
                  echo "</div>";
                  echo "</center>";
                }
              }
              else{
                  echo "";
              }
               ?>
            <center><img src="assets/img/acd_logo.png"></center>
                <h3>Student Log-in</h3><hr>
                <?php
                if(isset($_SESSION['ERROR_MSG_ARRAY']) && is_array($_SESSION['ERROR_MSG_ARRAY']) && COUNT($_SESSION['ERROR_MSG_ARRAY']) > 0) {
                    foreach($_SESSION['ERROR_MSG_ARRAY'] as $msg) {
                        echo "<div class='alert alert-danger'>";
                        echo $msg;
                        echo "</div>";
                    }
                    unset($_SESSION['ERROR_MSG_ARRAY']);
                }

                ?>
                <form method="post" action="index.php" role="form">
                    <div class="form-group has-warning has-feedback">
                        <label for="stud_id">Student ID</label>
                        <input type="text" name="stud_id" id="stud_id" class="form-control" autocomplete="off">
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>
                        <div class="form-group has-warning has-feedback">
                        <label for="stud_pass">Password</label>
                        <input type="password" name="stud_pass" id="stud_pass" class="form-control" autocomplete="off">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                        <button type="submit" name="submit" class="btn btn-info">Submit</button>
                </form>
            </div>
        </div>
    </div>


</div>



<div class="footer navbar-static-bottom">
    <center>
      ACD College Dept 2018<br>
      <p>

      <a href="sandbox/" style="color:#fff">&#9679; Login as admin</a>&nbsp;&nbsp;&nbsp;
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

<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

</body>
</html>
