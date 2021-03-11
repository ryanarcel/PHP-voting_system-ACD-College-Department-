<?php
require("../config/db.php");
session_start();

if(isset($_GET['err'])){
  if($_GET['err']=='flying-voter'){
    //  echo $_GET['err'];
    $id = $_SESSION['DBId'];

    $handler->query("INSERT INTO `flyers`(`name`, `stud_id`, `course`, `year`) SELECT name, id, course, year FROM voters WHERE id = '$id'");
    session_destroy();
    header("location: ../index.php?err=flying-voter");
  }
  else if($_GET['err']=='changed'){
    //  echo $_GET['err'];
    session_destroy();
    header("location: ../index.php?err=changed");
  }
}
else{

  session_destroy();
    header("location: ../index.php");
}
exit();
