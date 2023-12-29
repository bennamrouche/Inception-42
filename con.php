<?php
// Database connection parameters
$host = 'mariadb';
$username = 'alphaben';
$password = '2019@com';
$database = 'all_data';

// Create a connection to the database
$conn = new mysqli($host, $username, $password, $database);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

echo "Connected successfully";

// Perform database operations here...

// Close the connection
$conn->close();
?>
