<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mitarbeiter hinzufügen</title>
</head>
<body>
    <?php
        $server = '127.0.0.1';
        $user = 'root';
        $pw = '';
        $db_name = 'mitarbeiter_db';
        $tabellen_name = 'mitarbeiter_tabelle';
        $db_link = mysqli_connect($server, $user, $pw, $db_name);
        if ($db_link) {
            echo "Verbindung erfolgreich";
        } else {
            echo "Verbindung NICHT erfolgreich";
        }
        echo "<h1>Mitarbeitertabelle bearbeiten in Datenbank $db_name</h1>";

        // mitarbeiter anlegen
        if (isset($_POST['btnMitarbeiterAnlegen'])) {
            $id = $_POST['id'];
            $nachname = $_POST['nachname'];
            $gehalt = $_POST['gehalt'];
            $sql_query = "INSERT INTO $tabellen_name (id, nachname, gehalt) VALUES ($id, '$nachname', $gehalt)";
            echo $sql_query;
            $anlegen = mysqli_query($db_link, $sql_query);
            if ($anlegen) {
                echo "angelegt";
            } else {
                echo "nicht angelegt";
            }
        } else if (isset($_POST['btnAnpassen'])) {
            $prozent = $_POST['anpassungsGrad'];
            $sql_query = 'UPDATE '.$tabellen_name.' SET gehalt = gehalt * '.($prozent/100);
            echo $sql_query;
            $anpassen = mysqli_query($db_link, $sql_query);
        } else if (isset($_POST['btnLoeschen'])) {
            $bedingungen = $_POST['loeschBedingung'];
            $sql_query = 'DELETE FROM '.$tabellen_name.' WHERE '.$bedingungen;
            echo $sql_query;
            $loeschen = mysqli_query($db_link, $sql_query); 
        }
    ?>
    <form action="" method="post">
        <h4>Neuer Mitarbeiter</h4>
        ID:<br>
        <input type="text" name="id"><br>
        Nachname:<br>
        <input type="text" name="nachname"><br>
        Gehalt:<br>
        <input type="text" name="gehalt"><br><br>
        <input type="submit" value="Datensatz einfügen" name="btnMitarbeiterAnlegen">
        <br><br>
        <h4>Alle Gehälter anpassen</h4>
        Verändern um:<br>
        <input type="text" name="anpassungsGrad">%<br>
        <input type="submit" value="Anpassen" name="btnAnpassen">
        <br><br>
        <h4>Mitarbeiter löschen</h4>
        Bedingung(en):
        <input type="text" name="loeschBedingung"><br>
        <input type="submit" value="Jetzt löschen" name="btnLoeschen">
    </form>
    <br><br>
    <h4>Mitarbeiterliste:</h4>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nachname</th>
            <th>Gehalt</th>
        </tr>
        <?php 
            $sql_query = 'SELECT * FROM '.$tabellen_name;
            $alle_mitarbeiter = mysqli_query($db_link, $sql_query);
            while($row = $alle_mitarbeiter->fetch_assoc()) {
                echo "<tr>";
                echo "<td>".$row["id"]."</td><td>".$row["nachname"]."</td><td>".$row["gehalt"]."</td>";
                echo "</tr>";
            }
        ?>
    </table>
</body>
</html>