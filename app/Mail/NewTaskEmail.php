<?php

namespace App\Mail;

use App\Models\Task;
use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class NewTaskEmail extends Mailable
{
    use Queueable, SerializesModels;
    public $user;
    public $task;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(User $user, Task $task)
    {
        $this->task = $task;
        $this->user = $user;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.new-task-email');
    }
}
