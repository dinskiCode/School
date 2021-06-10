<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lotto Stufe 2</title>
</head>
<body>
    <h2>Die Lottozahlen 6 aus 49</h2>
    <table border="1">
        <tr>
            <?php 
                $anzahl = 6;
                for ($i=0; $i < $anzahl; $i++) {
                    $zahl = mt_rand(1, 49);
                    echo "<td>$zahl</td>";
                } 
            ?>
        </tr>
    </table>
</body>
</html>