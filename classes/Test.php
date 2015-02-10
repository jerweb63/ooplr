<?php

class Test
{
    public $news = 12;
    private function message() {
        echo 'Bedrijf x';
    }

    function banana() {
        return $this->message();
    }
}

$real = new Test();

//Test::message();
//$real->message();
$real->banana();

