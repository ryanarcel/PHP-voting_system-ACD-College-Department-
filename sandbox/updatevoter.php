<?php
require("process/auth.php");
require("../config/db.php");

    $id = $_GET["id"];

    $id;
    $course = $_POST["course"];    
    $yrlevel = $_POST["yrlevel"];
    $class = $_POST["class"];

    $handler->query("Update voters set course='$course', year='$yrlevel', class='$class' Where id='$id'");
    header("location: viewCombinedStud.php?status=successupdate");
?>