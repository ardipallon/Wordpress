<?php
/**
 * Created by PhpStorm.
 * User: ardip
 * Date: 15.12.2017
 * Time: 10:30
 */
$varv = '';
for ($arv = 1; $arv <= 10; $arv++){
    if($arv % 2 == 0){
        $varv = 'red';
    } else {
        $varv = 'blue';
    }
    echo '<p style="color: '.$varv.'">'.$arv.'<br />';
}
$kord = 0;
while($kord++ <= 4){
    if($kord == 3) continue;
    echo '<i>'.$kord.'<i>';
}
do {
    echo '<b>'.$kord.'</b>';
} while ($kord <= 5);

