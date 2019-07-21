<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        factory('App\User')->create(['name' => 'Admin', 'email' => 'admin@admin.com', 'password' => bcrypt(123456)]);
    }
}
