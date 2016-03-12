<?php
  require ("../includes/DBConnection.php");  
?>  
	
<?php
	$year_id =$_REQUEST['year_id'];
	
	// sending query
	mysql_query("DELETE FROM school_yr WHERE year_id = '$year_id'")
	or die(mysql_error());  	
	
	header("Location: yearlist-a.php");
?>