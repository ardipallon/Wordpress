<?php
/**
 * Created by PhpStorm.
 * User: ardip
 * Date: 09.01.2018
 * Time: 11:41
 */
$opilane = array(
    'eesnimi' => 'Mart',
    'perenimi' => 'Lepp',
    'vanus' => 15,
    'klass' => 9
);

echo '<pre>';
print_r($opilane);
echo '</pre>';

echo $opilane['eesnimi'];

echo '<hr />';
foreach ($opilane as $voti => $vaartus){
    echo $voti.' - '.$vaartus.'<br />';
}
echo '<hr />';

$opilased = array(
    array(
        'eesnimi' => 'Mart',
        'perenimi' => 'Lepp',
        'vanus' => 15,
        'klass' => 9),
    array(
        'eesnimi' => 'Kadri',
        'perenimi' => 'Tamm',
        'vanus' => 16,
        'klass' => 10),
    array(
        'eesnimi' => 'Kadi',
        'perenimi' => 'Kuusk',
        'vanus' => 15,
        'klass' => 9)
);

echo '<pre>';
print_r($opilane);
echo '</pre>';

foreach ($opilased as $opilane){
    foreach ($opilane as $element => $vaartus){
        echo $element.' - '.$vaartus.'<br />';
    }
    echo '-------------------------'.'<br />';
}
function raamatuteTabel($raamatud){
    echo '<table border="1">';
    $pealkiriValjastatud = false;
    foreach($raamatud as $raamat){
        $pealkiri = array_keys($raamat);
        echo '<tr>';
        if(!$pealkiriValjastatud){
            foreach($pealkiri as $nimetus) {
                echo '<th>';
                echo $nimetus;
                echo '</th>';
            }
            echo '</tr>';
            $pealkiriValjastatud = true;
        }
        foreach($raamat as $element => $vaartus){
            echo '<td>';
            echo $vaartus;
            echo '</td>';
        }
        echo '</tr>';
    }
    echo '</table>';
}
$raamatud = array(
    array(
        'title' => 'Peppa Goes To London',
        'author' => 'Ladybird',
        'print' => 'Penguin',
        'status' => 'valjas'
    ),
    array(
        'title' => 'Toto, Joonas ja püha Mimoos',
        'author' => 'Kristiina K.',
        'print' => 'Heli Kirjastus OÜ',
        'status' => 'sees'
    ),
    array(
        'title' => 'Lugusid loomadest',
        'author' => 'Ernest Thompson Seton',
        'print' => 'Ernest Thompson Seton',
        'status' => 'sees'
    ),
    array(
        'title' => 'Miljon miksi ja miljon vastust',
        'author' => '',
        'print' => 'TEA Kirjastus',
        'status' => 'sees'
    ),
    array(
        'title' => 'Teadmiste Puu: Maailma Loodus',
        'author' => 'AJ Wood, Mike Jolley',
        'print' => 'Pikoprint',
        'status' => 'valjas'
    )
);

raamatuteTabel($raamatud);


function otsiRaamat($raamatud, $status){
    $leitudRaamatud = array();
    foreach ($raamatud as $raamat) {
        if ($raamat['status'] == $status) {
            $leitudRaamatud[] = $raamat;
        }
    }
    return $leitudRaamatud;
}


$kohalRaamatud = otsiRaamat($raamatud, 'sees');
raamatuteTabel($kohalRaamatud);
raamatuteTabel($raamatud);