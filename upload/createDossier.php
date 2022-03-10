<!DOCTYPE html>
<html>

<head>
  <title>Créer le dossier trchu</title>
  <style>
    .btn-success {
      margin-left: 838px;
    }

    .connexion {
      margin-top: -40px;

    }

    #create_folder {
      margin-top: -140px;

    }
  </style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>
  <?php
  include("../navBar_footer/nav.php");
  include("../navBar_footer/navBarDeconnecter.php");
  include("../navBar_footer/navBarUser.php");
  $con = new PDO("mysql:host=localhost;dbname=traumatou", 'root', '');

  if (isset($_POST["submit"])) {
    $str = $_POST["search"];
    $sth = $con->prepare("SELECT * FROM `patients` WHERE IPP = '$str'");
  
    $sth->setFetchMode(PDO::FETCH_OBJ);
    $sth->execute();
  
    if ($row = $sth->fetch()) {
      $vipp = $row->IPP;
      $vnom = $row->nom;
      $vdate =$row->date;
      $vsexe = $row->cin;
      
    } else {
  
      $vipp = $str;
      $vnom = "";
      $vdate ="";
      $vsexe = "";
    }
  }
  else{
       $vipp = "";
      $vnom = "";
      $vdate ="";
      $vsexe = "";
  }
  ?>
 
  <br /><br />
  <article class="glass">
    <div class="connexion">
  

    <form method="post">
		<input type="text" name="search" id="ipp" value="<?php echo $vipp; ?>">
    <input type="submit" name="submit" value="&#128269;">
		<input type="text" id="nom" value="<?php echo $vnom; ?>" disabled>
    <input type="text" id="nom" value="<?php echo $vdate; ?>" disabled>
		<input type="text" id="sexe" value="<?php echo $vsexe; ?>" disabled>
	</form>
      <div align="right">
        <button type="button" name="create_folder" id="create_folder" class="btn btn-success">Créer</button>
      </div>
      <div class="table-responsive" id="folder_table">

      </div>
    </div>

  </article>
</body>

</html>

<div id="folderModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><span id="change_title">Créer le dossier</span></h4>
      </div>

      <div class="modal-body">
        <p>Nom du dossier
          <input type="text" name="folder_name" id="folder_name"  value="<?php echo $vnom; ?>" disabled />
        </p>
        <br />
        <input type="hidden" name="action" id="action" />
        <input type="hidden" name="old_name" id="old_name" />
        <input type="button" name="folder_button" id="folder_button" class="btn btn-info" value="Créer" />

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
      </div>
    </div>
  </div>
</div>
<div id="uploadModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Télécharger un fichier</h4>
      </div>
      <div class="modal-body">
        <form method="post" id="upload_form" enctype='multipart/form-data'>
          <p>Sélectionner une image
            <input type="file" name="upload_file" />
          </p>
          <br />
          <input type="hidden" name="hidden_folder_name" id="hidden_folder_name" />
          <input type="submit" name="upload_button" class="btn btn-info" value="Télécharger" />
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
      </div>
    </div>
  </div>
</div>

<div id="filelistModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Liste de fichiers</h4>
      </div>
      <div class="modal-body" id="file_list">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
      </div>
    </div>
  </div>
</div>


<script>
  $(document).ready(function() {

    load_folder_list();

    function load_folder_list() {
      var action = "fetch";
      $.ajax({
        url: "action.php",
        method: "POST",
        data: {
          action: action
        },
        success: function(data) {
          $('#folder_table').html(data);
        }
      });
    }

    $(document).on('click', '#create_folder', function() {
      $('#action').val("create");
      // $('#folder_name').val('');
      $('#folder_button').val('Créer');
      $('#folderModal').modal('show');
      $('#old_name').val('');
      $('#change_title').text("Créer le dossier");
    });

    $(document).on('click', '#folder_button', function() {
      var folder_name = $('#folder_name').val();
      var old_name = $('#old_name').val();
      var action = $('#action').val();
      if (folder_name != '') {
        $.ajax({
          url: "action.php",
          method: "POST",
          data: {
            folder_name: folder_name,
            old_name: old_name,
            action: action
          },
          success: function(data) {
            $('#folderModal').modal('hide');
            load_folder_list();
            alert(data);
          }
        });
      } else {
        alert("Entrez le nom du dossier");
      }
    });

    $(document).on("click", ".update", function() {
      var folder_name = $(this).data("name");
      $('#old_name').val(folder_name);
      $('#folder_name').val(folder_name);
      $('#action').val("change");
      $('#folderModal').modal("show");
      $('#folder_button').val('Éditer');
      $('#change_title').text("Changer le nom du dossier");
    });

    $(document).on("click", ".delete", function() {
      var folder_name = $(this).data("name");
      var action = "delete";
      if (confirm("Êtes-vous sûr de vouloir le supprimer?")) {
        $.ajax({
          url: "action.php",
          method: "POST",
          data: {
            folder_name: folder_name,
            action: action
          },
          success: function(data) {
            load_folder_list();
            alert(data);
          }
        });
      }
    });

    $(document).on('click', '.upload', function() {
      var folder_name = $(this).data("name");
      $('#hidden_folder_name').val(folder_name);
      $('#uploadModal').modal('show');
    });

    $('#upload_form').on('submit', function() {
      $.ajax({
        url: "upload.php",
        method: "POST",
        data: new FormData(this),
        contentType: false,
        cache: false,
        processData: false,
        success: function(data) {
          load_folder_list();
          alert(data);
        }
      });
    });

    $(document).on('click', '.view_files', function() {
      var folder_name = $(this).data("name");
      var action = "fetch_files";
      $.ajax({
        url: "action.php",
        method: "POST",
        data: {
          action: action,
          folder_name: folder_name
        },
        success: function(data) {
          $('#file_list').html(data);
          $('#filelistModal').modal('show');
        }
      });
    });

    $(document).on('click', '.remove_file', function() {
      var path = $(this).attr("id");
      var action = "remove_file";
      if (confirm("Êtes-vous sûr de vouloir supprimer ce fichier?")) {
        $.ajax({
          url: "action.php",
          method: "POST",
          data: {
            path: path,
            action: action
          },
          success: function(data) {
            alert(data);
            $('#filelistModal').modal('hide');
            load_folder_list();
          }
        });
      }
    });

    $(document).on('blur', '.change_file_name', function() {
      var folder_name = $(this).data("folder_name");
      var old_file_name = $(this).data("file_name");
      var new_file_name = $(this).text();
      var action = "change_file_name";
      $.ajax({
        url: "action.php",
        method: "POST",
        data: {
          folder_name: folder_name,
          old_file_name: old_file_name,
          new_file_name: new_file_name,
          action: action
        },
        success: function(data) {
          alert(data);
        }
      });
    });

  });
</script>