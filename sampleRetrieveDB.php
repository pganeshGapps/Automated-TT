<!doctype html>
<html>
<head>
<meta charset="utf-8">
<!-- TemplateBeginEditable name="doctitle" -->
<title>Untitled Document</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->

<?php
$conn = mysqli_connect('localhost', 'root', 'root','scheduling');
	 if (!$conn)
    {
	 die('Could not connect: ' . mysql_error());
	}
	//echo 'Connected successfully' . 'iancuello';
	mysqli_select_db( $conn,"scheduling");
?>

</head>

<body>
</body>
</html>
