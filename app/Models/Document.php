<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Auth;

class Document extends Model
{
    protected $guarded = [];

    public static function boot()
    {
        parent::boot();

        static::updating(function ($document) {
            $document->adjustments()->attach(Auth::id());
        });
    }

    public function adjustments()
    {
        // follow table like user_document
        return $this->belongsToMany(User::class, 'adjustments')
            ->withTimestamps()
//            ->latest(); //order by created_at desc use user created at
            ->latest('pivot_updated_at'); //order by created_at desc use user pivot created at
    }
}
