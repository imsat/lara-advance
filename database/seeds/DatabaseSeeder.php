<?php

use Illuminate\Database\Seeder;
use App\Models\Role;
use App\Models\Permission;

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
        $this->call(PermissionSeeder::class);
        $this->call(SettingSeeder::class);
        factory('App\Models\Category', 10)->create();

        //for Admin
        $admin = factory('App\Models\User')->create([
            'first_name' => 'Admin',
            'last_name' => 'Admin',
            'email' => 'admin@example.com',
            'password' => bcrypt(123456)
        ]);
        $admin->assignRoles(['admin', 'author', 'editor']);

        //for editor
        $editor = factory('App\Models\User')->create([
            'first_name' => 'Editor',
            'last_name' => 'Editor',
            'email' => 'editor@example.com',
            'password' => bcrypt(123456)
        ]);
        $editor->assignRole('editor');

        //for editor
        $author = factory('App\Models\User')->create([
            'first_name' => 'Editor',
            'last_name' => 'Editor',
            'email' => 'author@example.com',
            'password' => bcrypt(123456)
        ]);
        $author->assignRole('author');

        $permissions = Permission::all();
        $permissions->each(function ($permission){
            $role_admin  = Role::where('name', 'admin')->first();
            $role_admin->givePermissionTo($permission);
        });
        $role_editor = Role::where('name', 'editor')->first();
        $role_author = Role::where('name', 'author')->first();

        $data1 = array(11, 13, 14 , 15, 16);
        $data2 = array(12, 14 , 15);
        $role_editor->permissions()->attach($data1);
        $role_author->permissions()->attach($data2);


        factory('App\Models\User', 50)->create()->each(
            function ($user){
                factory('App\Models\Post', 2)->create(['user_id' => $user->id]);
                $roles = Role::where('id', 2)->orWhere('id', 3)->get()->random(mt_rand(1,2))->pluck('id');
                $user->roles()->attach($roles);
            });

        factory('App\Models\Document', 3)->create();
        factory('App\Models\Lesson', 500)->create();


    }
}
