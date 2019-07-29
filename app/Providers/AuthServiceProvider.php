<?php

namespace App\Providers;

use App\Models\Permission;
use App\Models\Post;
use App\Policies\PostPolicy;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
        //   Post::class => PostPolicy::class,
        'App\Models\Post' => 'App\Policies\PostPolicy',

    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

//        Gate::resource('post', 'PostPolicy');

//        Gate::define('show-post', function ($user, $post){
////            return $user->id == $post->user_id; //both are same
//            return $user->owns($post);
//        });
//
//        Gate::define('update-post', function ($user, $post){
//            return $user->owns($post);
//        });


        ///Problem generate when to migrate
        foreach ($this->getPermissions() as $permission){
            Gate::define(strtolower($permission->name), function ($user) use ($permission) {
                return $user->hasRole($permission->roles);
            });
        }

    }

    protected function getPermissions()
    {
        return Permission::with('roles')->get();
    }

}
