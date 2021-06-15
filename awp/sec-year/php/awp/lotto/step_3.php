<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lotto Stufe 3</title>
</head>
<body>
    <table border="1">
        <?php
            // zahlen ziehen und in array speichern 
            $zahlen = array();
            $tabelle_zeilen = $tabelle_spalten = 7;
            $nummer = 0;
            $dubletten = 0;
            $background = 'white';
            while (sizeof($zahlen) < 6) {
                $zahl = mt_rand(1, 49);
                if (!in_array($zahl, $zahlen)) {
                    $zahlen[] = $zahl;
                } else {
                    $dubletten++;
                }
            }
            
            // zeilen zeichnen
            for ($i=0; $i < $tabelle_zeilen; $i++) {
                echo "<tr>"; 
                for ($k=0; $k < $tabelle_spalten; $k++) { 
                    $nummer = $nummer + 1;
                    if (in_array($nummer, $zahlen)) {
                        $background = 'lightgreen';
                    } else {
                        $background = 'white';
                    }
                    echo "<td style='background: $background'>$nummer</td>";
                }
                echo "</tr>";
            }
        ?>
    </table>
    <?php
        echo "<br>Dubletten: $dubletten";
    ?>
</body>
</html>
