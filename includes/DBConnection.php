<?php  
<<<<<<< HEAD
	$conn = mysqli_connect('localhost', 'root', '','last1');
=======
	$conn = mysqli_connect('localhost', 'root', '','schedulingv4');
>>>>>>> 539693a47ef5493c7231c3f4c7861a6c3e669469
	 if (!$conn)
    {
	 die('Could not connect: ' . mysqli_error());
	}
	//echo 'Connected successfully' . 'iancuello';
	mysqli_select_db( $conn,"last1");
?>