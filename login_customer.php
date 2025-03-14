<?php
session_start(); // Starting Session
$error=''; // Variable To Store Error Message

if (isset($_POST['submit'])) {
if (empty($_POST['customer_email']) || empty($_POST['customer_password'])) {
$error = "Email or Password is invalid";
}
else
{
// Define $username and $password
$customer_email=$_POST['customer_email'];
$customer_password=$_POST['customer_password'];
// Establishing Connection with Server by passing server_name, user_id and password as a parameter
require 'connection.php';
$conn = Connect();

// SQL query to fetch information of registerd users and finds user match.
$query = "SELECT customer_email, customer_password FROM customers WHERE customer_email=? AND customer_password=? LIMIT 1";

// To protect MySQL injection for Security purpose
$stmt = $conn->prepare($query);
$stmt -> bind_param("ss", $customer_email, $customer_password);
$stmt -> execute();
$stmt -> bind_result($customer_email, $customer_password);
$stmt -> store_result();

if ($stmt->fetch())  //fetching the contents of the row
{
	$_SESSION['login_customer']=$customer_email; // Initializing Session
	header("location: index.php"); // Redirecting To Other Page
} else {
$error = "Email or Password is invalid";
}
mysqli_close($conn); // Closing Connection
}
}
?>