<?php
//connection
//include("../includes/session.php");
//require ("../includes/DBConnection.php");

$conn = mysqli_connect('localhost', 'root', 'root','scheduling');
	 if (!$conn)
    {
	 die('Could not connect: ' . mysqli_error($conn));
	}
	//echo 'Connected successfully' . 'iancuello';
	mysqli_select_db( $conn,"scheduling");
	
	

//Retrieving function_exists
function mysql_result($result, $row, $field = 0) {
 			   // Adjust the result pointer to that specific row
    			$result->data_seek($row);
 			   // Fetch result array
 			   $data = $result->fetch_array();
 
 			   return $data[$field];
				}	



######   PROFESSOR   #######

$proFile=fopen("prof.cfg","w");
// sending query-- select teacher_id and teacher_name from profile table
$result = mysqli_query($conn,"SELECT teacher_id, teacher_name FROM `profile`");

if (!$result) 
	{
    die("Query to show fields from table failed");
	}
	
$numberOfRows = mysqli_NUM_ROWS($result);
if($numberOfRows == 0) 
	{
	echo 'Sorry No Record Found!';
	}
else if ($numberOfRows > 0) 
	{
	$i=0;
	while ($i<$numberOfRows)
		{		
			$prof_id = MYSQL_RESULT($result,$i,"teacher_id");
				$txt = $prof_id."\n";
				fwrite($proFile, $txt);
			
			$prof_name = MYSQL_RESULT($result,$i,"teacher_name");
				$txt = $prof_name."\n";
				fwrite($proFile, $txt);
			
			//echo $profile_no ."  - ".$faculty_name."<br/>" ;			
		$i++;		
		}
	}
	
fclose($proFile);

###### 		COURSE	  #######

$courseFile=fopen("course.cfg","w");
// sending query-- select teacher_id and teacher_name from profile table
$result = mysqli_query($conn,"SELECT sub_name,sub_id FROM subjects ");

if (!$result) 
	{
    die("Query to show fields from table failed");
	}
	
$numberOfRows = mysqli_NUM_ROWS($result);
if($numberOfRows == 0) 
	{
	echo 'Sorry No Record Found!';
	}
else if ($numberOfRows > 0) 
	{
	$i=0;
	while ($i<$numberOfRows)
		{		
			$subject_id = MYSQL_RESULT($result,$i,"sub_id");
				$txt = $subject_id."\n";
				fwrite($courseFile, $txt);
			
			$subject_name = MYSQL_RESULT($result,$i,"sub_name");
				$txt = $subject_name."\n";
				fwrite($courseFile, $txt);
			
		$i++;		
		}
	}
	
fclose($courseFile);


######   ROOM   #######

$roomFile=fopen("room.cfg","w");
// sending query-- select teacher_id and teacher_name from profile table
$result = mysqli_query($conn,"SELECT sub_name,sub_id FROM subjects ");

if (!$result) 
	{
    die("Query to show fields from table failed");
	}
	
$numberOfRows = mysqli_NUM_ROWS($result);
if($numberOfRows == 0) 
	{
	echo 'Sorry No Record Found!';
	}
else if ($numberOfRows > 0) 
	{
	$i=0;
	while ($i<$numberOfRows)
		{		
			$room_name = MYSQL_RESULT($result,$i,"room_name");
				$txt = $room_name."\n";
				fwrite($roomFile, $txt);
					
			$room_id = MYSQL_RESULT($result,$i,"room_id");
				$txt = $room_id."\n";
				fwrite($roomFile, $txt);
			
			$room_size = MYSQL_RESULT($result,$i,"room_size");
				$txt = $room_size."\n";
				fwrite($roomFile, $txt);
			
		$i++;		
		}
	}
	
fclose($roomFile);

######   GROUP  #######

$groupFile=fopen("group.cfg","w");
// sending query-- select teacher_id and teacher_name from profile table
$result = mysqli_query($conn,"SELECT sub_name,sub_id FROM subjects ");

if (!$result) 
	{
    die("Query to show fields from table failed");
	}
	
$numberOfRows = mysqli_NUM_ROWS($result);
if($numberOfRows == 0) 
	{
	echo 'Sorry No Record Found!';
	}
else if ($numberOfRows > 0) 
	{
	$i=0;
	while ($i<$numberOfRows)
		{	
			$group_id = MYSQL_RESULT($result,$i,"group_id");
				$txt = $group_id."\n";
				fwrite($groupFile, $txt);
			
			$group_name = MYSQL_RESULT($result,$i,"group_name");
				$txt = $group_name."\n";
				fwrite($groupFile, $txt);
			
			$group_size = MYSQL_RESULT($result,$i,"group_size");
				$txt = $group_size."\n";
				fwrite($groupFile, $txt);
			
		$i++;		
		}
	}
	
fclose($groupFile);

######   CLASS   #######


$classFile=fopen("class.cfg","w");
// sending query-- select teacher_id and teacher_name from profile table
$result = mysqli_query($conn,"SELECT sub_name,sub_id FROM subjects ");

if (!$result) 
	{
    die("Query to show fields from table failed");
	}
	
$numberOfRows = mysqli_NUM_ROWS($result);
if($numberOfRows == 0) 
	{
	echo 'Sorry No Record Found!';
	}
else if ($numberOfRows > 0) 
	{
	$i=0;
	while ($i<$numberOfRows)
		{		
			$prof_id = MYSQL_RESULT($result,$i,"teacher_id");
				$txt = $prof_id."\n";
				fwrite($classFile, $txt);
					
			$course_id = MYSQL_RESULT($result,$i,"course_id");
				$txt = $course_id."\n";
				fwrite($classFile, $txt);
			
			$class_duration = MYSQL_RESULT($result,$i,"sub_lechrsperday"); //its actually giving L: lecture hrs/week
				$txt = $class_duration."\n";
				fwrite($classFile, $txt);
			
			
		$i++;		
		}
	}
	
fclose($classFile);

?> 