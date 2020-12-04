<?php 
/*
L'âge de la retraite est fixé à 55 ans

SI l'âge fourni ($age) est supérieur à l'âge de la retraite ($retraite)
    alors
    afficher (echo) "vous êtes à la retraite depuis X années"

SINON SI l'âge fourni ($age) est inférieur à l'âge de la retraite ($retraite)
    alors   
    afficher (echo) "Il vous reste X années  avant la retraite"

SINON 
    alors
    afficher (echo) "La retraite c'est cette année"


*/

$retraite = 55;

$age = 20;

$difference = $age - $retraite;

$difference2 = $retraite - $age;

if ($retraite > $age) {
    echo "Vous êtes à la retraite depuis " .$difference;
}
elseif ($retraite < $age) {
    echo "Il vous reste ".$difference2 . " avant la retraite";
}
else {
    echo "La retraite c'est cette année";
}