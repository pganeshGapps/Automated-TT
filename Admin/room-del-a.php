<?php
  require ("../includes/DBConnection.php");  
?>  
	
<?php
	$room_id =$_REQUEST['Room'];
	
	// sending query
	mysql_query("DELETE FROM room WHERE room_id = '$room_id'")
	or die(mysql_error());  	
	
	header("Location: roomlist-a.php");
?>