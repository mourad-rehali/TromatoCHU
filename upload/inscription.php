<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Patients</title>

  <style>
    .dropdown-item {
      font-size: 15px;
    }

    .connexion table tr th,
    td {
      text-align: center;
    }

    .btn_place {
      position: relative;
      top: -32px;
      left: -208px;


    }

    #search1 {
    /* margin-right: 22px; */
    position: absolute;
    left: 453px;
    /* background-color: white; */
    top: 134px;
}
  </style>
  <?php

  // include("../data/connexion.php") ;
  $con = new PDO("mysql:host=localhost;dbname=traumatou", 'root', '');

  if (isset($_POST["submit1"])) {
    $str = $_POST["ipp"];
    $sth = $con->prepare("SELECT * FROM `patients` WHERE IPP = '$str'");
    $sth->setFetchMode(PDO::FETCH_OBJ);
    $sth->execute();
    if ($row = $sth->fetch()) {
      $vipp = $row->IPP;
      $vnom = $row->nom;
      $vdate = $row->date;
      $vsexe = $row->sexe;
      $vtypepiece = $row->typepiece;
      $vcin = $row->cin;
      $adresse = $row->adresse;
      $telephone = $row->telephone;
      $telephone1 = $row->telephone1;
      $email = $row->email;
      $ville = $row->ville;
      $couvertureSociale = $row->couvertureSociale;
    }
    else {
      $vipp = "";
      $vnom = "";
      $vdate = "";
      $vsexe = "select sexe";
      $vtypepiece = "select Type de piece";
      $vcin = "";
      $adresse = "";
      $telephone = "";
      $telephone1 =   "";
      $email =  "";
      $ville = "";
      $couvertureSociale = "select Couverture Sociale";
    }

  
  } else {
    $vipp = "";
    $vnom = "";
    $vdate = "";
    $vsexe = "select sexe";
    $vtypepiece = "select Type de piece";
    $vcin = "";
    $adresse = "";
    $telephone = "";
    $telephone1 =   "";
    $email =  "";
    $ville = "";
    $couvertureSociale = "select Couverture Sociale";
  }


  


  ?>


</head>

<body>

  <?php



  include("../navBar_footer/nav.php");
  include("../navBar_footer/navBarDeconnecter.php");
  include("../navBar_footer/navBarUser.php");
  $sql1 = "SELECT `id`,`code_s`, `desc_s` FROM `psocial`";
  $result1 = $connect->query($sql1);
  ?>


  <article class="glass">
    <div class="connexion">
      <h3></h3>

      <form action="inscription.php" method="POST">


        <table id="inscription" class="btn_place">
          <tr>
            <td>
            <a style=" text-decoration: none; color: #000;" href=" inscription.php">&#128196; Nouveau</a>
            </td>

            <td>
              <input type="submit" value="&#128190; Enregistrer" name="submit" class="btn btn-secondary" id="">
            </td>
            <td>
              <input type="submit" value="&#128259; Mise à jour" name="submit3" class="btn btn-secondary" id="">
            </td>
            
            <td>
              <input type="submit" value=" &#10060; Supprimer" name="submit2" class="btn btn-secondary" id="">
            </td>

          </tr>
        </table>

        <table id="inscription">
          <tr>
            <td>
              <label for="inputEmail4">IPP</label>
              <input type="text" name="ipp" class="form-control" placeholder="IPP" value="<?php echo $vipp; ?>">
              <input type="submit" name="submit1" value="&#128269;" id="search1">
            </td>
            <td>
              <label for="inputPassword4">NOM</label>
              <input type="text" name="nom" class="form-control" placeholder="nom" value="<?php echo $vnom; ?>">

            </td>
          </tr>
          <tr>
            <td>
              <label>Date de naissance</label>
              <input type="date" name="date" class="form-control" value="<?php echo $vdate; ?>">
            </td>
            <td>
              <label>Sexe</label>
              <select name="sexe" class="input-group date form-control">
                <option value="<?php echo  $vsexe; ?>" selected><?php echo  $vsexe; ?></option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
              </select>
            </td>
          </tr>
          <tr>

          <tr>
            <td>
              <label>Type Pièce d’Id</label>
              <select name="typepiece" class="input-group date form-control">
                <option value="<?php echo $vtypepiece; ?>" selected><?php echo $vtypepiece; ?></option>
                <option value="CIN">CIN</option>
                <option value="INCONNUE">INCONNUE</option>
                <option value="PERMIS DE CONDUIRE">PERMIS DE CONDUIRE</option>
                <option value="PASSPORT">PASSPORT</option>
                <option value="CARTE DE SÉJOUR">CARTE DE SÉJOUR</option>

              </select>
            </td>
            <td>
              <label>Nº Pièce d’Id</label>
              <input type="text" name="cin" class="form-control" value="<?php echo  $vcin; ?>" placeholder="Nº Pièce d’Id">
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <label>Adresse</label>
              <input name="adresse" type="text" class="form-control" placeholder="Adresse"  value=" <?php echo $adresse; ?>">
            </td>
          </tr>

          <tr>
            <td>
              <label>Téléphone Protable</label>
              <input type="tel" name="telephone" class="form-control" placeholder="Téléphone Protable" value=" <?php echo  $telephone; ?>">
            </td>
            <td>
              <label for="inputAddress">Téléphone Domicile</label>
              <input type="tel2" name="telephone1" class="form-control" placeholder="Téléphone Domicile" value=" <?php echo  $telephone1; ?>">
            </td>
          </tr>

          <tr>
            <td colspan="2">
              <label>Email (Optional)</label>
              <input type="email" name="email" class="form-control" placeholder="Email" value=" <?php echo  $email; ?>">
            </td>

          </tr>

          <style>
          </style>
          <tr>

            <td>
              <label>Ville</label>
              <input name="ville" type="text" class="form-control" placeholder="Ville" value="<?php echo  $ville; ?>" >
            </td>

            <td>

              <label>Couverture Sociale</label>
              <select name="serves" class="form-control " title="Choose couverture sociale..." data-live-search="true" data-size="6" data-width="550px">
                 <option value="<?php echo $couvertureSociale; ?>" selected><?php echo $couvertureSociale; ?></option>
                <?php
                if ($result1) {
                  while ($row = $result1->fetch_assoc()) {

                    $value_serv = $row["id"];

                    $servesName = $row["code_s"];

                    echo "<option value=$servesName>$servesName</option>";
                  }
                }

                ?>

              </select>
            </td>
          </tr>

        </table>

        <!--   <div class="btnValider">
          <input type="submit" value="Enregistrer" name="submit" class="btn1" id="btnConnectet">
        </div>
                -->
    </div>

    <div class="espace"></div>

  </article>
  <!------------------------------------------------------ mobile ---------------------------------------------------->



  <?php
  include("../navBar_footer/footer.php");
  include("../header/js.php");


  if (isset($_POST['submit'])) {
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

    //  $select_username = mysqli_query($connect, "SELECT * FROM user WHERE username= '$username'");


    $query = "INSERT INTO `patients`(`IPP`, `nom`, `date`, `sexe`, `typepiece`, `cin`, `ville`, `adresse`, `telephone`, `telephone1`, `email`, `couvertureSociale`, `Nom_Dossier`, `Nom_Utilisateur_Cree`, `Date_Creation`, `Nom_Utilisateur_Modifier`, `Date_Modification`)
      VALUES ($IPP,'$nom','$date','$sexe','$typepiece','$cin',' $ville','$adresse','$tel','$tel1','$email','$serves','','','','','')";
    $result = $connect->query($query);

    if ($result == 1) {

      echo '<script>alert("Ajouter Avec succer")</script>';
    }
  }
//-------------------------supprimer-----------------------
if (isset($_POST['submit2'])) {

  
  $IPP = $_POST['ipp'];
$sql = "DELETE FROM `patients` WHERE `IPP` =  $IPP ";

if ($connect->query($sql) === TRUE) {
  echo '<script>alert("Record deleted successfully")</script>';

} else {
 
  echo '<script>alert("Error deleting record")</script>';

}


}
  
//-------------------------modifer-----------------------


if (isset($_POST['submit3'])) {

  
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

  $sql1 = "UPDATE `patients` SET `nom`= '$nom', `date`='$date', `sexe`='$sexe',`typepiece`='$typepiece' ,`cin`='$cin',`ville`='$ville' , `adresse`='$adresse',`telephone`='$tel', `telephone1`='$tel1',`email`='$email', `couvertureSociale`=' $serves' WHERE `IPP`='$IPP'";

if ($connect->query($sql1) === TRUE) {
  echo '<script>alert("Modifier avec succée")</script>';

} else {
 
  echo '<script>alert("Error de modifier")</script>';

}


}
  
  





  ?>
</body>

</html>