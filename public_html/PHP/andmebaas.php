<?php
/**
 * Created by PhpStorm.
 * User: ardip
 * Date: 11.01.2018
 * Time: 10:17
 */
function yhendus(){
    $yhendus = mysqli_connect('localhost', 'ardipallon', 'Carmageddon1', 'ardipall_testimine');
    echo '<pre>';

    if(!$yhendus){
        echo 'Probleem andmebaasi ühendamisega<br />';
        echo mysqli_connect_error().'<br />';
        echo mysqli_connect_errno().'<br />';
    } else {
        echo 'Ühendus on tekkinud<br />';
    }
    return $yhendus;
}

function sisesta($eesnimi, $perenimi, $synnikuupaev, $yhendus){
    $sql = 'INSERT INTO KASUTAJAD (eesnimi, perenimi, synnikuupaev) '.' VALUES (\''.$eesnimi.'\', \''.$perenimi.'\',\''.$synnikuupaev.'\')';
    $tulemus = mysqli_query($yhendus, $sql);
    if(!$tulemus){
        echo 'Probleem andmete salvestamisega<br />';
        echo mysqli_connect_error($yhendus).'<br />';
        echo mysqli_connect_errno($yhendus).'<br />';
    } else {
        echo 'Andmed on salvestatud';
    }
}

function loe($yhendus){
    $andmed = array();
    $sql = 'SELECT * FROM KASUTAJAD';
    $tulemus = mysqli_query($yhendus, $sql);
    if(!$tulemus){
        echo 'Probleem andmete salvestamisega';
        echo mysqli_error($yhendus).'<br />';
        echo mysqli_errno($yhendus).'<br />';
    } else {
        while($rida = mysqli_fetch_assoc($tulemus)) {
            $andmed[] = $rida;
        }
    }
    return $andmed;
}
function tabel($andmed){
    echo '<table border="1">';
    foreach ($andmed as $inimene){
        echo '<tr>';
        foreach ($inimene as $info){
            echo '<td>'.$info.'</td>';
        }
        echo '</tr>';
    }
    echo '</table>';
}

include 'aeg.php';

$yhendus = yhendus();
$eesnimi = $_POST['eesnimi'];
$perenimi = $_POST['perenimi'];
$synnikuupaev = ajaTootlus($_POST['paev'], $_POST['kuu'], $_POST['aasta']);
sisesta($eesnimi, $perenimi, $synnikuupaev, $yhendus);
$andmed = loe($yhendus);
tabel($andmed);