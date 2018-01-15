<?php
/**
 * Created by PhpStorm.
 * User: ardip
 * Date: 13.12.2017
 * Time: 09:35
 */
header('Refresh: 3');
$kuupaev = rand(1, 12);
echo $kuupaev.' - ';
switch ($kuupaev) {
    case 1: echo 'Jaanuar - Näärikuu';
    break;
    case 2: echo 'Veebruar - Vastlad';
    break;
    case 3: echo 'Märts - Puude õitseng';
    break;
    case 4: echo 'Aprill - Naljakuu';
    break;
    case 5: echo 'Mai - Kevadpüha';
    break;
    case 6: echo 'Juuni - Jaanipäev';
    break;
    case 7: echo 'Juuli - Kuum suveilm';
    break;
    case 8: echo 'August - Vaheaja lõpp';
    break;
    case 9: echo 'September - Oh kooliaeg, oh kooliaeg';
    break;
    case 10: echo 'Oktoober - Lehtede värvimine';
    break;
    case 11: echo 'November - Lehtede langemine';
    break;
    case 12: echo 'Detsember - Jõulukuu';
    break;
    default: echo 'Antud kuud ei tea';
}