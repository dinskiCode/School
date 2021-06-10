<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lotto Stufe 1</title>
</head>
<body>
    <h2>Die Lottozahlen 6 aus 49</h2>
    <?php 
        $anzahl = 6;
        $dubletten = array();
        for ($i=0; $i < $anzahl; $i++) {
            $zahl = mt_rand(1, 49);
            echo ($i + 1), ". Zahl: $zahl <br>";
        } 
    ?>
</body>
</html>