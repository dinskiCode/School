<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
        $server = '127.0.0.1';
        $user = 'root';
        $pw = '';
        $db_name = 'mitarbeiter_db';
        $db_link = mysqli_connect($server, $user, $pw, $db_name);
        if ($db_link) {
            echo "Verbindung erfolgreich";
        } else {
            echo "Verbindung NICHT erfolgreich";
        }
        if (isset($_POST['btnAnlegen'])) {
            $name_tabelle = $_POST['name_tabelle'];
            $spalte_1 = $_POST['spalte_1'];
            $datentyp_1 = $_POST['datentyp_1'];
            $spalte_2 = $_POST['spalte_2'];
            $datentyp_2 = $_POST['datentyp_2'];
            $spalte_3 = $_POST['spalte_3'];
            $datentyp_3 = $_POST['datentyp_3'];
            $sql = "CREATE TABLE $name_tabelle ($spalte_1 $datentyp_1, $spalte_2 $datentyp_2, $spalte_3 $datentyp_3)";
        } else if (isset($_POST['sqlAusfuehren'])) {
            $sql_query = $_POST['sqlBefehl'];
            $anlegen = mysqli_query($db_link, $sql_query);
        }
    ?>
    <form action="" method="post">
        Name:<br>
        <input type="text" name="name_tabelle">
        <br>
        Spaltennamen und Datentypen<br>
        <?php 
            for($i = 1; $i < 4; $i++) {
                echo "<input type='text' name='spalte_$i'>";
                echo "<input type='text' name='datentyp_$i'>";
                echo "<br>";
            }
        ?>
        <input type="submit" name="btnAnlegen" value="Tabelle anlegen">
        <input type="submit" name="btnLoeschen" value="Tabelle löschen">
    </form>
    <br>
    <form action="" method="post">
        <input type="text" name="sqlBefehl" value="<?php echo $sql?>" hidden>
        <?php echo $sql ?>
        <br>
        <input type="submit" value="SQL-Befehl starten" name="sqlAusfuehren">
    </form>
</body>
</html>
