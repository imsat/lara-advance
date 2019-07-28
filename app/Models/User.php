<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded = [];
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
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
       return  $this->roles()->save(
            Role::whereName($role)->firstOrFail()
        );
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
