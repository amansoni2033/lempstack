<html>
<head>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
</style>
</head>
<body>

<h2 style="color:red;">LEMP Stack with Phpmyadmin</h2>
<div style="overflow-x:auto;">
    <?php

// Create connection
$link = mysqli_connect("localhost", "amansoni", "amansoniabes@2157", "amanDB");          //server name as localhost


// Check connection
if (!$link) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

echo "Success: A proper connection to MySQL was made! The my_db database is great." . PHP_EOL;
echo "Host information: " . mysqli_get_host_info($link) . PHP_EOL;

echo "<br>";
$sql = "SELECT id, name, mobile_number, email_id FROM thinksysTrainee";
$result = $link->query($sql);

if($result->num_rows > 0) {
echo "<table border='1'>
<tr>
  <th>Emp. Id</th>
  <th>Full Name</th>
  <th>Email</th>
  <th>Mobile</th>
</tr>";
while($row = $result->fetch_assoc()) {
echo "<tr>";
echo "<td>" .$row["id"]."</td>";
echo "<td>" .$row["name"]."</td>";
echo "<td>" .$row["email_id"]."</td>";
echo "<td>" .$row["mobile_number"]."</td>";
echo "</tr>";
}
echo "</table>";
} else {
echo "No Data !";
}

mysqli_close($link);
?>

</div>

</body>
</html>

