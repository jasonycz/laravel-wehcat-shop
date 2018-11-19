<?php

function route_class()
{
    return str_replace('.', '-', Route::currentRouteName());
}

function p($data)
{
    echo "<pre>";
    print_r($data);
    echo "</pre>";
}

function ps($data)
{
    echo "<pre>";
    print_r($data);
    echo "</pre>";
    die();
}
