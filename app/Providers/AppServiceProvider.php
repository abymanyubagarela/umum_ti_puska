<?php

namespace App\Providers;

use App\Models\Accounts;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */

    public function boot()
    {
        //
        Gate::define('Super Admin',function(Accounts $account){
            return $account->account_role === "Super Admin";
        });
        Gate::define('Petugas BMN',function(Accounts $account){
            return $account->account_role === "Petugas BMN";
        });
    }
}
