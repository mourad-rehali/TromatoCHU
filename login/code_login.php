

<?php


session_start();

  include("../data/connexion.php") ;
  include("../header/js.php") ;
  include("../header/header.php") ;

    $admin= htmlspecialchars(trim(strtolower($_POST['username'])) )  ;
    $pass = md5($_POST['password']) ;
  

    $query_admin=  "SELECT * FROM  admin  WHERE username='$admin' && password='$pass'" ;
  
  
  //  test admin login
  
    if(mysqli_num_rows(mysqli_query($connect,$query_admin))>0)
      {

        $result = $connect->query($query_admin);
        if ($result->num_rows >0) {

          while ($row = $result->fetch_assoc()) {
            
            
            $id = $row["id"];
          
            $_SESSION['id_admin'] =$id;

         
           
       }


            $_SESSION['admin']=$admin;

              header("location:../admin/listDesAdmin.php");
        }
    
  
          ob_end_flush();
  
         }
         
  
  //  login information error
  
  else {
  
      echo 
      
      "<script>
      $(document).ready(function(){
    
      Swal.fire({
          background: '#white',
  
  
      title: 'username ou mot de passe incorrect',
  
      icon: 'error',
     
      showCancelButton: false,
      confirmButtonColor: '#00C89E',
      confirmButtonText: 'try again!'
      }).then((result) => {
      if (result.value) {
          window.location.href = 'login.php';
      
       }
  
  
  
  
  
      });
  
       }); 
   
        </script>";
  
  exit;
  
  }
  
?>   




