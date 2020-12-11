<?php

$pays = [
    'France' => 'Paris',
    'Belgique' => 'Bruxelles',
    'Italie' => 'Rome',
    'Allemagne' => 'Berlin',
    'Maroc' => 'Rabat',
    'Espagne' => 'Lisbonne',
];


// array_key_exists()
// empty()

// Si le pays fait partie de la liste, renvoyer la capitale,
// Sinon, renvoyer "Capitale inconnue"
function capitalCity(string $nom_pays)
{
    global $pays;
if (array_key_exists($nom_pays, $pays)) {
        return $pays[$nom_pays];
    }
else {
    return 'Capitale inconnue';
    }
}


$capitale = capitalCity('Amérique');
echo $capitale;
echo capitalCity('Belgique');