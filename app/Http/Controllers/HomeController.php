<?php

namespace App\Http\Controllers;

use App\Events\UserBannedEvent;
use App\Jobs\CompileJob;
use App\Mail\WelcomeAgain;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $user = auth()->user();
//        Mail::to($user)->send(new WelcomeAgain($user));
//        event('UserBannedEvent', $user); //not working as 5.1 version
//        event(new UserBannedEvent($user));
//        broadcast(new UserBannedEvent($user))->toOthers();

//        $this->dispatch(new CompileJob($user));

        return view('home.home');

    }
}
