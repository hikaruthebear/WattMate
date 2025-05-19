<?php

header('Access-Control-Allow-Origin: *'); // Consider restricting this to your frontend domain in production
header('Content-Type: application/json');
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Content-Type');

// Handle preflight requests quickly
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    // Just return the headers and exit for OPTIONS requests
    exit(0);
}
