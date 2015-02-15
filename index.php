<?php

require_once 'core/init.php';

$user = DB::getInstance()->update('users', 3, array(
    'password' => 'newpassword',
    'name'     => ''
));
//$user = DB::getInstance()->insert('users', array(
//    'username' => 'Dale',
//    'password' => 'password',
//    'salt' => 'password',
//    'name' => 'Dale Garret',
//    'joined' => date('Y-m-d'),
//    'group' => 1
//));