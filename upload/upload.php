
<?php
if ($_FILES["upload_file"]["name"] != '') {
    $data = explode(".", $_FILES["upload_file"]["name"]);
    $extension = $data[1];
    $allowed_extension = array("jpg", "png", "gif","pdf");
    if (in_array($extension, $allowed_extension)) {
        $new_file_name = rand() . '.' . $extension;
        $path = $_POST["hidden_folder_name"] . '/' . $new_file_name;
        if (move_uploaded_file($_FILES["upload_file"]["tmp_name"], $path)) {
            echo 'Image téléchargée';
        } else {
            echo 'Il y a une erreur';
        }
    } else {
        echo 'Fichier image invalide';
    }
} else {
    echo 'Veuillez sélectionner une image';
}
?>
