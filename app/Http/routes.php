<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/
$app->group(['prefix' => 'api', 'namespace' => 'App\Http\Controllers'], function() use ($app) {
	// api routes
	$app->get('badges', 'BadgesController@badges');
	$app->get('interests', 'InterestsController@interests');
});

$app->get('/', function () use ($app) {
    return $app->version();
});
