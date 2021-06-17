<!DOCTYPE html>
<html>
    <header>
        <style>
            body {
                font-size: 1.3rem;
            }
        </style>
    </header>
    <body>
        <?php
            print_r($_POST);
            $query = "";
            $articles = array(
                "mouse",
                "keyboard",
                "monitor",
                "cpu",
                "gpu"
            );
            if (!empty($_POST['search'])) {
                $query = $_POST['search'];
            }
        ?>
        <form method="POST">
            Search Products:
            <input name="search" value="<?php echo $query?>">
            <input name="search_btn" type="submit" value="search">
            <input name="list_all_btn" type="submit" value="list all">
        </form>
        <?php
            if (isset($_POST['search_btn'])) {
                if (!empty($_POST['search'])) {
                    $found_article = false;
                    for ($i = 0; $i < sizeof($articles); $i++) {
                        if ($query == $articles[$i]) {
                            echo "Found the following:<br>";
                            echo "(art-nr. $i) ", $articles[$i];
                            $found_article = true;
                        }
                    }
                    if(!$found_article) {
                        echo "0 results.";
                    }
                }
            } else if (isset($_POST['list_all_btn'])){
                echo "<ul>";
                foreach($articles as $article) {
                    echo "<li>$article</li>";
                }
                echo "</ul>";
            }
        ?>
    </body>
</html>
