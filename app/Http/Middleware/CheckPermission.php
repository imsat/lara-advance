<?php

namespace App\Http\Middleware;

use Closure;

class CheckPermission
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $permissions = null)
    {
//        $permissions = explode('|', $permissions);

        if ($request->user() === null) {
            abort(401, 'This action is unauthorized.');
        }

        if($request->user()->hasAnyPermission($permissions)){
            return $next($request);
        }
        abort(401, 'This action is unauthorized.');
        return $next($request);
    }
}
