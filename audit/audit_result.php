<?php
error_reporting(0);
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
                <li><a href="didNotVote.php" class="btn btn-info" style="color:rgb(69, 49, 68)">View who skipped the election</a></li>
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
if(isset($_GET['org'])) {
  $org = $_GET['org'];
  $_SESSION['orgs'] = $org;
}
if(isset($_GET['pos'])){
  $pos= $_GET['pos'];
}
?>
<body>
  <div class="container">
   <br />

   <h2 align="center"><?php echo $pos ?> Election Result</h2><br />
   <div class="form-group" >
    <div class="input-group col-md-4 col-md-offset-8">

     <input type="text" name="search_text" id="search_text" placeholder="Search by Name" class="form-control" />
     <span class="input-group-addon">Search</span>
    </div>
   </div>
   <br />
   <div id="result"></div>
  </div>
 </body>
 <script src="../assets/js/jquery.js"></script>
 <script src="../assets/js/bootstrap.min.js"></script>

</html>


<script>
$(document).ready(function(){

 load_data();

 function load_data(query)
 {
  $.ajax({
   url:"fetch.php",
   method:"POST",
   data:{query:query},
   success:function(data)
   {
    $('#result').html(data);
   }
  });
 }

 $('#search_text').keyup(function(){
  var search = $(this).val();
  if(search != '')
  {
   load_data(search);
  }
  else
  {
   load_data();
  }
 });
});
</script>
