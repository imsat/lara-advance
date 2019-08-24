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
//            after refactoring
            $document->adjust();


//            befor refactoring
//            $document->adjustments()->attach(Auth::id(), [
////                'before' => json_encode(array_intersect_key($document->fresh()->toArray(), $document->getDirty())),
////                'after'  => json_encode($document->getDirty())
////            ]);
        });
    }

    public function adjustments()
    {
        // follow table like user_document
        return $this->belongsToMany(User::class, 'adjustments')
            ->withTimestamps()
            ->withPivot(['before', 'after'])
//            ->latest(); //order by created_at desc use user created at
            ->latest('pivot_updated_at'); //order by created_at desc use user pivot created at
    }

    public function adjust($userId = null, $diff = null) //$document->adjust(3, ['before', 'after');
    {
        $userId = $userId ?: Auth::id();

        $diff = $diff ?: $this->getDiff();

        return $this->adjustments()->attach($userId, $diff);
    }

    protected function getDiff()
    {
        $changed = $this->getDirty();

        $before = json_encode(array_intersect_key($this->fresh()->toArray(), $changed));
        $after  = json_encode($changed);

        return compact('before', 'after');
    }
}
