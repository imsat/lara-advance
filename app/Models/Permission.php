<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    protected $guarded = [];

    public function roles(){
        return $this->belongsToMany('App\Models\Role');
    }

//    /**
//     * Get the permission name field capital letter.
//     * @param  string  $value
//     * @return void
//     */
//    public function getNameAttribute($value)
//    {
////        return ucwords($value);
//        return implode('-', array_map('ucfirst', explode('-', $value)));
//    }

    /**
     * Get the permission for field capital letter.
     * @param  string  $value
     * @return void
     */
    public function getForAttribute($value)
    {
        return ucfirst($value);
    }

    /**
     * Set the permission name small latter.
     *
     * @param  string  $value
     * @return void
     */
    public function setNameAttribute($value)
    {
        $this->attributes['name'] = strtolower($value);
    }
}
