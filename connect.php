<?php
$username = filter_input(INPUT_POST,'username');
$password= filter_input(INPUT_POST,'password');
if(!empty($username)){
	if(!empty($password)){
$conn=mysqli_connect("localhost","root","","user1");
if(!$conn)
	die("connection Failed: ".mysqli_connect_error());
else{
	$sql="INSERT INTO details(name,pass)
	      values ('$username','$password');";
	if($conn->query($sql)){
		echo "new record is inserted <br>";
	}  
	else{
		echo "Error: ".$sql."<br>".$conn->error;
	}   
	$conn->close(); 
}
	}
	else{
		echo " enter password ";
		die();
	}

}
else{
	echo "username shouldn't be empty <br>";
	die();
}
?>