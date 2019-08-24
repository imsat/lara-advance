<?php

namespace App\Models;

use App\Traits\QueryFilter;
use Illuminate\Database\Eloquent\Model;

class Lesson extends Model
{
    protected $guarded = [];

    public function scopeFilter($query, QueryFilter $filter)
    {
        return $filter->apply($query);
    }
}
