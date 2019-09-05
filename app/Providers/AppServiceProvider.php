<?php

namespace App\Providers;

use App\Jobs\SendVerificrionEmail;
use App\Mail\VerifyEmail;
use App\Models\Attendance;
use App\Models\Document;
use App\Models\Setting;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

//        $user = Auth::user()->attendances()->whereDate('created_at', Carbon::today())->get();

        View::composer(['includes.navbar'], function ($view) {
            $view->with('userAttendance', Attendance::where('user_id', Auth::user()->id)
                                                    ->where('punched_out', null)
                                                    ->whereDate('created_at', Carbon::today())
                                                    ->first()
            );
        });

        /**
         * Document catch updating event
         *
         * @return void
         */
//        Document::updating(function ($document) {
//            $document->adjustments()->attach(Auth::id());
//        });


        $settings = Setting::all();
        foreach ($settings as $setting){
            Config::set('uiu.'.$setting->name, $setting->value);
        }
//        Artisan::call('config:cache');
//        dd(config('uiu.date_format'));

    }
}
