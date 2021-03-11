<?php
//Include database connection
require("../config/db.php");
?>
<html>
<?php
$org = trim($_POST['name']);
$sql = "SELECT * FROM voters WHERE name = ?";
if(!$stmt = $db->prepare($sql)) {
    echo $stmt->error;
} else {
    $stmt->bind_param("s", $org);
    $stmt->execute();
    $result = $stmt->get_result();
}
?>

<?php if($result) { ?>
    <?php while($rowPos = $result->fetch_assoc()) { ?>
        <option value="<?php echo $rowPos['course']; ?>"><?php echo $rowPos['course']; ?></option>
    <?php } //End while ?>
<?php } //End if ?>

</html>