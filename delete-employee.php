<?php
require 'vendor/autoload.php';
Dotenv::load();
   //connect to database
   $servername = $_ENV['MYSQL_HOST'];
   $username = $_ENV['MYSQL_USER'];
   $password = $_ENV['MYSQL_PASSWORD']
   $database = $_ENV['MYSQL_NAME'];

   //Create Connection
   $connection = new mysqli($servername, $username, $password, $database);

   //Check connection stablished or not!
   if ($connection->connect_error) {
       die("Connection failed: " . $connection->connect_error);
   }

   if (isset($_GET["id"])) {
    #if not exist then
        $id = $_GET['id'];
        
        $sql = "DELETE FROM employee WHERE id=$id"; 
        $result = $connection->query($sql);

        // if (!$result) {
        //     die("Invalid query : " . $connection->error);
        //     break;
        // }

}     
   header("location: ./index.php");
   exit;


?>
