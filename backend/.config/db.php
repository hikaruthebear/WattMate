<?php
// error_reporting(E_ALL);
// ini_set('display_errors', 1);

// Database configuration
$host = "127.0.0.1";      // MySQL host (typically localhost when using XAMPP)
$username = "root";       // Default XAMPP username is root
$password = "";           // Default XAMPP password is empty
$dbname = "wattmate_db"; // Your database name
$port = 3306;

try {
    $db_connection = new mysqli($host, $username, $password, $dbname, $port);
}catch(mysqli_sql_exception $e){
    die();
}
