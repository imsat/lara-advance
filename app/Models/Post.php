<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $guarded = [];
//    protected $dates = ['published_at'];

    public function category()
    {
        return $this->belongsTo('App\Models\Category');
    }
    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
    //setNameAttribute
    public function setPublishedAtAttribute($date)
    {
        $this->attributes['published_at'] = Carbon::parse($date);
    }

//    getNameAttribute
    public function getPublishedAtAttribute($value)
    {
       return date('d-m-Y', strtotime($value));
    }


    //query scope
    public function scopePublished($query)
    {
        $query->where('published_at', '<=', Carbon::now());
    }
    public function scopeUnpublished($query)
    {
        $query->where('published_at', '>', Carbon::now());
    }
}
