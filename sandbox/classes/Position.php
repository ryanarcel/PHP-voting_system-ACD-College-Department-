<?php
class Position
{
    public function INSERT_POS($org, $pos, $type, $stat, $heir) {
        global $db;

        //Check basin naanay existing position
        $sql = "SELECT *
                FROM positions
                WHERE org = ?
                AND pos = ?
                AND hierarchy = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("sss", $org, $pos, $heir);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        if($result->num_rows > 0) {
            echo "<div class='alert alert-danger'>Sorry the position you entered is already inserted in the database.</div>";
        }
        else {

            $sql = "INSERT INTO positions(org, pos, level, stat, hierarchy)VALUES(?, ?, ?, ?, ?)";
            if(!$stmt = $db->prepare($sql)) {
                echo $stmt->error;
            } else {
                $stmt->bind_param("sssss", $org, $pos, $type, $stat, $heir);
            }
            if($stmt->execute()) {
                echo "<div class='alert alert-success'>Position was inserted successfully.</div>";
            }
            $stmt->free_result();
            }
        return $stmt;
    }

    public function READ_POS($types) {
        global $db;


        $sql = "SELECT *
                FROM positions WHERE level=? AND stat='Active'
                ORDER BY id ASC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $types);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }

    public function EDIT_POS($pos_id) {
        global $db;


        $sql = "SELECT *
                FROM positions
                WHERE id = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("i", $pos_id);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }

    public function UPDATE_POS($org, $pos, $pos_id) {
        global $db;


        $sql = "UPDATE positions
                SET org = ?, pos = ?
                WHERE id = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ssi", $org, $pos, $pos_id);
        }

        if($stmt->execute()) {
            echo "<div class='alert alert-success'>Position was updated successfully.<a href='add_pos.php'><span class='glyphicon glyphicon-backward'></span></a></div>";
        }
        $stmt->free_result();
        return $stmt;
    }

    public function DELETE_POS($nom_org, $nom_pos, $posId) {
        global $db;

         $sql = "SELECT *
                FROM nominees
                WHERE org = ? AND pos = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("ss", $nom_org, $nom_pos);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        // if($result->num_rows > 0) {
        //     echo "<div class='alert alert-danger'>Sorry the position cannot be deleted.</div>";
        // } else {

             $sql = "DELETE FROM positions WHERE org = ? AND pos = ? LIMIT 1";
            if(!$stmt = $db->prepare($sql)) {
                echo $stmt->error;
            } else {
                $stmt->bind_param("ss", $nom_org, $nom_pos);
            }
            if($stmt->execute()) {
              $another = "DELETE FROM nominees WHERE posId = '$posId'";
              $db->query($another);

              header("location: add_pos.php");
              exit();
       }
            $stmt->free_result();
      //  }
        return $stmt;
    }

    public function READ_POS_BY_ORG($org) {
        global $db;

        $sql = "SELECT *
                FROM positions
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
    public function READ_ORG_BY_POS($org) {
        global $db;

        $sql = "SELECT *
                FROM nominees
                WHERE name = ?";
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
    public function READ_LIST($org) {
        global $db;

        $sql = "SELECT *
                FROM nominees
                WHERE party = ? ORDER BY name ASC";
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
    public function INSERT_PARTY($partylist, $type, $active) {
        global $db;

        $sql = "SELECT *
                FROM partylist
                WHERE party_name = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $partylist);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        if($result->num_rows > 0) {
            echo "<div class='alert alert-danger'>Sorry the party list you are trying to insert already exists in the database.</div>";
        } else {

            $sql = "INSERT INTO partylist(party_name, type, stat)VALUES(?, ?, ?)";
            if(!$stmt = $db->prepare($sql)) {
                echo $stmt->error;

            } else {
                $stmt->bind_param("sss", $partylist, $type, $active);
            }

            if($stmt->execute()) {
                echo "<div class='alert alert-success'>Party List was inserted successfully.</div>";
            }
            $stmt->free_result();
        }
        $result->free();
        return $stmt;
    }

    public function READ_PARTY($types) {
        global $db;

        $sql = "SELECT *
                FROM partylist WHERE type=? AND stat='Active'
                ORDER BY id DESC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $types);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }
    public function REREAD_PARTY($types) {
        global $db;

        $sql = "SELECT *
                FROM partylist WHERE type=? AND stat='Inactive'
                ORDER BY id DESC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $types);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }
    public function REOPEN_PARTY($party) {
        global $db;

        $sql = "UPDATE partylist
                SET stat = 'Active'
                WHERE party_name = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $party);
        }

        if($stmt->execute()) {
           echo "<div class='alert alert-success'>Reopen successful.</div>";
        }
        $stmt->free_result();
        return $stmt;
    }
    public function CLOSE_PARTY($party) {
        global $db;

        $sql = "UPDATE partylist
                SET stat = 'Inactive'
                WHERE party_name = ?
                LIMIT 1";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $party);
        }

        if($stmt->execute()) {
           echo "<div class='alert alert-success'>Closed successful.</div>";
        }
        $stmt->free_result();
        return $stmt;
    }
    public function READ_ID($types) {
        global $db;

        $sql = "SELECT *
                FROM voters WHERE Level=?
                ORDER BY id DESC";
        if(!$stmt = $db->prepare($sql)) {
            echo $stmt->error;
        } else {
            $stmt->bind_param("s", $types);
            $stmt->execute();
            $result = $stmt->get_result();
        }
        $stmt->free_result();
        return $result;
    }
}
