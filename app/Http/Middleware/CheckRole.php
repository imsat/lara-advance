<?php

namespace App\Http\Middleware;

use Closure;

class CheckRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $roles = null)
    {

//        dd($roles);
        if ($request->user() === null) {
            abort(401, 'This action is unauthorized.');
        }

        if($request->user()->authorizeRoles($roles)){
            return $next($request);
        }
        abort(401, 'This action is unauthorized.');
        return $next($request);
    }
}
