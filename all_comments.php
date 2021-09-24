<!DOCTYPE html>
<html>
    <head>
        <title>Inner Join - commentaires</title>
        <meta charset='utf-8'>
    </head>
    <body>
        <h1>Commentaires</h1>
        <?php
            $servname = "localhost"; $dbname = "jointures"; $user = "root"; $pass = "";

            try{
                $dbco = new PDO("mysql:host=$servname;dbname=$dbname", $user, $pass);
                $dbco->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                /*Sélectionne les valeurs dans les colonnes prenom et mail de la table
                 *users pour chaque entrée de la table*/
                $sth = $dbco->prepare("SELECT contenu, dateComment FROM comments");
                $sth->execute();

                /*Retourne un tableau associatif pour chaque entrée de notre table
                 *avec le nom des colonnes sélectionnées en clefs*/
                $resultat = $sth->fetchAll(PDO::FETCH_ASSOC);

                /*print_r permet un affichage lisible des résultats,
                 *<pre> rend le tout un peu plus lisible*/
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