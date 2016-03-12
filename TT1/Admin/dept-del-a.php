<?php
  require ("../includes/DBConnection.php");  
?>  
	
<?php
	$dept_id =$_REQUEST['Dept'];
	
	// sending query
	mysql_query("DELETE FROM dept WHERE dept_id = '$dept_id'")
	or die(mysql_error());  	
	
	header("Location: deptlist-a.php");
?>