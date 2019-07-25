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
            'permissions' => json_encode([
                'create-post' => true,
                'update-post' => true,
                'publish-post'=> true,
                'delete-post' => true,
            ])
        ]);

        $author = Role::create([
            'name' => 'Author',
            'slug' => 'author',
            'permissions' => json_encode([
                'create-post' => true,
            ])
        ]);

        $editor = Role::create([
            'name' => 'Editor',
            'slug' => 'editor',
            'permissions' => json_encode([
                'update-post' => true,
                'publish-post' => true,
            ])
        ]);
    }
}
