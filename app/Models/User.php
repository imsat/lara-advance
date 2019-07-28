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
//    protected $fillable = [
//        'name', 'email', 'password',
//    ];

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

    /**
     * Many-To-Many Relationship Method for accessing the User->roles
     */

    public function roles(){
        return $this->belongsToMany('App\Models\Role');
    }
    /**
     * @param string|array $roles
     */
    public function authorizeRoles($roles)
    {
        if (is_array($roles)) {
            return $this->hasAnyRole($roles) ||
                abort(401, 'This action is unauthorized.');
        }
        return $this->hasRole($roles) ||
            abort(401, 'This action is unauthorized.');
    }
    /**
     * Check multiple roles
     * @param array $roles
     */
    public function hasAnyRole($roles)
    {
        return null !== $this->roles()->whereIn('name', $roles)->first();
    }
    /**
     * Check one role
     * @param string $role
     */
    public function hasRole($role)
    {
        return null !== $this->roles()->where('name', $role)->first();
    }

//    public function hasAnyRole($roles)
//    {
//        if(is_array($roles)){
//            foreach ($roles as $role){
//                if($this->hasRole($role)){
//                    return true;
//                }
//            }
//        }else{
//            if($this->hasRole($roles)){
//                return true;
//            }
//        }
//        return false;
//    }
//
//    public function hasRole($role)
//    {
//        if($this->roles()->where('name', $role)->first()){
//            return true;
//        }
//        return false;
//    }
    /**
     * @param string|array $permissions
     */
    public function hasAnyPermission($permissions)
    {
        if(is_array($permissions)){
            foreach ($permissions as $perm){
                if($this->hasPermission($perm)){
                    return true;
                }
            }
        }else{
            if($this->hasPermission($permissions)){
                return true;
            }
        }
        return false;
    }
    /**
     * Check one permisson
     * @param string $permission
     */
    public function hasPermission($permission)
    {
        foreach ($this->roles as $role) {
            if($role->permissions()->where('name', $permission)->first()){
                return true;
            }
        }
        return false;
    }


}
