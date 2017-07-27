<?php 

function generateStaticString($character = "_", $length = 4) {
    $output = "";
    for ($i = 0; $i < $length; $i++) {
        $output .= $character;
    }
    return $output;
}

function generateRandomString($length = 4) {
    
    //$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $characters = '23456789abcdefghjkmnpqrstuvwxyz';
    $output = '';
    for ($i = 0; $i < $length; $i++) {
        $output .= $characters[rand(0, strlen($characters) - 1)];
    }
    return $output;
}

function generateRandomNumber($length = 10) {

    $characters = '0123456789';
    $output = '0';
    for ($i = 0; $i < $length - 1; $i++) {
        $output .= $characters[rand(0, strlen($characters) - 1)];
    }
    return $output;
}