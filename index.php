<?php
require_once __DIR__ . '/vendor/autoload.php';

$app = new Silex\Application();
// Please set to false in a production environment.
$app['debug'] = true;

$app->get('/hello/{name}', function ($name) use ($app) {
    return "Hello $name!\n";
});


$app->run();


