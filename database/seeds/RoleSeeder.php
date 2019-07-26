<?php

use Illuminate\Database\Seeder;
use App\Models\Role;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = Role::create([
            'name' => 'Admin',
            'slug' => 'admin',
            'description' => 'Admin Description'
        ]);

        $author = Role::create([
            'name' => 'Author',
            'slug' => 'author',
            'description' => 'Author Description'
        ]);

        $editor = Role::create([
            'name' => 'Editor',
            'slug' => 'editor',
            'description' => 'Editor Description'
        ]);
    }
}
