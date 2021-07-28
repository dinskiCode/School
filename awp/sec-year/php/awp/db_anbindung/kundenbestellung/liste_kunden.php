<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="navbar">
        <a href="neuer_kunde.php">Neuer Kunde</a>
        <a href="kundendaten_aendern.php">Kundendaten ändern</a>
        <a href="neue_bestellung.php">Neue Bestellung</a>
        <a href="liste_kunden.php">Liste Kunden</a>
        <a href="liste_bestellungen.php">Liste Bestellungen</a>
    </div>
    <h3>Neuer Kunde</h3>
    <?php 
    $server = '127.0.0.1';
    $user = 'root';
    $pw = '';
    $db_name = 'warenhandel';
    $db_link = mysqli_connect($server, $user, $pw, $db_name);
    if ($db_link) {
        echo "Verbindung erfolgreich";
    } else {
        echo "Verbindung NICHT erfolgreich";
    }
    ?>
    <form action="" method="post">
    
    </form>
</body>
</html>