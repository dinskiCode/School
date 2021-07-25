<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taschenrechner</title>
</head>
<body>
    <h2>Taschenrechner</h2>
    <?php
        $operand_1 = $_POST['operand_1'];
        $operand_2 = $_POST['operand_2'];
        if (isset($_POST['berechneBtn']) || isset($_POST['saveToSession']) || isset($_POST['resetSession']) ) {
            $ergebnis = $operand_1 + $operand_2;
            if (isset($_POST['saveToSession'])) {
                $_SESSION['ergebnis'] = $ergebnis;
            } else if (isset($_POST['resetSession'])) {
                $_SESSION['ergebnis'] = '';
            }
        } else if (isset($_POST['resetBtn'])) {
            $operand_1 = $operand_2 = $ergebnis = '';
        } else if (isset($_POST['resetSession'])) {
            $_SESSION['ergebnis'] = '';
        } 
        echo "session[ergebnis] = ", $_SESSION['ergebnis'];
    ?>
    <form method="post">
        <input type="text" name="operand_1" value="<?php echo $operand_1?>"> + 
        <input type="text" name="operand_2" value="<?php echo $operand_2?>"> = 
        <input type="text" name="ergebnis" value="<?php echo $ergebnis?>">
        <br><br>
        <input type="submit" value="Berechnen" name="berechneBtn"><br><br>
        <input type="submit" value="C" name="resetBtn"><br><br>
        <input type="submit" value="M+" name="saveToSession"><br><br>
        <input type="submit" value="MR" name="resetSession">
    </form>
</body>
</html>