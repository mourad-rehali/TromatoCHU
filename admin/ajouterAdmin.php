<?php


include("../data/connexion.php") ;

$nom= htmlspecialchars(trim( strtolower($_POST['nom'])));
$prenom=htmlspecialchars(trim( strtolower($_POST['prenom'])));
$username=  htmlspecialchars(trim( strtolower($_POST["username"])));
$password=  md5($_POST["password"]);

   $query= " INSERT INTO `admin`(`nom`, `prenom`, `username`, `password`) 
                 VALUES ('$nom','$prenom','$username','$password') " ;

    $result =$connect->query($query);

   





?>