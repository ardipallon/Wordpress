<?php
/**
 * Created by PhpStorm.
 * User: ardip
 * Date: 15.12.2017
 * Time: 11:30
 */
function valjastaTabel($ridadeArv, $veergudeArv){
    echo '<table border="1">';
    for($reaNumber = 1; $reaNumber <= $ridadeArv; $reaNumber++){
        echo '<tr>';
        for ($veeruNumber = 1; $veeruNumber <= $veergudeArv; $veeruNumber++){
            echo '<td>';
            echo rand(10, 99);
            echo '</td>';
        }
        echo '</tr>';
    }
    echo '</table>';
}
valjastaTabel(5, 7);