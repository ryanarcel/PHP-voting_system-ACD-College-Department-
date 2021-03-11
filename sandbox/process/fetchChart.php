<?php
require("process/auth.php");
header('Content-Type: application/json');

include "../config/db.php";


if(isset($_GET['organization'])) {
    $election = $_GET['organization'];
    $_SESSION['election'] = $election;
}


    $data_points = array();

    $stmt = $handler->query("Select * from positions WHERE org = '$election'");

    while($row = $stmt->fetch(PDO::FETCH_BOTH))
    {
        $point = array("label" => $row['product'] , "y" => $row['total_sales']);

        array_push($data_points, $point);
    }

    echo json_encode($data_points, JSON_NUMERIC_CHECK);

//mysqli_close($con);

?>
