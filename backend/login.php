<?php
include_once 'db.php';
include_once 'header.php';

// $phone = $_POST['phone'];
// $password = $_POST['password'];


$phone = "fuck";
$password = "lol";

if (empty($phone) || empty($password)) {
    echo json_encode(['error' => true, 'message' => 'Email and password are required']);
    exit();
}

$query = "SELECT * FROM Users WHERE Phone = ? AND Password = ?";
$statement = $db_connection->prepare($query);
$statement->bind_param("ss", $phone, $password);
$statement->execute();
$result = $statement->get_result();
$statement->close();

if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();
    http_response_code(200);
    echo json_encode(['error' => false, 'message' => 'Login successful', 'user' => $user]);
} else {
    http_response_code(401);
    echo json_encode(['error' => true, 'message' => 'Invalid email or password']);
}

// Close the database connection
$db_connection->close();
