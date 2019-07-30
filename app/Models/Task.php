<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    protected $guarded = [];

    public function users()
    {
        return $this->belongsToMany('App\Models\User');
    }

    public function assignTask($users)
    {
        return $this->users()->sync($users);
    }

    /**
     * Set the task date field Mutators.
     * @param  string  $value
     * @return void
     */
    public function setDeadlineAtAttribute($date)
    {
        $this->attributes['deadline_at'] = Carbon::parse($date);
    }

    /**
     * Get the task date field Accessors.
     * @param  string  $value
     * @return void
     */
    public function getDeadlineAtAttribute($value)
    {
        return date('d/m/Y', strtotime($value));
    }
}
