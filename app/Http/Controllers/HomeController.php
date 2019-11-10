<?php

namespace App\Http\Controllers;

use App\Events\UserBannedEvent;
use App\Jobs\CompileJob;
use App\Mail\WelcomeAgain;
use App\Models\Attendance;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use DB;

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
//        $a = DB::table('attendances')
//            ->select(DB::raw('sum(working_time) as total'))
//            ->groupBy(DB::raw('DAY(created_at)'))
//            ->get();

//        $a = Attendance::select('id', 'working_time', 'created_at')
//        ->get()s
//        ->groupBy(function($date) {
//            return Carbon::parse($date->created_at)->format('d'); // grouping by years
//            //return Carbon::parse($date->created_at)->format('m'); // grouping by months
//        });
//
//        $lists = array();
//        $today = (int)date('d');
//
//        for ($i = 0; $i <= $today; $i++) {
//            $lists[$i] = 0;
//        }
////        $a = Attendance::
////             select(DB::raw('sum(working_time) as working_time'))
////            ->groupBy(DB::raw('DAY(created_at)') )
////            ->get();
//
//        foreach ($a as $key => $b){
//            $lists[$key] = $b;
//        }
//
//        dd($lists);

//        Mail::to($user)->send(new WelcomeAgain($user));
//        event('UserBannedEvent', $user); //not working as 5.1 version
//        event(new UserBannedEvent($user));
//        broadcast(new UserBannedEvent($user))->toOthers();

//        $this->dispatch(new CompileJob($user));

        return view('home.home');

    }
}
