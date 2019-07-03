<?php
$db_server = "localhost";
$db_username = "root";
$db_password = "";
$db_database = "samcis";


$last_name=$_POST['last_name'];
$first_name=$_POST['first_name'];
$middle_name=$_POST['middle_name'];
$birthdate=$_POST['birthdate'];
$provincial_add=$_POST['provincial_add'];
$baguio_add=$_POST['baguio_add'];
$contactno=$_POST['contactno'];
$position=$_POST['position'];
$status=$_POST['status'];
$requirements=$_POST['requirements'];




$conn = new PDO("mysql:host=$db_server;dbname=$db_database", $db_username, $db_password);

$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$sql = "INSERT INTO registration (last_name, first_name, middle_name, birthdate, provincial_add, baguio_add, contactno,position,status,requirements )
VALUES ('$last_name','$first_name', '$middle_name',  '$birthdate', '$provincial_add', '$baguio_add', '$contactno', '$position', '$status', '$requirements')";

$conn->exec($sql);
echo "<script>alert('Account successfully added!'); window.location='admission.php'</script>";
?>