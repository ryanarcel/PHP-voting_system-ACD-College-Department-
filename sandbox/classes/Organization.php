<?php

class Organization
{
    public function INSERT_ORG($organization, $department, $active, $filt) {
        global $db;


        //Check kung naana bay existing nga org
        $sql = "SELECT *
                FROM organization
                WHERE org = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $organization);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        if($result->num_rows > 0) {
            echo "<div class='alert alert-danger'>Sorry the election you are trying to insert already exists in the database.</div>";
        } else {

            $sql = "INSERT INTO organization(org, dept, stat, course)VALUES(?, ?, ?, ?)";
            if(!$stmt = $db->prepare($sql)) {
                echo $stmt->error;

            } else {
                $stmt->bind_param("ssss", $organization, $department, $active, $filt);
            }

            if($stmt->execute()) {
                echo "<div class='alert alert-success'>Election was inserted successfully.</div>";
            }
            $stmt->free_result();
        }
        $result->free();
        return $stmt;
    }

    public function READ_ORG($types) {
        global $db;

        $sql = "SELECT * FROM organization WHERE stat ='active' AND dept =? ORDER BY id DESC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $types);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }
    public function REREAD_ORG($types) {
        global $db;

        $sql = "SELECT * FROM organization WHERE stat ='Inactive' AND dept=?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $types);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }
    public function NOFILT_READ_ORG($type) {
        global $db;

        $sql = "SELECT * FROM organization WHERE dept=? AND stat='Inactive' ORDER BY id DESC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $type);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }


    public function EDIT_ORG($org_id) {
        global $db;

        $sql = "SELECT *
                FROM organization
                WHERE id = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("i", $org_id);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }

    public function UPDATE_ORG($org, $org_id) {
        global $db;

        $sql = "UPDATE organization
                SET org = ?
                WHERE id = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("si", $org, $org_id);
        }

        if($stmt->execute()) {
            echo "<div class='alert alert-success'>Update successful <a href='http://localhost/voting_system/sandbox/add_org.php'><span class='glyphicon glyphicon-backward'></span> </a></div>";
        }
        $stmt->free_result();
        return $stmt;
    }

    public function DELETE_ORG($org_id) {
        global $db;


        $sql = "DELETE FROM organization
                WHERE id = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("i", $org_id);
        }

        if($stmt->execute()) {
            header("location: http://localhost/voting_system/sandbox/add_org.php");
            exit();
        }
        $stmt->free_result();
        return $stmt;
    }

public function READ_DEPT($type) {
        global $db;

        $sql = "SELECT * FROM department WHERE department_name=?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $type);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }

public function READ_COURSE($type) {
        global $db;

        $sql = "SELECT DISTINCT course FROM voters WHERE Level=? ";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $type);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }
public function READ_VOTER($types) {
        global $db;

        $sql = "SELECT DISTINCT year FROM voters WHERE Level=?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $types);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }
public function READ_VOTE($orgs) {
        global $db;

        $sql = "SELECT DISTINCT voters_id FROM votes WHERE org = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $orgs);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }
     public function FILTER_VOTER($filtVoter) {
        global $db;

        $sql = "SELECT * FROM voters WHERE stud_id = $filtVoter";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->execute();
            $result = $stmt->get_result();
        }
        return $result;
    }
    public function CLOSE_ORG($org) {
        global $db;

        $sql = "UPDATE organization
                SET stat = 'Inactive'
                WHERE org = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $org);
        }

        if($stmt->execute()) {
           echo "<div class='alert alert-success'>Closed successful.</div>";
        }
        $stmt->free_result();
        return $stmt;
    }
    public function CLOSE_ORGS($ors, $mydate) {
        global $db;

        $sql = "UPDATE nominees
                SET stat = 'Inactive', close_date='$mydate'
                WHERE org = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $ors);
        }

        if($stmt->execute()) {
           }
        $stmt->free_result();
        return $stmt;
    }
    public function CLOSE_NA($orc) {
        global $db;

        $sql = "UPDATE positions
                SET stat = 'Inactive'
                WHERE org = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $orc);
        }

        if($stmt->execute()) {
           }
        $stmt->free_result();
        return $stmt;
    }
    public function CLOSE_NAGYUD($orc, $mydate) {
        global $db;

        $sql = "UPDATE votes
                SET close_date = '$mydate'
                WHERE org = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $orc);
        }

        if($stmt->execute()) {
           }
        $stmt->free_result();
        return $stmt;
    }
    public function REOPEN_ORG($org) {
        global $db;

        $sql = "UPDATE organization
                SET stat = 'Active'
                WHERE org = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $org);
        }

        if($stmt->execute()) {
           echo "<div class='alert alert-success'>Reopen successful.</div>";
        }
        $stmt->free_result();
        return $stmt;
    }
    public function REOPEN_ORGS($ors) {
        global $db;

        $sql = "UPDATE nominees
                SET stat = 'Active'
                WHERE org = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $ors);
        }

        if($stmt->execute()) {
           }
        $stmt->free_result();
        return $stmt;
    }
    public function REOPEN_ORGSS($orc) {
        global $db;

        $sql = "UPDATE positions
                SET stat = 'Active'
                WHERE org = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $orc);
        }

        if($stmt->execute()) {
           }
        $stmt->free_result();
        return $stmt;
    }
}
