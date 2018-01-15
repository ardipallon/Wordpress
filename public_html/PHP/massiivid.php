<?php
/**
 * Created by PhpStorm.
 * User: ardip
 * Date: 19.12.2017
 * Time: 08:44
 */
$arvud = array(5, 4, 3, 2, 1);
var_dump($arvud);
echo '<hr />';
echo '<pre>';
print_r($arvud);
echo '</pre>';
echo '<hr />';
$elementideArv = count($arvud);
echo 'Massiiv $arvud koosneb '.$elementideArv.' elemendist<br />';
$arvud[] = 0;
echo 'Massiiv $arvud koosneb '.count($arvud).' elemendist<br />';
for($i = 0; $i < $elementideArv; $i++){
    echo $arvud[$i].'<br />';
}
echo '<hr />';
foreach ($arvud as $arv){
    echo '<i>'.$arv.'</i><br />';
}

function looMassiiv($elementideArv){
    $massiiv = array();
    for($arv = 0; $arv < $elementideArv; $arv++){
        $juhuarv = rand(0, 99);
        $massiiv[] = $juhuarv;
    }
    return $massiiv;
}
$arvudeMassiiv = looMassiiv(8);
echo '<pre>';
print_r($arvudeMassiiv);
echo '</pre>';

function valjastaMassiiv($elementideArv)
{
    echo '<table border="1">';
    echo '<tr>';
    foreach ($elementideArv as $element){
        echo '<td>';
        echo $element;
        echo '</td>';
    }
    echo '</tr>';
    echo '</table>';
}
valjastaMassiiv($arvudeMassiiv);

echo '<hr />';
function loo2DMassiiv($ridadeArv, $veergudeArv){
    $massiiv2D = array();
    for($reaNumber = 0; $reaNumber < $ridadeArv; $reaNumber++){
        $massiiv2D[] = array();
        for($veeruNumber = 0; $veeruNumber < $veergudeArv; $veeruNumber++){
            $juhuarv = rand(0, 99);
            echo $juhuarv.'<br />';
            $massiiv2D[$reaNumber][] = $juhuarv;

        }
    }
    return $massiiv2D;
}
$arvudeMassiiv2D = loo2DMassiiv(2, 3);
echo '<pre>';
print_r($arvudeMassiiv2D);
echo '</pre>';

function vahetaMinMax(&$massiiv){
    $min = min($massiiv);
    $max = max($massiiv);
    echo $min.'<br />';
    echo $max.'<br />';
    for($i = 0; $i < count($massiiv); $i++){
        if($massiiv[$i] == $min){
            $massiiv[$i] = $max;
        } else if ($massiiv[$i] == $max){
            $massiiv[$i] = $min;
        }
        echo $massiiv[$i].' - ';
    }
}
echo '<hr />';
vahetaMinMax($arvudeMassiiv);
valjastaMassiiv($arvudeMassiiv);
echo '<hr />';

function elementideKorrutis($massiiv){
    $tulemus = 1;
    $korrutamismark = 0;
    echo 'Tulemus: ';
    for($i = 0; $i < count($massiiv); $i++){
        if($massiiv[$i] > 0 and $i % 2 == 0){
            $tulemus = $tulemus * $massiiv[$i];
            if($korrutamismark != 0) {
                echo ' * ' . $massiiv[$i];
            } else {
                echo $massiiv[$i];
                $korrutamismark = 1;
            }
        }
    }
    echo ' = '.$tulemus;
}

echo '<hr />';
elementideKorrutis(array(1, 0, 6, 0, 0, 3, 5));
echo '<hr />';