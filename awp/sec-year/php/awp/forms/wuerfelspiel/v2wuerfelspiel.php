<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <title>Wuerfelspiel mit Session</title>
</head>
<body>
    <div class="wuerfelspiel">
    <?php
        $wurfanzahl = 25;
        $umbruch = 10;
        $zahlen = array();
        if(isset($_POST['wuerfel_btn'])) {
            if (!empty($_POST['wurfanzahl'])) {
                $wurfanzahl = $_POST['wurfanzahl'];
            }
            if (!empty($_POST['umbruch'])) {
                $umbruch = $_POST['umbruch'];
            }
            if (!isset($_SESSION['statistik'])) {
                $_SESSION['statistik_gesamt'] = array();
            }
        }

        echo "<h1>Würfeln mit $wurfanzahl Würfel(n) im Becher</h1>";
        $_SESSION['statistik_letzter'] = array(0, 0, 0, 0, 0, 0);
        for($i = 0; $i < $wurfanzahl; $i++) {
            $zahl = mt_rand(1, 6);
            $zahlen[] = $zahl;
            $_SESSION['statistik_gesamt'][$zahl - 1] += 1;
            $_SESSION['statistik_letzter'][$zahl - 1] += 1;
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
        Anzahl der Würfel: <input size="6" name="wurfanzahl" value="<?php echo $wurfanzahl?>"> <input type="submit" value="würfeln" name="wuerfel_btn"><br>
        Umbruch nach: <input size="6" name="umbruch" value="<?php echo $umbruch?>"> Würfen
    </form>

    <h3>Statistik des letzten Wurfes:</h3>
    <?php
    $statistik_letzter = $_SESSION['statistik_letzter'];
    for ($i = 0; $i < count($statistik_letzter); $i++) {
        $summe_augenzahlen += ($i + 1) * $statistik_letzter[$i];
        $anzahl_wuerfe += $statistik_letzter[$i];
        echo " <img src=images/w", ($i + 1), ".JPG>", "x", $statistik_letzter[$i], "&nbsp;";
    } 
    ?>

    <h3>Statistik gesamt:</h3>
    <?php
        $statistik_gesamt = $_SESSION['statistik_gesamt'];
        $summe_augenzahlen = $durchschnittliche_augenzahl = $anzahl_wuerfe = 0;

        for ($i = 0; $i < count($statistik_gesamt); $i++) {
            $summe_augenzahlen += ($i + 1) * $statistik_gesamt[$i];
            $anzahl_wuerfe += $statistik_gesamt[$i];
            echo " <img src=images/w", ($i + 1), ".JPG>", "x", $statistik_gesamt[$i], "&nbsp;";
        }

        $durchschnittliche_augenzahl = $summe_augenzahlen/$anzahl_wuerfe;
        echo "<br><br>Summe der Augenzahlen: ", $summe_augenzahlen;
        echo "<br>Durchschnittliche Augenzahl: ", $durchschnittliche_augenzahl;
    ?>
    </div>
</body>
</html>
