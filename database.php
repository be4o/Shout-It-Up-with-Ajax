<?php
	$con = mysql_connect('localhost','root','root');
	mysql_select_db('shoutit');
	if(mysqli_connect_errno()){
		echo "Can't Connect to mysql ".mysqli_connect_error();
	}
?>