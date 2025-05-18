<?php

include_once '.config/db.php';
include_once 'header.php';

$res = ['error' => false, 'message' => ''];
$action = isset($_GET['action']) ? $_GET['action'] : null;

switch ($action) {
  case 'fetch_users': {
    fetch_users();
    break;
  }
  default: {
    $res['error'] = true;
    $res['message'] = 'Invalid action';
    break;
  }
}

function fetch_users()
{
  $query = "SELECT CONCAT(u.Firstname , ' ', u.Lastname ) as Name, u.Phone, u.Email, u.MeterID, a.AddressName FROM `Users` as u JOIN Addresses as a ON a.AddressID = u.AddressID";

  global $db_connection, $res;

  if (!$db_connection) {
    $res['error'] = true;
    $res['message'] = 'Database connection failed';
    echo json_encode($res);
    exit();
  }



  $statement = $db_connection->prepare($query);
  $statement->execute();
  $res = $statement->get_result();
  $statement->close();

  $data = [];

  while ($Users = $res->fetch_assoc()) {
    $data[] = $Users;
  }

  echo json_encode(['error' => false, 'users' => $data]);
}

function fetch_bill_list() : void {

}

function fetch_user_bills() : void {
  
}