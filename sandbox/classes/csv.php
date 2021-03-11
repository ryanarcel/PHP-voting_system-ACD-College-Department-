<?php

class csv extends mysqli
{
	private $state_csv = false;
	public function __construct()
	{
		parent:: __construct("localhost", "root", "", "voting_system");
		if($this->connect_error){
			echo "Fail to Connect to Database : ". $this->connect_error;
		}
	}

	public function import($file)
	{
		// $b = "DELETE FROM voters";
		// if ( $this->query($b) ){
		// 	$this->state_csv = true;
		// }
		// else{
		// 	$this->state_csv = false;
		// 	echo $this->error;
		// }
		$file = fopen($file, 'r');
		while ($row = fgetcsv($file)){
		$value = "'". implode("','", $row) ."'";
		$q = "INSERT INTO voters(id,name,course,year,Level,stud_id, class, stud_pass) VALUES(". $value .")";
		if ( $this->query($q) ){
			$this->state_csv = true;
		}
		else{
			$this->state_csv = false;
			echo $this->error;
		}
		}
		if($this->state_csv){
			echo "<div class='alert alert-success'>Succesfully Imported</div>";
		}else{
			echo "<div class='alert alert-success'>Something went wrong</div>";
		}
	}
}

?>
