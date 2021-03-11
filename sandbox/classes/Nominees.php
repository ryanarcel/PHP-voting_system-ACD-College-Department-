<?php
class Nominees
{

    public function INSERT_NOMINEE($org, $pos, $party, $name, $level, $course, $year, $stud_id, $stat, $posId) {
        global $db;

        //Check if naana ba ang nominee
        $sql = "SELECT *
                FROM nominees
                WHERE name = ? OR (pos = ? AND party = ? AND party !='Independent')
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("sss", $name, $pos, $party);
            $stmt->execute();
            $result = $stmt->get_result();
        }

        if($result->num_rows > 0) {
            echo "<div class='alert alert-danger'>Sorry the nominee you entered already exists in the database</div>";
        } else {

            $sql = "INSERT INTO nominees(org, pos, name, level, course, year, stud_id, party, stat, posId)VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            if(!$stmt = $db->prepare($sql)) {
                echo $stmt->error;
            } else {
                $stmt->bind_param("ssssssssss", $org, $pos, $name, $level, $course, $year, $stud_id, $party, $stat, $posId);
            }
            if($stmt->execute()) {
                echo "<div class='alert alert-success'>Nominee was inserted successfully.</div>";
            }
            $stmt->free_result();
        }
        return $stmt;
    }

    public function READ_NOMINEE($type) {
        global $db;

        $sql = "SELECT DISTINCT org, pos
                FROM nominees WHERE level=? AND stat='Active'
                ORDER BY id DESC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $type);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }
    public function READ_NOMINEES($type, $nom_org, $nom_pos) {
        global $db;

        $sql = "SELECT *
                FROM nominees WHERE level=? AND org=? AND pos=? AND stat='Active'
                ORDER BY id DESC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("sss", $type, $nom_org, $nom_pos);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }

    public function EDIT_NOMINEE($nom_id) {
        global $db;

        $sql = "SELECT *
                FROM nominees
                WHERE org = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $nom_id);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }
    public function EDIT_NOMINEED($nom_id) {
        global $db;

        $sql = "SELECT *
                FROM nominees
                WHERE id = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $nom_id);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }

    public function UPDATE_NOMINEE($org, $pos, $party, $name, $course, $year, $stud_id, $nom_id) {
        global $db;

        $sql = "UPDATE nominees
                SET org = ?, pos = ?, party = ?, name = ?, course = ?, year = ?, stud_id = ?
                WHERE id = ? LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("sssssssi", $org, $pos, $party, $name, $course, $year, $stud_id, $nom_id);
        }
        if($stmt->execute()) {
            echo "<div class='alert alert-success'>Update successful <a href='http://localhost/voting_system/sandbox/add_nominees.php'><span class='glyphicon glyphicon-backward'></span> </a></div>";
        }
        $stmt->free_result();
        return $stmt;
    }

    public function DELETE_NOMINEE($nom_id) {
        global $db;

        $sql = "DELETE FROM nominees
                WHERE id = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("i", $nom_id);
        }
        if($stmt->execute()) {
            header("location: http://localhost/voting_system/sandbox/add_nominees.php");
            exit();
        }
        $stmt->free_result();
        return $stmt;
    }

    public function READ_NOM_BY_ORG_POS($org, $pos) {
        global $db;

        $sql = "SELECT *
                FROM nominees
                WHERE nominees.org = ?
                AND nominees.pos = ?";
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

    public function COUNT_VOTES($candidate_id) {
        global $db;

        $sql = "SELECT candidate_id
                FROM votes
                WHERE candidate_id = ?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("i", $candidate_id);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }
    public function READ_AUDIT($orgs, $rowID) {
        global $db;

        $sql = "SELECT *
                FROM votes
                WHERE org = ? AND candidate_id = ? ORDER BY voter_name ASC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ss", $orgs, $rowID);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }
    public function READ_VOTERS($type) {
        global $db;

        $sql = "SELECT DISTINCT course
                FROM voters
                WHERE Level=? ORDER BY Level ASC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $type);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }

    public function HOPELESS($stud_id) {
        global $db;

        $sql = "SELECT *
                FROM voters
                WHERE stud_id=?";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $stud_id);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }


}
