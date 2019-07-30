<?php

namespace App\Jobs;

use App\Models\Task;
use App\Models\User;
use App\Notifications\NewTaskCreatedNotification;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class NewTasktNotificationJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    public $user;
    public $task;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct(User $user, Task $task)
    {
        $this->user = $user;
        $this->task = $task;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $this->user->notify(New NewTaskCreatedNotification($this->user, $this->task));
    }
}
