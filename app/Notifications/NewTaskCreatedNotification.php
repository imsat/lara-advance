<?php

namespace App\Notifications;

use App\Models\Task;
use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class NewTaskCreatedNotification extends Notification
{
    use Queueable;
    public $user;
    public $task;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct(User $user, Task $task)
    {
        $this->user = $user;
        $this->task = $task;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail', 'database'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        return (new MailMessage)
            ->subject('New Task ')
            ->markdown('emails.new-task-email', ['user' => $this->user, 'task' => $this->task]);
//
//            ->greeting('New Project Created')
//            ->line('Project Name'.' '.$this->task['name'])
//            ->action('View Task', route('task.show', $this->task->id))
//            ->line($this->task['deadline_at']);

    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            'title' => $this->task->name,
            'deadline_at'  => $this->task->deadline_at,
            'created_at'  => $this->task->created_at,
            'created_by'  => $this->user->fullName
        ];
    }
}
