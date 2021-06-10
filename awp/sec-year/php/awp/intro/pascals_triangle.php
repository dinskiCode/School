<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pascalsches Dreieck</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <table border="1">
        <?php 
            $groeße = 10;
            $pascal_triangle = array();
            
            for ($i=0; $i < $groeße; $i++) { 
                echo "<tr>";
                for ($k=0; $k < ($groeße * 2) - 1; $k++) { 
                    echo "<td>x</td>";
                }
                echo "</tr>";
            }
        ?>
    </table>
</body>
</html>