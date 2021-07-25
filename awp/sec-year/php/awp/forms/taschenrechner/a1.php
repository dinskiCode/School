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
        if (isset($_POST['submitBtn'])) {
            if (!empty($_POST['operand_1']) && !empty($_POST['operand_2'])) {
                $operand_1 = $_POST['operand_1'];
                $operand_2 = $_POST['operand_2'];
                $ergebnis = $operand_1 + $operand_2;
            }
        } else {
            $operand_1 = $operand_2 = $ergebnis = '';
        }
    ?>
    <form method="post">
        <input type="text" name="operand_1" value="<?php echo $operand_1?>"> + 
        <input type="text" name="operand_2" value="<?php echo $operand_2?>">
        <input type="text" name="ergebnis" value="<?php echo $ergebnis?>">
        <br><br>
        <input type="submit" value="Berechnen" name="submitBtn">
    </form>
</body>
</html>