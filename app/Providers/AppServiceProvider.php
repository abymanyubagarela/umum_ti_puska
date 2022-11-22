<?php

namespace App\Providers;

use App\Models\Accounts;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\File;

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
        Gate::define('Kasubbag Umum',function(Accounts $account){
            return $account->account_role === "Pejabat Struktural" && $account->account_unit == "Subbagian Umum dan Teknologi Informasi";
        });

        DB::listen(function($query) {
            File::append(
                storage_path('/logs/query.log'),
                '[' . date('Y-m-d H:i:s') . ']; ' .  $query->sql . ' [' . implode(', ', $query->bindings) . ']; ' . PHP_EOL
            );
        });
    }
}
