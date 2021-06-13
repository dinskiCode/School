<!Doctype html>
<html>
    <head>
    </head>
    <body>
        <?php
            $amount_of_ips = 3; // how many ips are going to be generated 
            $ips = array('', '', '');
            $octets_equal = 1;

            // generate equal octets
            for ($i = 0; $i < $octets_equal; $i++) {
                $equal_octet = mt_rand(0, 255);
                for ($k = 0; $k < sizeof($ips); $k++) {
                    $ips[$k] .= "$equal_octet.";
                }
            }
            
            // generate the rest of the ip
            for ($i = 0; $i < 3; $i++) {
                $ip = '';
                $subnet = mt_rand(10, 30);
                for ($k = 0; $k < 4 - $octets_equal; $k++) {
                    $num = mt_rand(0, 255);
                    if ($k < 3 - $octets_equal) {
                        $ip .= "$num.";    
                    } else {
                        $ip .= "$num";
                    }
                }
                $ip .= "/$subnet";
                $ips[$i] .= $ip;
            } 
            foreach($ips as $ip) {
                echo "<br><span style='font-size: 1.5rem'>$ip</span></br>";
            }
        ?>
    </body>
</html>
