<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>
<body>
    <table border="1">
        <?php
            function isPrime($n)
            {
                if ($n <= 1)
                    return false;
            
                for ($i = 2; $i < $n; $i++)
                    if ($n % $i == 0)
                        return false;
            
                return true;
            }

            $size = 10;
            $num = 0;
            $arr = array();
            for ($i=0; $i < $size; $i++) { 
                $sub_arr = array();
                for ($k=0; $k < $size; $k++) {
                    $num = $num + 1; 
                    $sub_arr[] = $num;
                }
                $arr[] = $sub_arr;
            }
            print_r($arr)
        ?>
    </table>
</body>
</html>