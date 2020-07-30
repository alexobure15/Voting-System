<?php
	$conn = new mysqli('localhost', 'root', 'admin', 'votingsystem');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>