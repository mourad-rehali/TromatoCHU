
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    
    <?php
    

       ob_start();

       if(isset($_SESSION['admin']))
       {
        header("location:../admin/listDesAdmin.php");
        exit();
       }

       
         ?>
</head>
<body>

<?php
    include("../navBar_footer/navMobile.php") ;
  include("../navBar_footer/nav.php") ;
?>

     <article class="glass">
           <div class="connexion">
          
             <h3 style="    margin-bottom: 33px;">Ce Connecter</h3>

                  <form  class="" action="code_login.php" method="POST">
                
           <div class="form-group">
                  <input type="text" class="form-control"  name="username"  placeholder="Nom de Utilisateur"  pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{6,25}$" required>
                  </div>
                  <div class="form-group">
                  <input type="password" class="form-control"  name="password"  placeholder="Mode de Pass" minlength="8" maxlength="45"  required>
                </div>
              <div class="btnValider">
            <input type="submit" value="Ce Connecter"  name="login" class="btn1" id="btnConnectet">
             </div>
         </div>
            </form>

           </div>
            <div class="espace"></div>
        </article>

        <article class="glass_mobile">
           <div class="connexion">
          
             <h3>Ce Connecter</h3>

                  <form  class="" action="code_login.php" method="POST">
                
           <div class="form-group">
                  <input type="text" class="form-control"  name="username"  placeholder="Nom de Utilisateur"  pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{6,25}$" required>
                  </div>
                  <div class="form-group">
                  <input type="password" class="form-control"  name="password"  placeholder="Mode de Pass" minlength="8" maxlength="45"  required>
                </div>
              <div class="btnValider">
            <input type="submit" value="Ce Connecter"  name="login" class="btn1" id="btnConnectet">
             </div>
         </div>
            </form>

           </div>
            <div class="espace"></div>
        </article>


    <?php
    include("../navBar_footer/footer.php") ;
    include("../header/js.php") ;
  ?>


   
</body>
</html>

