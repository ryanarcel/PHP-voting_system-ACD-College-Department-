<?php
session_start();

if(!isset($_SESSION['AUDIT_ID']) || !isset($_SESSION['AUDIT_ID'])) {
    header("location: index.php");
    exit();
}
