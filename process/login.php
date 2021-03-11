<?php
//sa database
require("../config/db.php");

//class sa login sa studyante
require("../classes/StudentLogin.php");

if(isset($_POST['submit'])) {
    $stud_id = trim($_POST['stud_id']);
    $stud_pass = trim($_POST['stud_pass']);

    $loginStud = new StudentLogin();
    $rtnLogin = $loginStud->StudLogin($stud_id, $stud_pass);
}

$db->close();
