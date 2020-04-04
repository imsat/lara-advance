<?php

use Illuminate\Database\Seeder;
use App\Models\Role;
use App\Models\Permission;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use App\Models\Document;
use App\Models\Lesson;
use App\Models\Setting;
use App\Models\Category;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0');

        Category::truncate();
        User::truncate();
        User::truncate();
        User::truncate();
        Document::truncate();
        Lesson::truncate();
        Setting::truncate();

        $this->call(RoleSeeder::class);
        $this->call(PermissionSeeder::class);
        $this->call(SettingSeeder::class);

        factory(Category::class, 10)->create();

        //for Admin
        $admin = factory(User::class)->create([
            'first_name' => 'Admin',
            'last_name' => 'Admin',
            'email' => 'admin@example.com',
            'password' => bcrypt(123456)
        ]);
        $admin->assignRoles(['admin', 'author', 'editor']);

        //for editor
        $editor = factory(User::class)->create([
            'first_name' => 'Editor',
            'last_name' => 'Editor',
            'email' => 'editor@example.com',
            'password' => bcrypt(123456)
        ]);
        $editor->assignRole('editor');

        //for editor
        $author = factory(User::class)->create([
            'first_name' => 'Editor',
            'last_name' => 'Editor',
            'email' => 'author@example.com',
            'password' => bcrypt(123456)
        ]);
        $author->assignRole('author');

        $permissions = Permission::all();
        $permissions->each(function ($permission) {
            $role_admin = Role::where('name', 'admin')->first();
            $role_admin->givePermissionTo($permission);
        });
        $role_editor = Role::where('name', 'editor')->first();
        $role_author = Role::where('name', 'author')->first();

        $data1 = array(11, 13, 14, 15, 16);
        $data2 = array(12, 14, 15);
        $role_editor->permissions()->attach($data1);
        $role_author->permissions()->attach($data2);


        factory(User::class, 50)->create()->each(
            function ($user) {
                factory('App\Models\Post', 2)->create(['user_id' => $user->id]);
                $roles = Role::where('id', 2)->orWhere('id', 3)->get()->random(mt_rand(1, 2))->pluck('id');
                $user->roles()->attach($roles);
            });

        factory(Document::class, 3)->create();
        factory(Lesson::class, 500)->create();


    }
}
