<?php
/**
 * Created by PhpStorm.
 * User: SAT
 * Date: 8/24/2019
 * Time: 10:27 PM
 */
namespace App\Traits;

class LessonFilters extends QueryFilter
{
    public function popular($order = 'desc')
    {
        return $this->builder->orderBy('views', $order);
    }

    public function difficulty($lebel)
    {
        return $this->builder->where('difficulty', $lebel);
    }

    public function length($order = 'asc')
    {
        return $this->builder->orderBy('length', $order);
    }

    public function take($count)
    {
        return $this->builder->limit($count);
    }
}
