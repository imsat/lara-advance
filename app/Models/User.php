<?php

namespace App\Models;

use App\Events\UserCreatedEvent;
use Carbon\Carbon;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class User extends Authenticatable  //implements MustVerifyEmail
{
    use Notifiable;

    protected $dispatchesEvents = [
        'created' => UserCreatedEvent::class,
    ];

//    public static function boot()
//    {
//        parent::boot();
//
//        User::created(function ($user) {
//            event(new UserCreatedEvent($user));
//        });
//    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded = [];

    public function scopePunched()
    {
        return $this->attendances()->latest()->where('punched_in', Carbon::today())->get();
    }

    public static function generateVerificationCode()
    {
        return Str::random(40);
    }
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token', 'verification_token'
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    /**
     * Many-To-Many Relationship Method for accessing the User->roles
     */

    public function roles()
    {
        return $this->belongsToMany('App\Models\Role');
    }

    /**
     * Assign Roles to users
     */
    public function assignRole($role)
    {
       return  $this->roles()->syncWithoutDetaching(
            Role::whereName($role)->firstOrFail()
        );
    }
    /**
     * Assign multiple Roles to users
     */

    public function assignRoles($roles)
    {
        foreach ($roles as $role){
            $this->roles()->syncWithoutDetaching(
                Role::whereName($role)->firstOrFail()
            );
       }
       return $this;
    }

    /**
     * Check user has role
     * @param  string  $role
     * @return string
     */
    public function hasRole($role)
    {
        if(is_string($role)){
            return $this->roles->contains('name', strtolower($role));
        }

        return !! $role->intersect($this->roles)->count();
        //array_filter except  intersection method

//        foreach ($role as $r){
//            if($this->hasRole($r->name)){
//                return true;
//            }
//        }
//        return false;
    }

    /**
     * Owner of the actual gate facades
     *
     */
    public function owns($related)
    {
        return $this->id == $related->user_id;
    }

    public function tasks()
    {
        return $this->belongsToMany('App\Models\Task');
    }

    public function attendances()
    {
        return $this->hasMany('App\Models\Attendance');
    }


    /**
     * Get the user's full name.
     *
     * @return string
     */
    public function getFullNameAttribute()
    {
        return "{$this->first_name} {$this->last_name}";
    }


    /**
     * Get the user's created date custom formated.
     *
     * @param  string  $value
     * @return string
     */
    public function getCreatedAtAttribute($value)
    {
        return date('d/m/Y', strtotime($value));
    }


}
