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

    protected function cacheResponse($data)
    {
        $url = request()->url();
        return Cache::remember($url, 30/60, function () use($data) {
            return $data;
        });
    }
}
