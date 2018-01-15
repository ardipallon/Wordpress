<?php
/**
 * Created by PhpStorm.
 * User: ardip
 * Date: 13.12.2017
 * Time: 08:44
 */
header('Refresh: 2');
$ilm = 'Päike paistab';
if($ilm == 'sajab'){
    $tuju = 'halb';
} else {
    $tuju = 'hea';
}
echo 'Väljas '.$ilm.'<br />';
echo 'Minul on '.$tuju.' tuju<br />';
//
$ilm = 'sajab';
$tuju == ($ilm == 'sajab')? 'halb' : 'hea';
echo 'Väljas '.$ilm.'<br />';
echo 'Minul on '.$tuju.' tuju<br />';
//
$vanus = rand(0,100);
if($vanus >= 0 and $vanus < 11) {
    $staatus = 'laps';
} elseif ($vanus > 10 and $vanus < 18) {
    $staatus = 'nooruk';
} elseif ($vanus > 17 and $vanus < 65) {
    $staatus = 'täiskasvanu';
} else {
    $staatus = 'senior';
}
echo 'Oled '.$vanus.' aastat vana.<br />';
echo 'Oled '.$staatus.'<br />';
//
$number = rand(1, 10);
echo $number.' - ';
switch ($number) {
    case 1: echo 'üks';
    break;
    case 2: echo 'kaks';
    break;
    case 3: echo 'kolm';
    break;
    case 4: echo 'neli';
    break;
    case 5: echo 'viis';
    break;
    default: echo 'antud numbrit ei tea';
}