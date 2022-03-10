

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.2/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.2/css/dataTables.bootstrap5.min.css">
<style>
     div.dataTables_wrapper div.dataTables_filter {
          margin-right: 38px ;
          color: #f0f0f0;
     }

     .dataTables_wrapper .dataTables_length {
          position: relative;
          right: 33px;
          color: #f0f0f0;
}

div.dataTables_wrapper div.dataTables_filter input {
    color: #000;
}

div.dataTables_wrapper div.dataTables_length select {
    
    color: #000;
}

div.dataTables_wrapper div.dataTables_info {
     display: none;
}

.dataTables_wrapper .dataTables_paginate .paginate_button.current {
     border-radius: 5px;
     background:#1d8183 ;
     color: #fff !important;
    border:none;
     
}

.dataTables_wrapper .dataTables_paginate .paginate_button.current:hover {
     background:#66c5c7 ;
     color: #000 !important;
    border:none;
}


</style>
    <?php
include("../header/header.php") ;
  ?>


</head>
<body>

<?php
  include("../navBar_footer/nav.php");
include("../navBar_footer/navBarDeconnecter.php") ;
include("../navBar_footer/navBarUser.php") ;
?>
     <article class="glass">

<style>
    
 input.button-add {
    background-image: url(../img/ajouter.png); /* 16px x 16px */
    width: 80px;
    background-size: 25px;
    background-repeat: no-repeat;  /* make the background image appear only once */
    background-position: 27px 5px;  /* equivalent to 'top left' */
    height: 38px;           /* make this the size of your image */
}

#delete{
  
 
     width: 45px;
     height: 35px;


}
     
</style>
       
           <div class="connexion">
           <div class="searchPlace"><img src="../img/search.png" alt=""></div>

             <h3 style="    margin-bottom: 39px;" >List Des Admin</h3>
             
   <?php
        include("../data/connexion.php") ;

      $output = '';  
      $sql = "SELECT * FROM admin ";  
      $result = mysqli_query($connect, $sql);  
        


      $output .= '  
      <form action="" method="post" id="vider">
            <div class="table-responsive">  
            
                 <table class="table table-bordered  border border-secondary " id="table_admins">  
                 <thead class="thead-light">
                      <tr>  
                      
                      <th>N° de Admin</th>
                      <th>Nom</th>
                      <th>Prénom</th>
                      <th>Nom du etulisateur</th>
                      <th>Mot de pass</th>
                      <th>Ajouter / Supprimer</th>
                      </tr> 
                      </thead>';
       if(mysqli_num_rows($result) > 0)  
       {  
        $output .= '  
        <tr>  
           <td>-></td>  
       <td id="nom"  contenteditable></td>  
       <td id="prenom"   contenteditable></td>  
       <td id="username"  contenteditable></td>  
       <td id="password"  contenteditable></td> 
       <td>
       <button type="button" name="btn_add" id="btn_add" class="btn btn-success" ><img  id="supprimer" src="../img/ajouter.png" alt=""></button>

         </td>
        </tr>  
   '; 
            while($row = mysqli_fetch_array($result))  
            {  
               $_SESSION['Admin'] = $row["id"];
             
                 $output .= '  
                      <tr>  
                      <td>'.$row["id"].'</td>
                      <td " data-id1="'.$row["id"].'" >'.$row["nom"].'</td>
                      <td "data-id2="'.$row["id"].'">'.$row["prenom"].'</td>
                      <td "data-id2="'.$row["id"].'">'.$row["username"].'</td>
                      <td>**********</td> 
                      <td>
                      <a href="supprimerAdmin.php?deleteid='.$_SESSION['Admin'].'" id="delete" class="button-add btn btn-danger"><img  id="supprimer" src="../img/supprimer.png" alt=""> </a>



                      </tr>  
                 ';  
            }  
            
       }  
       else  
       {  
            $output .= '<tr>  
                                <td colspan="4">Data not Found</td>  
                           </tr>';  
       }  
       $output .= '</table>  
            </form>
            </div>';  
       echo $output;  
       ?>
      
            </div>
            <div class="espace"></div>
            <!-- <a id="ajouterLink" href="#" type="button" class="btn btn-danger"><img  id="supprimer" src="../img/supprimer.png" alt=""></a></td> 
                   <td><a id="ajouterLink" href="#"  class="btn btn-success"><img  id="Ajouter" name="ajouter" src="../img/ajouter.png" alt=""></a></td>  

            -->

        </article>

    <?php
    include("../header/js.php") ;
    include("../navBar_footer/footer.php") ;

  ?>
<script src="https://code.jquery.com/jquery-3.0.0.js"></script>
<script src="https://code.jquery.com/jquery-migrate-3.3.2.js"></script>

<script src="https://cdn.datatables.net/1.11.2/js/dataTables.bootstrap5.min.js"></script>
<script src="https://cdn.datatables.net/1.11.2/js/jquery.dataTables.min.js"></script>

<script>
         $(document).ready(function() {
    $('#table_admins').DataTable();
} );
</script>

  <script>
        
      $(document).on('click', '#btn_add', function(){  
           var nom = $('#nom').text();  
           var prenom = $('#prenom').text();  
           var username = $('#username').text();  
           var password = $('#password').text();
           if(nom == '')  
           {  
                alert("entrer le nom");  
                return false;  
           }  
           if(prenom == '')  
           {  
               alert("entrer le prenom");  
                return false;  
           }  
           if(username == '')  
           {  
               alert("entrer le nom d'utilisateur ");    
                return false;  
           } 
           if(password == '')  
           {  
               alert("entrer le mot de passe");  
                return false;  
           } 
           $.ajax({  
                url:"ajouterAdmin.php",  
                method:"POST",  
                data:{nom:nom, prenom:prenom,username:username,password:password},  
                dataType:"text",  
                success:function(data)  
                {  
                   
                         Swal.fire({
                              background: '#white',
                    
                         title: 'Bien ajouter',
                    
                         icon: 'success',
                         
                         showCancelButton: false,
                         confirmButtonColor: '#00C89E',
                         confirmButtonText: 'OK'
                         }).then((result) => {
                         if (result.value) {
                              window.location.href = 'listDesAdmin.php';
                         
                         }
                         });
    

              fetch_data(); 
 
                }  
           }) 
      });  
      
  </script>


</body>
</html>

