<?php

namespace App\Providers;

use Illuminate\Support\Facades\Event;
use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
        'App\Events\MusicEvent' => [
           ' App\Listeners\MusicEventListener'
        ],
        'App\Events\UserBannedEvent' => [
           'App\Listeners\EmailBanNotification',
//            'App\listeners\CancelSubscription' //multiple listener cab be triggered.
        ],
        'App\Events\UserCreatedEvent' => [
           'App\Listeners\UserCreatedListeners',
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();

        //
    }
}
