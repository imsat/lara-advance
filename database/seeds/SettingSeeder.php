<?php

use Illuminate\Database\Seeder;
use App\Models\Setting;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Setting::create(['name' => 'app_name', 'value' => 'Advance Laravel']);
        Setting::create(['name' => 'date_format', 'value' => 'd/m/Y']);
        Setting::create(['name' => 'time_format', 'value' => 'g:i A']);
    }
}
