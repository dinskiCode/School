<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bestelldaten</title>
    <link rel="stylesheet" href="formstyle.css">
</head>
<body>
    <?php
        $required_fields = array('kundenName', 'zimmerNr', 'kaese', 'zahlungswunsch', 'wunsch');
        $missing_fields = array();
        //print_r($_POST);
        if (isset($_POST['submitButton'])) {
            foreach($required_fields as $field) {
                if (empty($_POST[$field])) {
                    $missing_fields[] = $field;
                }
            }
        }
        if (sizeof($missing_fields) > 0) {
            echo "Folgende Felder wurde nicht ausgefüllt:<ul>";
            foreach($missing_fields as $missing_field) {
                echo "<li>$missing_field</li>";
            }
            echo "</ul>";
            echo "Zurück zum Formular: <a href='form.html'>Formular</a>";
        } else {
            echo "Bestellung von: ", $_POST['kundenName'], "<br>";
            echo "Zimmernummer: ", $_POST['zimmerNr'], "<br>";
            echo "Käsesorten:<br><ul>";
            foreach($_POST['kaese'] as $sorte) {
                echo "<li>$sorte</li>";
            }
            echo "</ul>";
            echo "Weitere Wünsche: ", $_POST['wunsch'], "<br>";
            echo "Zahlungswunsch: ", $_POST['zahlungswunsch'], "<br>";
        }
    ?>
</body>
</html>
