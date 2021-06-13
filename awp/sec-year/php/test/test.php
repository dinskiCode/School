<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>db-test</title>
</head>
<body>
    <?php
        $servername = "127.0.0.1";
        $username = "root";
        $password = "";
        $db_name = "rentalap";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $db_name);

        // Check connection
        if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
        }

        $select_kunden = 'select * from Kunden';
        $result = $conn->query($select_kunden);
        print_r($result);
        echo "<br>";
        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                // anders als beim select befehl sind die felder (z.B. KreditkartenNr) Case-sensitiv!
                echo "id: " . $row["ID"]. " - Name: " . $row["Name"]. " - KreditkartenNr.:" . $row["KreditkartenNr"]. "<br>";
            }
        } else {
            echo "0 results";
        }
        $conn->close();
    ?> 
</body>
</html>