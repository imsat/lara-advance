<?php
/**
 * Created by PhpStorm.
 * User: SAT
 * Date: 8/5/2019
 * Time: 10:26 AM
 */
namespace App\Traits;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Collection;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Cache;
use Symfony\Component\HttpKernel\Exception\HttpException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

trait Helper
{
    private function successResponse($data, $code){
        return response()->json($data, $code);
    }
    protected function errorResponse($message, $code)
    {
        return response()->json(['errors' => $message, 'code' => $code], $code);
    }
    protected function showAll(Collection $collection)
    {
        $resource = $collection->first()->resource;
        $collection =  $this->filterData($collection, $resource);
        $collection =  $this->sortData($collection, $resource);
        $collection =  $this->paginate($collection);
        $collection =  $resource::collection($collection);
        $collection =  $this->cacheResponse($collection);
        return $collection;
    }
    protected function showOne(Model $model, $code = 200)
    {
        $resource = $model->first()->resource;
        return (new $resource($model))->response()
            ->setStatusCode($code);
    }
    protected function showMessage($message, $code = 200)
    {
        return $this->successResponse(['data' => $message], $code);
    }

    protected function filterData(Collection $collection, $resource)
    {
        foreach (request()->query() as $query => $value){
            $attribute = $resource::originalAttribute($query);
            if(isset($attribute, $value)){
                $collection = $collection->where($attribute, $value);
//                $collection = $collection->where($attribute, 'like', '%' . $value . '%');
            }
        }
        return $collection;
    }
    protected function sortData(Collection $collection, $resource)
    {
        if(request()->has('sort_by')){
            $attribute = $resource::originalAttribute(request('sort_by'));
//            $attribute = request('sort_by');
            $collection = $collection->sortBy->{$attribute};
        }
        return $collection;
    }

    protected function paginate(Collection $collection)
    {
        $this->validate(request(), [
            'per_page' => 'integer|min:2|max:50'
        ]);
        $page = LengthAwarePaginator::resolveCurrentPage();
        $perPage = 15;
        if(request()->has('per_page')){
            $perPage = (int) request()->per_page;
        }
        $results = $collection->slice( ($page - 1) * $perPage, $perPage)->values();
        $paginated = new LengthAwarePaginator($results, $collection->count(), $perPage, $page, [
            'path' => LengthAwarePaginator::resolveCurrentPath(),
        ]);
        $paginated->appends(request()->all());
        return $paginated;
    }

    protected function cacheResponse($data)
    {
        $url = request()->url();
        return Cache::remember($url, 30/60, function () use($data) {
            return $data;
        });
    }
}
