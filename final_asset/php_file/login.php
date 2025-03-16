<?php
$conn = new mysqli("localhost", "root", "", "flutter_app");

$email = $_POST['email'];
$password = $_POST['password'];

$result = $conn->query("SELECT * FROM users WHERE email='$email'");
$user = $result->fetch_assoc();

if ($user && password_verify($password, $user['password'])) {
    echo json_encode(["success" => true, "email" => $email]);
} else {
    echo json_encode(["success" => false, "message" => "Invalid email or password"]);
}
$conn->close();
?>
