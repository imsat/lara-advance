<?php

namespace App\Http\Controllers;

use App\Models\Attendance;
use App\Models\User;
use Carbon\Carbon;
use http\Env\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpKernel\Exception\HttpException;

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
        //
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
    public function punchStatus(User $user)
    {
        $attendance = Attendance::latest()
                        ->where('user_id', $user->id)
                        ->whereDate('created_at', Carbon::today())
                        ->whereNull('punch_out')
                        ->first();
        return $attendance;
    }

    public function punchIn(Request $request, User $user)
    {
        Attendance::create([
            'user_id' => $user->id,
            'punch_in' => now(),
            'punch_in_ip' => $request->ip(),
            'in_note' => $request->in_note,
        ]);

        return response()->json(['message' => 'Successfully punched in', 'code' => '201'], 201);
    }
    public function punchOut(Request $request, Attendance $attendance)
    {
//        $this->checkUser($attendance, auth()->user()->id);
        $punchIn = $attendance->punch_in;
        $punchOut = now();
        $workingTime = $punchOut->diffInSeconds($punchIn);

        $attendance->update([
            'punch_out' => $punchOut,
            'punch_out_ip' => $request->ip(),
            'out_note' => $request->out_note,
            'working_time' => $workingTime,
        ]);

        return response()->json(['message' => 'Successfully punched out', 'code' => '201'], 201);
    }

    public function checkUser($attendance, $user)
    {
        if ($user->id != $attendance->user_id) {
            throw new HttpException(422, 'The specified user is not the actual user');
        }
    }
}
