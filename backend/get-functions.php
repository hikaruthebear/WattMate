<?php

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

function fetch_bill_by_date(): void {
  global $db_connection;

  if (!isset($_GET['date'])) {
    echo json_encode(['success' => false, 'error' => 'Missing date parameter']);
    return;
  }

  $date = $_GET['date'];

  $sql = "
    SELECT 
      CONCAT(u.Firstname, ' ', u.Lastname) AS Name,
      b.PreviousReading,
      b.CurrentReading,
      (b.CurrentReading - b.PreviousReading) AS kWh_Used,
      b.Amount
    FROM bill b
    JOIN users u ON b.UserID = u.UserID
    WHERE b.Date = ?
  ";

  $stmt = $db_connection->prepare($sql);
  if (!$stmt) {
    echo json_encode(['success' => false, 'error' => $db_connection->error]);
    return;
  }

  $stmt->bind_param("s", $date);
  if (!$stmt->execute()) {
    echo json_encode(['success' => false, 'error' => $stmt->error]);
    return;
  }

  $result = $stmt->get_result();
  $data = $result->fetch_all(MYSQLI_ASSOC);

  $stmt->close();

  echo json_encode(['success' => true, 'data' => $data]);
}

// Call the function
