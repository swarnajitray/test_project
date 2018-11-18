<?php

namespace App\Providers;
use Laravel\Passport\Passport;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Carbon\Carbon;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        // Thsi is for api life change 
        Passport::routes(function ($router) {
            $router->forAccessTokens();
            $router->forPersonalAccessTokens();
            $router->forTransientTokens();
        });

//        Passport::tokensExpireIn(Carbon::now()->addMinutes(10));
//
//        Passport::refreshTokensExpireIn(Carbon::now()->addDays(10));
//         Passport::routes();

//         // print_r(now());
//         // exit();
//        // Passport::tokensExpireIn(Carbon::now()->addDays(1));
// //       Passport::tokensExpireIn(Carbon::now()->addDays(1));
// //       Passport::refreshTokensExpireIn(Carbon::now()->addDays(60));
         Passport::tokensExpireIn(now()->addDays(1));
         Passport::refreshTokensExpireIn(now()->addDays(1));

        //
    }
}
