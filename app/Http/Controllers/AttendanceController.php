<?php

namespace App\Http\Controllers;

use App\Models\Attendance;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AttendanceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, User $user)
    {
        Attendance::create([
            'user_id' => $user->id,
            'punched_in' => now(),
            'punched_in_note' => $request->punched_in_note,
        ]);
        return redirect()->back()->with('success', 'Successfully punched in');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Attendance  $attendance
     * @return \Illuminate\Http\Response
     */
    public function show(Attendance $attendance)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Attendance  $attendance
     * @return \Illuminate\Http\Response
     */
    public function edit(Attendance $attendance)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Attendance  $attendance
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,User $user, Attendance $attendance)
    {
        $punched_in = $attendance->punched_in;
        $punched_out = now();

        $totalHours = $punched_out->diffInHours($punched_in);
        $totalMinutes = $punched_out->diffInMinutes($punched_in);


//        $working_time = $punched_out->diffin($punched_in);

//        dd(Carbon::parse($working_time));
//        dd($working_time->format('%H:%I:%S'));

//        $total = $punched_out->diff($punched_in)->format('%H:%I:%S');
//        If you want to have the difference with more than 24h, you may use :
//        $start->diffInHours($end) . ':' . $start->diff($end)->format('%I:%S');
//        $total = $punched_out->diff($punched_in)->format('%H:%i:%s');

        $attendance->update([
            'user_id' => $user->id,
            'punched_out' => $punched_out,
            'punched_out_note' => $request->punched_out_note,
            'working_time' => $totalHours ? $totalHours.'h' : $totalMinutes.'m',
        ]);
        return redirect()->back()->with('success', 'Successfully punched Out');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Attendance  $attendance
     * @return \Illuminate\Http\Response
     */
    public function destroy(Attendance $attendance)
    {
        //
    }
}
