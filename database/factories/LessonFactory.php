<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Models\Lesson;
use Faker\Generator as Faker;

$factory->define(Lesson::class, function (Faker $faker) {

    $difficulties = ['Beginner','Intermediate','Advanced'];
    return [
        'title' => $faker->sentence,
        'body' => $faker->paragraph,
        'views' => $faker->numberBetween(800, 5000),
        'length' => $faker->numberBetween(400, 4000),
        'difficulty' => $faker->randomElement($difficulties),
    ];
});
