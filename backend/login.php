<?php
include_once 'db.php';
include_once 'header.php';

$email = $_POST['phone'];
$password = $_POST['password'];

if (empty($email) || empty($password)) {
    echo json_encode(['error' => true, 'message' => 'Email and password are required']);
    exit();
}

$query = "SELECT * FROM Users WHERE phone = ? AND password = ?";
$statement = $db_connection->prepare($query);
$statement->bind_param("ss", $email, $password);
$statement->execute();
$result = $statement->get_result();
$statement->close();

if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();
    echo json_encode(['error' => false, 'message' => 'Login successful', 'user' => $user]);
} else {




    
    echo json_encode(['error' => true, 'message' => 'Invalid email or password']);
}
// Close the database connection
$db_connection->close();
