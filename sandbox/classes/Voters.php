<?php

class Voters
{
    public function INSERT_VOTER($name, $course, $year, $dept, $stud_id, $stud_pass) {
        global $db;

        //Check kung nag exist ba si botante
        $sql = "SELECT *
                FROM voters
                WHERE name = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $name);
            $stmt->execute();
            $result = $stmt->get_result();
        }

        if($result->num_rows > 0) {
            echo "<div class='alert alert-danger'>Sorry the voter you entered already exists in the database.</div>";
        } else {
           
            $sql = "INSERT INTO voters(name, course, year, Level, stud_id, stud_pass)VALUES(?, ?, ?, ?, ?, ?)";
            if(!$stmt = $db->prepare($sql)) {
                echo $stmt->error;
            } else {
                $stmt->bind_param("ssssss", $name, $course, $year, $dept, $stud_id, $stud_pass);
            }
            if($stmt->execute()) {
                echo "<div class='alert alert-success'>Voter was inserted successfully.</div>";
            }
            $stmt->free_result();
        }
        return $stmt;
    }

    public function READ_VOTERS() {
        global $db;

        $sql = "SELECT *
                FROM voters
                ORDER BY name ASC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }

    public function EDIT_VOTER($voter_id) {
        global $db;

        $sql = "SELECT *
                FROM voters
                WHERE id = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("i", $voter_id);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }

    public function UPDATE_VOTER($name, $course, $year, $stud_id, $voter_id) {
        global $db;

        $sql = "UPDATE voters
                SET name = ?, course = ?, year = ?, stud_id = ?
                WHERE id = ? LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ssssi", $name, $course, $year, $stud_id, $voter_id);
        }

        if($stmt->execute()) {
            echo "<div class='alert alert-success'>Voter was updated successfully.<a href='http://localhost/voting_system/sandbox/add_voters.php'><span class='glyphicon glyphicon-backward'></span></a></div>";
        }
        $stmt->free_result();
        return $stmt;
    }

    public function DELETE_VOTER($voter_id) {
        global $db;

        $sql = "DELETE FROM voters
                WHERE id = ? LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("i", $voter_id);
        }

        if($stmt->execute()) {
            header("location: http://localhost/voting_system/sandbox/add_voters.php");
            exit();
        }
        $stmt->free_result();
        return $stmt;
    }
   
    

}