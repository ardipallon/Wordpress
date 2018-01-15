<?php
/**
 * Created by PhpStorm.
 * User: ardip
 * Date: 18.12.2017
 * Time: 14:12
 */

//function arvuSumma ($number){
//    $summa = 0;
//    while($number != 0){
//        $arv = $number % 10;
//        $summa = $summa + $arv;
//        echo 'arv = '.$arv.'<br />';
//        $number = $number / 10;
//        settype($number, 'integer');
//        echo 'number= '.$number.'<br />';
//    }
//    return $summa;
//}
//for($kord = 1; $kord <= 5; $kord++) {
//    $number = rand(0, 1000);
//    echo 'Numbri ' . $number . ' arvude summa on ' . arvuSumma($number) . '<br />';
//}

function otsiNumber ($suvalineArv, $kindelArv){
    echo 'Arv '.$kindelArv.' esineb arvus '.$suvalineArv;
    $mituKorda = 0;
    while($suvalineArv != 0){
        $arv = $suvalineArv % 10;
        if($arv == $kindelArv){
            $mituKorda++;
        }
        $suvalineArv = $suvalineArv / 10;
        settype($suvalineArv, 'integer');
    }
    echo ' '.$mituKorda.' arv korda<br />';
}
otsiNumber(442158755745, 5);
otsiNumber(442158755745, 1);
otsiNumber(442158755745, 3);
otsiNumber(442158755745, 7);