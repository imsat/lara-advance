<?php

namespace App\Mail;

use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class WelcomeAgain extends Mailable
{
    use Queueable, SerializesModels;

    public $user;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(User $user)
    {
        $this->user = $user;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $url = route('users.show', $this->user->id);
        return $this->markdown('emails.welcome-again', compact('url'))
            ->from('hello@example.com', 'Lara Advance')
            ->subject('Hello & Welcome!')
            ->replyTo('hello@example.com', 'Lara Advance');
    }
}
