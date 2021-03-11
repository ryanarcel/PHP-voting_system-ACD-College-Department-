<?php

class Voting
{
    public function READ_ORG($lagot, $lagots) {
        global $db;

        $sql = "SELECT * FROM organization WHERE dept = ? AND (course = ? OR course = 'Everyone') AND stat ='active' ORDER BY id DESC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ss",$lagot, $lagots);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }

    public function READ_POSITION($org, $class) {
        global $db;


        if($class == "AM"){
          $sql = "SELECT *
                  FROM positions
                  WHERE org = ? AND hierarchy != 'Local Evening'";
        }
        else {
          $sql = "SELECT *
                  FROM positions
                  WHERE org = ? AND hierarchy != 'Local Day'";
        }

        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $org);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }

    public function AUDIT_RESULT($org) {
        global $db;

        $sql = "SELECT *
                FROM nominees
                WHERE org = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $org);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }


    public function READ_NOMINEES($org, $pos) {
        global $db;



        $sql = "SELECT *
                FROM nominees
                WHERE org = ?
                AND pos = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ss", $org, $pos);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }

    public function VALIDATE_VOTE($org, $pos, $voters_id) {
        global $db;

        //check kung naka boto na ba o wala pa
        $sql = "SELECT *
                FROM votes
                WHERE org = ?
                AND pos = ?
                AND voters_id = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ssi", $org, $pos, $voters_id);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }

    public function VOTE_NOMINEE($org, $pos, $candidate_id, $voters_id, $voters_name) {
        global $db;

        //check kung naka boto na ba o wala pa
        $sql = "SELECT *
                FROM votes
                WHERE org = ?
                AND pos = ?
                AND voters_id = ?
                AND voter_name = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ssis", $org, $pos, $voters_id, $voters_name);
            $stmt->execute();
            $result = $stmt->get_result();
        }

        if($result->num_rows > 0) {
            echo "<div class='alert alert-danger'>Sorry you voted in that position already.</div>";
        } else {
            //Vote successful.
            $sql = "INSERT INTO votes(org, pos, candidate_id, voters_id, voter_name)VALUES(?, ?, ?, ?, ?)";
            if(!$stmt = $db->prepare($sql)) {
                echo $stmt->error;
            } else {
                $stmt->bind_param("sssis", $org, $pos, $candidate_id, $voters_id, $voters_name);
            }

            if($stmt->execute()) {
                echo "<div class='alert alert-success'>Vote successful.</div>";
            }
            $stmt->free_result();
        }
        return $stmt;
    }
    public function DELETE_NOMINEE($org, $pos) {
        global $db;

        $sql = "DELETE FROM votes
                WHERE org = ? AND pos=?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ss", $org, $pos);
        }
        if($stmt->execute()) {
        echo "<div class='alert alert-success'>Vote successfully Deleted.</div>";
        }
        $stmt->free_result();
        return $stmt;
    }
    public function DELETE_VOTE($id, $hope) {
        global $db;

        $sql = "SELECT *
                FROM chika
                WHERE org = '$hope'
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ss",$id, $hope);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        if($result->num_rows > 0) {
            echo "<div class='alert alert-danger'>Sorry the Vote cannot be deleted.</div>";
        } else {

            $sql = "DELETE FROM votes
                WHERE candidate_id = '$id'
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ss",$id, $org);
        }
        if($stmt->execute()) {
        echo "<div class='alert alert-success'>Vote successfully Deleted.</div>";
        }
        $stmt->free_result();
        return $stmt;
    }
    }
    public function HOPELESS($id) {
        global $db;

        $sql = "SELECT * FROM nominees WHERE id = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s",$id);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }
    public function READ_VOTES($types) {
        global $db;

        $sql = "SELECT DISTINCT org FROM votes WHERE voters_id = ? ORDER BY id DESC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s",$types);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }
    public function READ_VOTER($types, $org) {
        global $db;

        $sql = "SELECT * FROM votes WHERE voters_id = ? AND org = ? ORDER BY id ASC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ss",$types, $org);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }
    public function READ_ME($me) {
        global $db;

        $sql = "SELECT * FROM nominees WHERE id = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s",$me);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }

    public function UPDATE_PASSWORD($stud_id, $pass) {
        global $db;

        $sql = "UPDATE voters
                SET stud_pass = '$pass'
                WHERE stud_id = ? LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $stud_id);
        }
        if($stmt->execute()) {
            echo "<div class='alert alert-success'>Update successful <a href=' ../index.php'><span class='glyphicon glyphicon-backward'></span> </a></div>";
        }
        $stmt->free_result();
        return $stmt;
    }
    public function READ_HER($types, $orgs ) {
        global $db;

        $sql = "SELECT * FROM votes WHERE voters_id = ? AND org = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ss",$types, $orgs);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }
    public function READ_HIM($id) {
        global $db;

        $sql = "SELECT * FROM nominees WHERE id = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s",$id);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }
     public function VALIDATE_CHECKLIST($org, $voters_id) {
        global $db;

        //check kung naka boto na ba o wala pa
        $sql = "SELECT *
                FROM checklist
                WHERE org = ?
                AND voter_id = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ss", $org, $voters_id);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }

    public function HEY_NOW($orger, $voter_id) {
        global $db;


        //Check kung naana bay existing nga org
        $sql = "SELECT *
                FROM chika
                WHERE org='$orger'
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $orger);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        if($result->num_rows > 0) {
            echo "<div class='alert alert-danger'>Sorry the Vote Confirmation you are trying to insert already exists in the database.</div>";
        } else {

            $sql = "INSERT INTO chika(org, voter)VALUES(?, ?)";
            if(!$stmt = $db->prepare($sql)) {
                echo $stmt->error;

            } else {
                $stmt->bind_param("ss", $orger, $voter_id);
            }

            if($stmt->execute()) {
                echo "<div class='alert alert-success'>Vote Confirmation was inserted successfully.</div>";
            }
            $stmt->free_result();
        }
        $result->free();
        return $stmt;
    }

}
