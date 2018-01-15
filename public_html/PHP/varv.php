<?php
/**
 * Created by PhpStorm.
 * User: ardip
 * Date: 15.12.2017
 * Time: 11:52
 */

header('Refresh: 0.2');
function genereeriVarv(){
    $varv = '#';
    for($kord = 1; $kord <= 6; $kord++){
        $juhuTaisarv = rand(0, 15);
        $juhuHex = dechex($juhuTaisarv);
        $varv = $varv.$juhuHex;
    }
    return $varv;
}
function valjastaTabel($ridadeArv, $veergudeArv){
    echo '<table border="1">';
    for($reaNumber = 1; $reaNumber <= $ridadeArv; $reaNumber++){
        echo '<tr>';
        for ($veeruNumber = 1; $veeruNumber <= $veergudeArv; $veeruNumber++){
            echo '<td style="background-color: '.genereeriVarv().'">';
            echo rand(10, 99);
            echo '</td>';
        }
        echo '</tr>';
    }
    echo '</table>';
}
valjastaTabel(5, 7);