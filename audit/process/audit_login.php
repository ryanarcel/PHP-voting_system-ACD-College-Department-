<?php
//sa database
require("../../config/db.php");

//class sa admin
require("../classes/Audit_Login.php");

if(isset($_POST['submit'])) {

    //Create variable to store post array values
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);

    $adminLogin = new Admin_Login($username, $password);
    $rtnAdminLogin = $adminLogin->AdminLogin();

}
