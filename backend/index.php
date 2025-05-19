<?php

include_once '.config/db.php';
include_once '.config/header.php';
include_once 'get-functions.php';
include_once 'post-functions.php';

$res = ['error' => false, 'message' => ''];


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $raw = file_get_contents("php://input");
  $data = json_decode($raw, true);

  $post_action = isset($data['action']) ? $data['action'] : null;
  // echo json_encode(['message' => $data]);

  switch ($post_action) {
    case 'register': {
      register($data['User']);
      break;
    }
    case 'login': {
      login($data);
      break;
    }
    default: {
      $res['error'] = true;
      $res['message'] = 'Invalid action';
      break;
    }
  }

} elseif ($_SERVER['REQUEST_METHOD'] === 'GET') {
  $get_action = isset($_GET['action']) ? $_GET['action'] : null;

  switch ($get_action) {
    case 'fetch_users': {
      fetch_users();
      break;
    }
    case 'fetch_bill_summary': {
      fetch_bill_summary();
      break;
    }
    case 'fetch_bill_by_date': {
      fetch_bill_by_date();
      break;
    }
    default: {
      $res['error'] = true;
      $res['message'] = 'Invalid action';
      break;
    }

  }
} else {
  http_response_code(405); // Method Not Allowed
  echo json_encode(['success' => false, 'message' => 'Method not allowed']);
}





