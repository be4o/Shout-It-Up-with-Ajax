<?php
include_once('database.php');
/*Select Query*/
	$shouts = mysql_query("Select * from shouts order by id DESC");
	
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Shout It Up</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<div id="container">
	<header>
		<h1>Shout It Up</h1>
	</header>	
		<div id="shouts">
			<ul id="shoutslist">
				<?php
					while($row = mysql_fetch_assoc($shouts)):
				?>				
				<li class="shout"><span><?=$row['time']?> - </span><span id="userspan"><?=$row['user']?></span>: <?=$row['message']?></li>
				<?php endwhile; ?>
			</ul>
		</div>
		<div id="input">			
			<div id="error">				
			</div>	
			
			
				<input type="text" name="user" id="user" placeholder="Your Name"/>
				<input type="text" name="message" id="message" placeholder="Your message"/>
				</br>				
				<input class="shout-out" id="btnsub" type="submit" name="submit" value="Shout It Out"/>
			
		</div>
	</div>
	<script src="js/ajax.js"></script>
</body>
</html>