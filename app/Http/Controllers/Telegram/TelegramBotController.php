<?php

namespace App\Http\Controllers\Telegram;

use App\Http\Controllers\Controller;
use Telegram\Bot\Laravel\Facades\Telegram;


class TelegramBotController extends Controller
{
    //
    public function messages($messages)
    {
        Telegram::sendMessage([
            'chat_id' =>'-1001584044010',
            'parse_mode' => 'HTML',
            'text' => $messages
        ]);
    }




}
