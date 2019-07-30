<?php

namespace App\Listeners;

use App\Events\MusicEvent;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class MusicEventListener
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
     * @param  MusicEvent  $event
     * @return void
     */
    public function handle(MusicEvent $event)
    {
        //
    }
}
