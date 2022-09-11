<?php

namespace App\Notifications;

use Illuminate\Notifications\Notification;
use App\Notifications\CustomDbChannel;

class CreateNotification extends Notification
{
    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($notification)
    {
        $this->notification = $notification;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return [CustomDbChannel::class];
    }

    public function toDatabase($notifiable)
    {
        return $this->notification;
    }
}
