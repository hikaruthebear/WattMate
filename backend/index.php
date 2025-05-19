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
  case 'fetch_bill_summary': {
    fetch_bill_summary();
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
  $query = "SELECT CONCAT(u.Firstname , ' ', u.Lastname ) as Name, u.Phone, u.Email, u.MeterID, a.AddressName FROM `users` as u JOIN addresses as a ON a.AddressID = u.AddressID";

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

function fetch_bill_summary()
{
  // SQL query to get total amount, total kWh used, and average rate grouped by date
  $query = "
  SELECT `Date`, SUM(`Amount`) AS `TotalAmount`, 
      SUM(`CurrentReading` - `PreviousReading`) AS `TotalKwhUsed`, 
      AVG(`Rate`) AS `AverageRate`
  FROM 
      `bill`
  GROUP BY 
      `Date`
  ORDER BY 
      `Date`
  ";

  global $db_connection, $res;

  // Check if database connection exists
  if (!$db_connection) {
    $res['error'] = true;
    $res['message'] = 'Database connection failed';
    echo json_encode($res);
    exit();
  }

  // Prepare the SQL statement
  $statement = $db_connection->prepare($query);

  // Execute the statement
  if ($statement->execute()) {
    $result = $statement->get_result();
    $statement->close();

    // Initialize an array to store the fetched data
    $data = [];

    // Fetch all rows
    while ($row = $result->fetch_assoc()) {
      $data[] = $row;
    }

    // Return the data as a JSON response
    echo json_encode(['error' => false, 'billSummary' => $data]);
  } else {
    // Handle query execution failure
    $res['error'] = true;
    $res['message'] = 'Query execution failed';
    echo json_encode($res);
  }
}

