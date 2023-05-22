<?php
session_start();

$host = 'devkinsta_db';
$dbname = 'Contact_us';
$dbuser = 'root';
$dbpassword = 'aqvEwR9D41FvwC6l';
$database = new PDO (
    "mysql:host=$host;dbname=$dbname",
    $dbuser,
    $dbpassword
);

$name = $_POST["name"];
$email = $_POST["email"];
$message = $_POST["message"];

if (empty($name) || empty($email) || empty($message)) {
    $error = "All fields are required";
} else if (strlen($message) < 10) {
    $error = "Please enter more than 10 words";
} else {
    $success = "Your message has been Submitted";

    $sql = " INSERT INTO contactus (`name`, `email`, `message`) VALUES (:name, :email, :message)";
    $query = $database->prepare($sql);
    $query->execute([
        'name' => $name,
        'email' => $email,
        'message' => $message
    ]);
}

if (isset($error)) {
    // store the error message in session
    $_SESSION['error'] = $error;
    // redirect the user back to /login
    header("Location: index.php");
    exit;
}

if (isset($success)) {
    $_SESSION['success'] = $success;
    // redirect the user back to /login
    header("Location: index.php");
    exit;
}
?>