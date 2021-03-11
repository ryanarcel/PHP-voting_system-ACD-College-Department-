
<?php
session_start();
$connect = mysqli_connect("localhost", "root", "", "voting_system");
$output = '';
$level = $_SESSION['ADMIN_TYPE'];
$kuhaa = $_SESSION['org'];
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM voters
  WHERE Level='$level' AND course='$kuhaa' AND name LIKE '%".$search."%'
 ";
}
else
{
 $query = "
  SELECT * FROM voters WHERE Level='$level' AND course='$kuhaa' ORDER BY name ASC
 ";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">
   <table class="table table-bordered table-condensed table-striped">
    <tr>
     <th>Student ID</th>
     <th>Name</th>
     <th>Course(Standing)/Year</th>
     <th>Type</th>
    
    </tr>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>
   <td>'.$row["stud_id"].'</td>
    <td>'.$row["name"].'</td>
    <td>'.$row["course"].' - '.$row["year"].'</td>
    <td>'.$row["Level"].'</td>
    
   </tr>
  ';
 }
 echo $output;
}
else
{
 echo 'Data Not Found';
}
?>
