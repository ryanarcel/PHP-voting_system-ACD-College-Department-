<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>

<form class="" action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
  <button type="submit" name="button">Try</button>
</form>

    <?php
    echo password_hash("acd",PASSWORD_DEFAULT)."<br>";

//     echo $data("acd");
//     if ($_SERVER['REQUEST_METHOD'] === 'POST') {
//   //something posted
//
//       if (isset($_POST['button'])) {
//         echo "Test";
//       }
//     }
//
//     session_start();
//
//     $_SESSION['voting_array'] = ["president" => "nill", "vice_president" => "nill"];
//
//
//     $candidates = ["Ryan Arcel", "Chong"];
//     $_SESSION["voting_array"] = ["president" => $candidates[0], "vice_president" => $candidates[1]];
//
//
//     $votes = $_SESSION['voting_array'];
//
//
//
//     foreach ($votes as $key => $value) {
//       echo $key .": ". $value;
//       echo "<br>";
//     }
//
// session_destroy();
    ?>

  </body>
</html>
