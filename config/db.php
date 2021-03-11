<?php

//This line of code connects to mysql database
define("HOST_NAME", "localhost");
define("HOST_USER", "root");
define("HOST_PASS", "");
define("HOST_DB", "voting_system");

$db = new mysqli(HOST_NAME, HOST_USER, HOST_PASS, HOST_DB);
$handler = new PDO('mysql:host=localhost;dbname=voting_system', HOST_USER, HOST_PASS);
