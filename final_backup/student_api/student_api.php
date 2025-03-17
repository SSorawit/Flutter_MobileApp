<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "school_db";

// เชื่อมต่อ MySQL
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("เชื่อมต่อฐานข้อมูลล้มเหลว: " . $conn->connect_error);
}

// รับข้อมูลจาก Flutter
$name = $_POST['name'];
$phone = $_POST['phone'];

// บันทึกข้อมูลลง MySQL
$sql = "INSERT INTO students (name, phone) VALUES ('$name', '$phone')";
if ($conn->query($sql) === TRUE) {
    echo "บันทึกข้อมูลสำเร็จ";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
