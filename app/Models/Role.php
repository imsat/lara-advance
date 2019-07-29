<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $guarded = [];

    /**
     * Many-To-Many Relationship Method for accessing the Role->users
     */
    public function users()
    {
        return $this->belongsToMany('App\Models\User');
    }

    /**
     * Many-To-Many Relationship Method for accessing the Role->permissions
     */
    public function permissions()
    {
        return $this->belongsToMany('App\Models\Permission');
    }

    /**
     * Assign permission to certain roles
     */
    public function givePermissionTo(Permission $permission)
    {
        return $this->permissions()->syncWithoutDetaching($permission);
    }


//    /**
//     * Get the roles name field capital letter.
//     * @param  string  $value
//     * @return void
//     */
//    public function getNameAttribute($value)
//    {
////        return ucwords($value);
//        return implode('-', array_map('ucfirst', explode('-', $value)));
//    }

    /**
     * Set the roles name small latter.
     *
     * @param  string  $value
     * @return void
     */
    public function setNameAttribute($value)
    {
        $this->attributes['name'] = strtolower($value);
    }

}
