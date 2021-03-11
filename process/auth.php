<?php
session_start();

// if(!isset($_SESSION['STUD_ID']) || count($_SESSION['STUD_ID']) == 0) {
//     header("location: http://localhost/voting_system/index.php");
//     exit();
// }

if(!isset($_SESSION['STUD_ID'])) {
    header("location: index.php");
    exit();
}
