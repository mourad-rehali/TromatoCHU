<?php 

    $localhost ="localhost";
    $username="root";
    $password="";
    $db="traumatou";

    $connect=mysqli_connect($localhost,$username,$password,$db);
    if($connect){    
    }
    else {
        echo 'non connected';
    }

?>