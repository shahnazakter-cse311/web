<?php 
include "config.php";


	if (isset($_POST['update'])) {
		$id = $_POST['id'];
		$user_id = $_POST['user_id'];
		$password = $_POST['password'];
		$department = $_POST['department'];
		$page = $_POST['page'];
		$admin_access = $_POST['admin_access'];

		$sql = "UPDATE `users` SET `id`='$id', `user_id`='$user_id',`password`='$password',`department`='$department',`page`='$page',`admin_access`='$admin_access' WHERE `id`='$user_id'";
		
		$result = $conn->query($sql);

		if ($result == TRUE) {
			echo "Record updated successfully.";
		}else{
			echo "Error:" . $sql . "<br>" . $conn->error;
		}
	}


if (isset($_GET['id'])) {
	$user_id = $_GET['id'];

	$sql = "SELECT * FROM `users` WHERE `id`='$user_id'";

	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
		
		while ($row = $result->fetch_assoc()) {
			$id = $row['id'];
			$user_id = $row['user_id'];
			$password = $row['password'];
			$department  = $row['department'];
			$page = $row['page'];
			$admin_access = $row['admin_access'];
		}

	?>
		<h2>User Update Form</h2>
		<form action="" method="post">
		  <fieldset>
		    <users>Personal information:</users>
		    id:<br>
		    <input type="number" name="id" value="<?php echo $id; ?>">
		    <br>
		    user_id:<br>
		    <input type="text" name="user_id" value="<?php echo $user_id; ?>">
		    <br>
		    Password:<br>
		    <input type="password" name="password" value="<?php echo $password; ?>">
		    <br>
            department:<br>
		    <input type="text" name="department" value="<?php echo $department; ?>">
		    <br>
		    page:<br>
            <input type="text" name="page" value="<?php echo $page; ?>">
		    <br>
            admin_access:<br>
            <input type="number" name="admin_access" value="<?php echo $admin_access; ?>">
		    <br>
		    
		    <input type="submit" value="Update" name="update">
		  </fieldset>
		</form>

		</body>
		</html>




	<?php
	} else{
		
		header('Location: view.php');
	}

}
?>