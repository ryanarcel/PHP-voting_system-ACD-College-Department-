<?php

class StudentLogin
{
    public function StudLogin($stud_id, $stud_pass) {
        global $db;


        session_start();


        $error_msg_array = array();

        $error_msg = FALSE;

        if($stud_id == "") {
            $error_msg_array[] = "Please input your ID number.";
            $error_msg = TRUE;
        }
        if($stud_pass == "") {
            $error_msg_array[] = "Please input your password.";
            $error_msg = TRUE;
        }
        if($error_msg) {
            $_SESSION['ERROR_MSG_ARRAY'] = $error_msg_array;
            header("location:  ../index.php");
            exit();
        }

        $sql = "SELECT * FROM voters WHERE stud_id = :sid AND stud_pass =:spass";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param(":spass", $stud_pass);
            $stmt->bind_param(":sid", $stud_id);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        if($result->num_rows > 0) {

            $row = $result->fetch_assoc();


            session_regenerate_id();
            $_SESSION['ID']      = $row['id'];
            $_SESSION['NAME']    = $row['name'];
            $_SESSION['COURSE']  = $row['course'];
            $_SESSION['YEAR']    = $row['year'];
            $_SESSION['LEVEL']   = $row['Level'];
            $_SESSION['STUD_ID'] = $row['stud_id'];
            $_SESSION['STUD_PASS'] = $row['stud_pass'];
            session_write_close();

            header("location: stud_page.php");

        }
        else {
            $error_msg_array[] = "Sorry the ID number or Password you entered is not in the database.";
            $error_msg = TRUE;

            if($error_msg) {
                $_SESSION['ERROR_MSG_ARRAY'] = $error_msg_array;
                header("location:  ../index.php");
                exit();
            }
            $stmt->free_result();
        }
        $result->free();
        return $result;
    }
}
