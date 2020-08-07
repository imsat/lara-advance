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

//use Illuminate\Support\Facades\Request;

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

    protected $proxies = '*';

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
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

        /*
         * try some get ip stuff
        */

//        dd(Request::ip());
//        dd($request->getClientIp());
//        dd(Request::ip());
//        dd(Request::getClientIp());
//        dd($this->getIp());
//        dd(\Request::getClientIp());
//        dd($this->getClientIp());

        return view('home.home');

    }


    /*
     *  Used to get IP address of visitor
     *  @return date
     */

    function getRemoteIPAddress()
    {
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
            return $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            return $_SERVER['HTTP_X_FORWARDED_FOR'];
        }
        return $_SERVER['REMOTE_ADDR'];
    }

    /*
     *  Used to get IP address of visitor
     *  @return IP address
     */
    function getClientIp()
    {
        $ips = $this->getRemoteIPAddress();
        $ips = explode(',', $ips);
        return !empty($ips[0]) ? $ips[0] : \Request::getClientIp();
    }

//    public function getIp(){
//        foreach (array('HTTP_CLIENT_IP', 'HTTP_X_FORWARDED_FOR', 'HTTP_X_FORWARDED', 'HTTP_X_CLUSTER_CLIENT_IP', 'HTTP_FORWARDED_FOR', 'HTTP_FORWARDED', 'REMOTE_ADDR') as $key){
//            if (array_key_exists($key, $_SERVER) === true){
//                foreach (explode(',', $_SERVER[$key]) as $ip){
//                    $ip = trim($ip); // just to be safe
//                    if (filter_var($ip, FILTER_VALIDATE_IP, FILTER_FLAG_NO_PRIV_RANGE | FILTER_FLAG_NO_RES_RANGE) !== false){
//                        return $ip;
//                    }
//                }
//            }
//        }
//    }
}
