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
        Role::create(['name' => 'Admin','slug' => 'admin','description' => 'Admin Description']);
        Role::create(['name' => 'Editor','slug' => 'editor','description' => 'Editor Description']);
        Role::create(['name' => 'Author','slug' => 'author','description' => 'Author Description']);
    }
}
