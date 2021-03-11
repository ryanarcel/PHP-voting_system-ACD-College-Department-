<?php
//Include database connection
require("../config/db.php");
?>
<html>
<?php
$org = trim($_POST['stud_id']);
$sql = "SELECT * FROM voters WHERE stud_id = ?";
if(!$stmt = $db->prepare($sql)) {
    echo $stmt->error;
} else {
    $stmt->bind_param("s", $org);
    $stmt->execute();
    $result = $stmt->get_result();
    $results = $stmt->get_result();
}
?>

<?php if($result) { ?>
    <?php while($rowPos = $result->fetch_assoc()) { ?>
        <option value="<?php echo $rowPos['name']; ?>"><?php echo $rowPos['name']; ?></option>
    <?php } //End while ?>
<?php } //End if ?>

</html>