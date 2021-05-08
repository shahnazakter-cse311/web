<?php 
include "config.php";

	if (isset($_POST['submit'])) {
		
		$id = $_POST['id'];
		$user_id = $_POST['user_id'];
		$password = $_POST['password'];
		$department = $_POST['department'];
		$page = $_POST['page'];
        $admin_access = $_POST['admin_access'];


		$sql = "INSERT INTO `users`(`id`, `user_id`, `password`, `department`, `page`, `admin_access`) VALUES ('$id', '$user_id', '$password', '$department', '$page', '$admin_access')";


		$result = $conn->query($sql);
    if ($result == TRUE) {
        echo "New record created successfully.";
    }
    else{
        echo "Error:". $sql . "<br>". $conn->error;
    }
    $conn->close();
  }

?>

<!DOCTYPE html>
<html>
<body>

<h2>Signup Form</h2>

<form action="" method="POST">
  <fieldset>
  <users>Personal information:</users>
  
    id:<br>
    <input type="number" name="id">
    <br>
    user_id:<br>
    <input type="text" name="user_id">
    <br>
    password:<br>
    <input type="password" name="password">
    <br>
    department:<br>
    <input type="text" name="department">
    <br>
    page:<br>
    <input type="text" name="page">
    <br>
    admin_access:<br>
    <input type="number" name="admin_access">
    <br>
    <input type="submit" name="submit" value="submit">
  </fieldset>
</form>

</body>
</html>