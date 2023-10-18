<?php
require "bdconnect.php";
$errors = [];
if ($statut == "succes" && $_SERVER["REQUEST_METHOD"] == "POST") {
    $NumRatV = $_POST["NumRatV"];
    $MatProf = $_POST["MatProf"];
    $DateRat = $_POST["DateRat"];
    $Seance = $_POST["Seance"];
    $Session = $_POST["Session"];
    $Salle = $_POST["Salle"];
    $Jour = $_POST["Jour"];
    $CodeClasse = $_POST["CodeClasse"];
    $CodeMatiere = $_POST["CodeMatiere"];
    $Etat = $_POST["Etat"];
    $header = "addForm";

    $NumRatV = mysqli_real_escape_string($mysqli, $NumRatV);
    $checkquery = "SELECT * FROM RatVol WHERE NumRatV = '$NumRatV'";
    $checkResult = $mysqli->query($checkquery);
    if ($checkResult->num_rows > 0) {
            $errors = array();
            $errors[] = "NumRatV:$NumRatV used.";
            $errorMessages = implode(',', $errors);
            header("Location: addForm.php?errors=" . urlencode($errorMessages));
            exit;
        }
    
    saisieControl($NumRatV, $MatProf, $DateRat, $Seance, $Session, $Salle, $Jour, $CodeClasse, $CodeMatiere, $header);
    $insertQuery = "INSERT ITO RatVol (NumRatV, MatProf, DateRat, Seance, Session, Salle, Jour, CodeClasse, CodeMatiere, Etat) 
        VALUES ('$NumRatV', '$MatProf', '$DateRat', '$Seance', '$Session', '$Salle', '$Jour', '$CodeClasse', '$CodeMatiere', b'$Etat')";
    if ($mysqli->query($insertQuery) === TRUE) {
        header("Location: index.php");
    } else {
        echo "Error adding record: " . $mysqli->error;
    }
} else {
    echo "Invalid request method or status.";
}
