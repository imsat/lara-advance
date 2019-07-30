<?php

namespace App\Listeners;

use App\Events\UserBannedEvent;
use App\Mail\UserBanned;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Mail;

class EmailBanNotification implements ShouldQueue
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  UserBannedEvent  $event
     * @return void
     */
    public function handle(UserBannedEvent $event)
    {
        Mail::to($event->user)->send(new UserBanned($event->user));
    }
}
