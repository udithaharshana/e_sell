<?php

namespace App\Notifications;

use Illuminate\Notifications\Notification;

class CustomDBChannel
{
    public function send($notifiable, Notification $notification)
    {
      $data = $notification->toDatabase($notifiable);

      return $notifiable->routeNotificationFor('database')->create([
          'type' => $data['type'],
          'data' => $data['data'],
          'read_at' => null,
          'updated_at' => null
      ]);
    }

}
