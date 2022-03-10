

    <?php
// include("../header/header.php") ;
  ?>
  <style>
    .navbar-nav>li {
      margin-left: 19px;
}

.dropdown-menu {
  min-width: 200px ;
  padding: 10px;
  background-color: #b8b8b8d8;
  
}

.dropdown-menu a:hover{
  text-decoration: none;
}
.navbar-nav>li>.dropdown-menu {
    margin-top: 9px;
  
}
  </style>

  

<nav class="navbar navbar-expand-lg navbar-light bg-light topNegative"  id="navBarAdmin">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  <ul class="navbar-nav mr-auto">
    
     <!--   <a class="nav-link" href="../admin/listDesAdmin.php" style=" text-decoration: none;">List Des Admin  &nbsp; &nbsp;|</a> -->
      

      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="text-decoration: none;">
        Admin  &nbsp; &nbsp;|
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink2">
          <a class="dropdown-item" href="../admin/listDesAdmin.php">List Des Admin </a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="text-decoration: none;">
        Patient  &nbsp; &nbsp;|
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink1">
         <!-- <a class="dropdown-item" href="../admin/listDesUtilisateur.php">Liste des Patients</a>
          <br>-->
          <a class="dropdown-item" href="../upload/inscription.php">Ajouter Patient</a>
          <br>
          <a class="dropdown-item" href="../upload/createDossier.php">Créer Dossier</a>

        </div>
      </li>
      
  
 
    </ul>
  </div>
</nav>
<?php
// include("../header/js.php") ;

?>
