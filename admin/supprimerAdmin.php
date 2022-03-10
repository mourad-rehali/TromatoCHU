<?php
include("../data/connexion.php") ;
include("../header/js.php") ;
  include("../header/header.php") ;



if(isset($_GET['deleteid']))
{
  
    $id_Admin = $_GET['deleteid'];

    $query = "DELETE FROM `admin` WHERE `id` ='$id_Admin'";
     

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
            window.location.href = 'listDesAdmin.php';
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

