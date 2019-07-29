<?php

use Illuminate\Database\Seeder;
use App\Models\Permission;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //user permissions
        Permission::create(['name' => 'user-access','slug' => 'user-access', 'for' => 'user']);
        Permission::create(['name' => 'user-create','slug' => 'user-create', 'for' => 'user']);
        Permission::create(['name' => 'user-update','slug' => 'user-update', 'for' => 'user']);
        Permission::create(['name' => 'user-show','slug' => 'user-show', 'for' => 'user']);
        Permission::create(['name' => 'user-delete','slug' => 'user-delete', 'for' => 'user']);
        //role permissions
        Permission::create(['name' => 'role-access','slug' => 'role-access', 'for' => 'role']);
        Permission::create(['name' => 'role-create','slug' => 'role-create', 'for' => 'role']);
        Permission::create(['name' => 'role-update','slug' => 'role-update', 'for' => 'role']);
        Permission::create(['name' => 'role-show','slug' => 'role-show', 'for' => 'role']);
        Permission::create(['name' => 'role-delete','slug' => 'role-delete', 'for' => 'role']);
        //post permissions
        Permission::create(['name' => 'post-access','slug' => 'post-access', 'for' => 'post']);
        Permission::create(['name' => 'post-create','slug' => 'post-create', 'for' => 'post']);
        Permission::create(['name' => 'post-update','slug' => 'post-update', 'for' => 'post']);
        Permission::create(['name' => 'post-show','slug' => 'post-show', 'for' => 'post']);
        Permission::create(['name' => 'post-delete','slug' => 'post-delete', 'for' => 'post']);
        Permission::create(['name' => 'post-publish','slug' => 'post-publish', 'for' => 'post']);

        //other permissions
        Permission::create(['name' => 'category-crud','slug' => 'category-crud', 'for' => 'other']);
        Permission::create(['name' => 'tag-crud','slug' => 'tag-crud', 'for' => 'other']);
    }
}
