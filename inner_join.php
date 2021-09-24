<!DOCTYPE html>
<html>
    <head>
        <title>INNER JOIN</title>
        <meta charset='utf-8'>
    </head>
    <body>
        <h1>Les commentaires liés à l'utilisateur</h1>
        <?php
            $servname = "localhost"; $dbname = "jointures"; $user = "root"; $pass = "";

            try{
                $dbco = new PDO("mysql:host=$servname;dbname=$dbname", $user, $pass);
                $dbco->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                /*Sélectionne tous les users qui ont commenté et tous les
                 *commentaires liés à un user connu*/
                $sth = $dbco->prepare("

                    SELECT users.prenom, users.nom, users.mail, comments.contenu, comments.dateComment
                    FROM users
                    INNER JOIN comments ON users.id = comments.userId


                ");

                $sth-> execute();

                $resultat = $sth->fetchAll(PDO::FETCH_ASSOC);

                echo '<pre>';
                print_r($resultat);
                echo '</pre>';
            }

            catch(PDOException $e){
                echo "Erreur : " . $e->getMessage();
            }
        ?>
    </body>
</html>