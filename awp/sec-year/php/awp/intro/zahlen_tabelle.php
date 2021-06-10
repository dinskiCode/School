<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>
<body>
    <div>
    <table border="1">
        <?php
            function isPrime($n){
                if ($n <= 1) {
                    return false;
                }
                for ($i = 2; $i < $n; $i++) {
                    if ($n % $i == 0) {
                        return false;
                    }
                }
                return true;
            }

            $groeße = 10;
            $num = 0;
            for ($i=0; $i < $groeße; $i++) {
                echo "<tr>"; 
                for ($k=0; $k < $groeße; $k++) { 
                    $num = $num + 1;
                    if (isPrime($num)) {
                        //echo "<td style='background: lightgrey'>$num</td>";
                        $farbe = 'red';
                    } else {
                        //echo "<td>$num</td>";
                        $farbe = 'white';
                    }
                    echo "<td style='background: $farbe'>$num</td>";
                }
                echo "</tr>";
            }
        ?>
    </table>
    </div>
</body>
</html>