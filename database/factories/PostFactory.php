<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Models\Post;
use App\Models\Category;
use App\Models\User;
use Faker\Generator as Faker;
use Illuminate\Support\St;

$factory->define(Post::class, function (Faker $faker) {
    $name = $faker->unique()->sentence(5);
    return [
        'title' => $name,
        'slug' => Str::slug($name),
        'category_id' => Category::all()->random()->id,
        'body' => $faker->sentence(2),
        'status' => mt_rand(0, 1),
        'user_id' => User::all()->random()->id
    ];
});
