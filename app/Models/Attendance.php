<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    protected $guarded = [];

    protected $dates = [
        'punched_in', 'punch_out'
    ];

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
//
//    public  function countAttendance(){
//        return $this->user()
//            ->select('attendances.*', DB::raw('sum(attendances.working_time) total_working_time'))
//            ->groupBy('user_id')
//            ->get();
//    }

}
