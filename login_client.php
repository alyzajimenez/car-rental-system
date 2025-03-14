<?php
session_start(); // Starting Session
$error=''; // Variable To Store Error Message

if (isset($_POST['submit'])) {
if (empty($_POST['client_email']) || empty($_POST['client_password'])) {
$error = "Email or Password is invalid";
}
else
{
// Define $username and $password
$client_email=$_POST['client_email'];
$client_password=$_POST['client_password'];
// Establishing Connection with Server by passing server_name, user_id and password as a parameter
require 'connection.php';
$conn = Connect();

// SQL query to fetch information of registerd users and finds user match.
$query = "SELECT client_email, client_password FROM clients WHERE client_email=? AND client_password=? LIMIT 1";

// To protect MySQL injection for Security purpose
$stmt = $conn->prepare($query);
$stmt -> bind_param("ss", $client_email, $client_password);
$stmt -> execute();
$stmt -> bind_result($client_email, $client_password);
$stmt -> store_result();

if ($stmt->fetch())  //fetching the contents of the row
{
	$_SESSION['login_client']=$client_email; // Initializing Session
	header("location: index.php"); // Redirecting To Other Page
} else {
$error = "Email or Password is invalid";
}
mysqli_close($conn); // Closing Connection
}
}
?>