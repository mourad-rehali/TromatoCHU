
    <?php

    session_start();
// include("../header/header.php") ;
include("../data/connexion.php") ;


$id=$_SESSION['id_admin'];

$sql = "SELECT * FROM `admin` WHERE  id = $id";

$result = $connect->query($sql);

if ($result->num_rows > 0) {

  while($row = $result->fetch_assoc()) {
    
    $_SESSION['nom']=$row["nom"];
    $_SESSION['prenom']=$row["prenom"];
    
  }
  
} 

?>
      <link rel="stylesheet" href="../style/nav.css">



 <style>
   .navbar-nav {
    list-style: none;
   
}
 </style>

  <nav class="navbar navbar-expand-sm bg-light navbar-light navdeconnecter" id="navBarAdmin" >
  <div class="collapse navbar-collapse">
  <ul class="navbar-nav " > 
         <li class="nav-item " id="nomAdmin">
         <a href="listDesUtilisateur.php" class="accuilStyle">
       <div class="icon" id="iconplace">
       </div>
      </a>
      </li>
       
    </ul>
    <ul class="nav navbar-nav navbar-center">
    <li class="nomprenom" >
         <?php 
         echo '<h4>'.$_SESSION['prenom'].' '.$_SESSION['nom'].'</h4>';
         ?>
      </li>
    </ul>

      <ul class="nav navbar-nav ml-auto" id="navBtndeco">
      <li ><a href="../login/logout.php" style=" text-decoration: none;"><div class="icon1">  </div></a></li>    </ul>
  </div>  
</nav>

<!-- mobile -->



