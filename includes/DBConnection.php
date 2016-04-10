<?php  
	//$conn = mysqli_connect('localhost', 'root', '','schedulingv4');

	$conn = mysqli_connect('localhost', 'root', '');

	 if (!$conn)
    {
	 die('Could not connect: ' . mysqli_error($conn));
	}
	//echo 'Connected successfully' . 'iancuello';
	mysqli_select_db( $conn,"last1");
?>