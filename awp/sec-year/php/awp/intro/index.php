<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>php test</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <?php
        // Variablen
        // $name = "Matthias";
        // echo "Hello, ", $name, 1 + 2; 
        // echo "Hello". $name;  bei mehreren parametern mit komma!
        // echo 'Hello $name!'; funktioniert nicht, hierfür benötigt man hochkommata!
        // echo "Hello $name!";

        // Arrays
        $zahlen = array(1, 2, 3, 4);
        // $zahlen = [1, 2, 3] alternative Schreibweise
        $zahlen[] = 5;

        echo "<h3>hier wird html ge-echoed</h3><br>";
        echo "forloop:<br>";
        // for-loop
        for ($i=0; $i < 5; $i++) { 
            echo $zahlen[$i], " ";
        }
        echo "<br><br>foreach:<br>";
        foreach ($zahlen as $wert) {
            echo $wert;
        }
    ?>    
</body>
</html>