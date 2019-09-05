<?php
/**
 * Created by PhpStorm.
 * User: SAT
 * Date: 8/24/2019
 * Time: 10:33 PM
 */

namespace App\Traits;


use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

abstract class QueryFilter
{
    protected $request;
    protected $builder;

    public function __construct(Request $request)
    {
        $this->request = $request;
    }

    public function apply(Builder $builder)
    {
        $this->builder = $builder;

        foreach ($this->filters() as $name => $value){
            // ['foo' => 'bar', 'length' => 'desc']
            if(method_exists($this, $name)){
                call_user_func_array([$this, $name], array_filter([$value]));

//                // 2nd way
//                if(trim($value)){
//                   $this->$name($value);
//                }else{
//                    $this->$name();
//                }
            }
        }

        return $this->builder;

    }

    public function filters()
    {
        return $this->request->all();
    }
}
