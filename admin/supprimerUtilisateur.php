<?php
include("../data/connexion.php") ;
include("../header/js.php") ;
  include("../header/header.php") ;


if(isset($_GET['deleteid']))
{
  
    $id_user = $_GET['deleteid'];

    $query = "DELETE FROM `user` WHERE `id_user` ='$id_user'";
     

    $result = $connect->query($query);


    if($result ){
        echo
        "<script>
        $(document).ready(function(){
        Swal.fire({
        background: '#white',
        title: 'Supprimer avec succér',
        icon: 'error',
        }).then((result) => {
        if (result.value) {
            window.location.href = 'listDesUtilisateur.php';
         }
    
        });
    
         }); 
     
          </script>";
       


     }

    // else{

    // }
}

 $connect->close();


?>

