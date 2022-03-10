<?php

$con = new PDO("mysql:host=localhost;dbname=traumatou", 'root', '');

if (isset($_POST["submit"])) {
	$str = $_POST["search"];
	$sth = $con->prepare("SELECT * FROM `patients` WHERE IPP = '$str'");

	$sth->setFetchMode(PDO::FETCH_OBJ);
	$sth->execute();

	if ($row = $sth->fetch()) {
		$vipp = $row->IPP;
		$vnom = $row->nom;
		$vsexe = $row->sexe;
	} else {

		$vipp = $str;
		$vnom = "";
		$vsexe = "";
	}
}
else{
	   $vipp = "";
		$vnom = "";
		$vsexe = "";
}
?>

<!DOCTYPE html>
<html>
<body>
	<form method="post">
		<input type="text" name="search" id="ipp" value="<?php echo $vipp; ?>">
		<input type="text" id="nom" value="<?php echo $vnom; ?>" disabled>
		<input type="text" id="sexe" value="<?php echo $vsexe; ?>" disabled>
		<label>Search</label>
		<input type="submit" name="submit">
	</form>
</body>
</html>