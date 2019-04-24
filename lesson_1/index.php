<?php

function test(&$c)
{
    static $b = 0;
    $b = &$c;
    echo $b;
}
$c = 2;
test($c);
$c =3;
test($c);