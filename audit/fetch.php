
<?php
session_start();

$connect = mysqli_connect("localhost", "root", "", "voting_system");
$output = '';
$kwan = $_SESSION['orgs'];
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * from votes
  WHERE candidate_id='$kwan' and voter_name LIKE '%".$search."%'
 ";
}
else
{
 $query = "
  SELECT * from votes where candidate_id='$kwan'
 ";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">
   <table class="table table bordered">
    <tr>
     <th>Voters ID</th>
     <th>Voters Name</th>
     <th>Election Voted</th>
    </tr>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>
    <td>'.$row["voters_id"].'</td>
    <td>'.$row["voter_name"].'</td>
    <td>'.$row["org"].'</td>
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
