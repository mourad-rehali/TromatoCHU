

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
          margin-right: 87px ;
          color: #f0f0f0;
     }

     .dataTables_wrapper .dataTables_length {
          margin-left: 10px ;
          color: #f0f0f0;
}

div.dataTables_wrapper div.dataTables_paginate {
    margin-right: 35px;
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

</head>
<body>

<?php
  include("../navBar_footer/nav.php");
  include("../navBar_footer/navBarDeconnecter.php") ;
  include("../navBar_footer/navBarUser.php") ;
?>
     <article class="glass">

       
           <div class="connexion">

 
           <form action="" method="post" class="pusSearch">
      <input  type="text" name="search" class="form-control form-input" id="inputsearch" placeholder="Rechercher...">
      <button type="submit" name="submit" class="btnsearch"> <img src="../img/search.png" alt=""> </button>
    </form> 
             <h3 style="    margin-bottom: 39px;" >List Des utilisateur</h3>
             
   <?php
        include("../data/connexion.php") ;

      $output = '';  
      if( isset($_POST['search']))
{
     $search=$_POST['search'];
     $sql = "SELECT * FROM `patients` WHERE `IPP` like '%$search%' OR `nom` like '%$search%' OR `cin` like '%$search%'";  

}
else{
      $sql = "SELECT * FROM `patients`";  
}
     
      $result = mysqli_query($connect, $sql);  
      

      $output .= '  
            <div class="table-responsive">  
                 <table class="table table-bordered  border border-secondary " id="tableUser">  
                 <thead class="thead-light ">
                 <tr>
                 <th>Nom</th>
                 <th>Date naissance</th>
                 <th>Sexe</th>
                 <th>CIN</th>
                 <th>Téléphone</th>
             </tr>
                      </thead>';
       if(mysqli_num_rows($result) > 0)  
       {  
             while($row = mysqli_fetch_array($result))  
            {  
              
                 
                
                 $output .= '  
                      <tr>  
                      <td>'.$row["nom"].'</td>
                      <td>'.$row["date"].'</td>
                      <td >'.$row["sexe"].'</td>
                      <td >'.$row["cin"].'</td>
                      <td >'.$row["ville"].'</td>
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
            </div>';  
       echo $output;  
       ?>
      
            </div>
            <div class="espace"></div>

        </article>

    <?php
    include("../navBar_footer/footer.php") ;
  
  ?>



</body>
</html>

