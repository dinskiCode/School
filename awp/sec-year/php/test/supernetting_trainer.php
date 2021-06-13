<!Doctype html>
<html>
    <head>
    </head>
    <body>
        <?php
            $amount_of_ips = 4; // how many ips are going to be generated 
            $ips = array(); // no need for initializing arrays, can even access by index that doesnt exist yet apparently
            $octets_equal = 2;

            // generate equal octets
            for ($i = 0; $i < $octets_equal; $i++) {
                $equal_octet = mt_rand(0, 255);
                for ($k = 0; $k < $amount_of_ips; $k++) {
                    $ips[$k] .= "$equal_octet.";
                }
            }
            
            // generate the rest of the ip
            for ($i = 0; $i < $amount_of_ips; $i++) {
                $ip = '';
                $subnet = mt_rand(10, 30);
                for ($k = 0; $k < 4 - $octets_equal; $k++) {
                    $num = mt_rand(0, 255);
                    if ($k < 3 - $octets_equal) {
                        $ip .= "$num.";    
                    } else {
                        $ip .= "0";
                    }
                }
                $ip .= "/$subnet";
                $ips[$i] .= $ip;
            }

            // print ips of ip array 
            foreach($ips as $ip) {
                echo "<br><span style='font-size: 1.5rem'>$ip</span></br>";
            }
        ?>
    </body>
</html>
