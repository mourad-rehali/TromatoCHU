<?php 
include("../data/connexion.php") ;

if (isset($_POST['edit'])) {

    $IPP = $_POST['ipp'];
    $nom = $_POST['nom'];
    $date = $_POST['date'];
    $sexe = $_POST['sexe'];
    $typepiece = $_POST['typepiece'];
    $cin = $_POST['cin'];
    $ville = $_POST['ville'];
    $adresse = $_POST['adresse'];
    $tel = $_POST['telephone'];
    $tel1 = $_POST['telephone1'];
    $email = $_POST['email'];
    $serves = $_POST['serves'];
  
  
    $query= "UPDATE `patients` SET `nom`='$nom',`date`='$date',`sexe`='$sexe',`typepiece`='$typepiece',`cin`='$cin',`ville`='$ville',`adresse`='$adresse',`telephone`='$tel',`telephone1`='$tel1',`email`='$email',`couvertureSociale`='$serves',`Nom_Dossier`='',`Nom_Utilisateur_Cree`='',`Date_Creation`='',`Nom_Utilisateur_Modifier`='',`Date_Modification`='' WHERE =  `IPP` =  $IPP";
    $result = $connect->query($query);
  
       echo $result ;
   
  }


  
?>