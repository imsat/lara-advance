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


}
