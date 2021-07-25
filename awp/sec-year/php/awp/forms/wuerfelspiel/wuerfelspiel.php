<!DOCTYPE html>
<html>
<head>
</head>
<body>
    <?php
        $wurfanzahl = 25;
        $umbruch = 10;
        $zahlen = array();
        $statistik = array(0, 0, 0, 0, 0, 0);
        if(isset($_POST['wuerfel_btn'])) {
            if (!empty($_POST['wurfanzahl'])) {
                $wurfanzahl = $_POST['wurfanzahl'];
            }
            if (!empty($_POST['umbruch'])) {
                $umbruch = $_POST['umbruch'];
            }
            if (!empty($_POST['statistik'])) {
                $statistik = $_POST['statistik'];
            } else {
                $statistik = array(0, 0, 0, 0, 0, 0);
            }
        }
        echo "<h1>Würfeln mit $wurfanzahl Würfel im Becher</h1>";
        
        for($i = 0; $i < $wurfanzahl; $i++) {
            $zahl = mt_rand(1, 6);
            $zahlen[] = $zahl;
            $statistik[$zahl] = $statistik[$zahl] + 1;
        }
        for ($i = 1; $i <= sizeof($zahlen); $i++) {
            if ($i % $umbruch == 0) {
                echo " <img src=images/w", $zahlen[$i-1], ".JPG><br>";
            } else {
                echo " <img src=images/w", $zahlen[$i-1], ".JPG>";
            }
        }
    ?>
    <br><br>
    <form method="POST">
        Anzahl der Würfel: <input type="number" name="wurfanzahl" value="<?php echo $wurfanzahl?>"> <input type="submit" value="würfeln" name="wuerfel_btn"><br>
        Umbruch nach: <input type="number" name="umbruch" value="<?php echo $umbruch?>"> Würfen
        <input hidden name="statistik[1]" value="<?php echo $statistik[1]?>">
        <input hidden name="statistik[2]" value="<?php echo $statistik[2]?>">
        <input hidden name="statistik[3]" value="<?php echo $statistik[3]?>">
        <input hidden name="statistik[4]" value="<?php echo $statistik[4]?>">
        <input hidden name="statistik[5]" value="<?php echo $statistik[5]?>">
        <input hidden name="statistik[6]" value="<?php echo $statistik[6]?>">
    </form>

    <h3>Statistik</h3>
    <?php
        $sum_augenzahlen = 0;
        $avg_augenzahl = 0;
        $anzahl_gesamt = 0;
        foreach($statistik as $stats=> $anzahl) {
            echo " <img src=images/w", $stats, ".JPG>", "x", $anzahl, " ";
            $sum_augenzahlen += $anzahl*$stats;
            $anzahl_gesamt += $anzahl;
        }
        echo "<br><br>Summe der Augenzahlen: ", $sum_augenzahlen;
        echo "<br>Durchschnittliche Augenzahl: ", number_format($sum_augenzahlen/$anzahl_gesamt, 2);
     ?>
    
</body>
</html>
