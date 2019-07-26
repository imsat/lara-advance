<?php

use Illuminate\Database\Seeder;
use App\Models\Role;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(RoleSeeder::class);
        factory('App\Models\Category', 10)->create();

        //for Admin
        $admin = factory('App\Models\User')->create(['first_name' => 'Admin', 'email' => 'admin@admin.com', 'password' => bcrypt(123456)]);
        $role_id = Role::first()->pluck('id');
        $admin->roles()->attach($role_id);

        //for editor & author
        factory('App\Models\User', 100)->create()->each(
            function ($user){
                $roles = Role::where('id', 2)->orWhere('id', 3)->get()->random(mt_rand(1,2))->pluck('id');
                $user->roles()->attach($roles);
            });


    }
}
