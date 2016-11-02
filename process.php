<?php
	include_once("database.php");
	
		$user = htmlspecialchars($_POST['user']);
		$message = htmlspecialchars($_POST['message']);
		$time = date("h:i:s");		
		
		if(!isset($user) || $user == "" || !isset($message) || $message == ""){
			echo "no";
			exit();
		}else{
			$res = $query = "insert into shouts(user, message, time) values('$user', '$message', now())";
			$n = mysql_query("$query");
			if($n)
				echo "yes";
			else
				echo "no";
			exit();
		}
	
?>