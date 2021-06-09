<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>php-table</title>
</head>
<body>
    <table border="1">
        <tr>
            <?php
                $zahlen = array(1, 2, 3, 4, 5);
                foreach ($zahlen as $zahl) {
                    echo "<td>$zahl</td>"; 
                }
            ?>
        </tr>
    </table>
</body>
</html>