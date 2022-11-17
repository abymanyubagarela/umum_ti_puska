<?php

namespace App\Policies;

use App\Models\Accounts;
use App\Models\VehicleLoan;
use Illuminate\Auth\Access\HandlesAuthorization;

class VehicleLoanPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\Accounts  $accounts
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function viewAny(Accounts $accounts)
    {
        //
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\Accounts  $accounts
     * @param  \App\Models\VehicleLoan  $vehicleLoan
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(Accounts $accounts, VehicleLoan $vehicleLoan)
    {
        //
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\Accounts  $accounts
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(Accounts $accounts)
    {
        //
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\Accounts  $accounts
     * @param  \App\Models\VehicleLoan  $vehicleLoan
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(Accounts $accounts, VehicleLoan $vehicleLoan)
    {
        //
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\Accounts  $accounts
     * @param  \App\Models\VehicleLoan  $vehicleLoan
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(Accounts $accounts, VehicleLoan $vehicleLoan)
    {
        //
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\Accounts  $accounts
     * @param  \App\Models\VehicleLoan  $vehicleLoan
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(Accounts $accounts, VehicleLoan $vehicleLoan)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\Accounts  $accounts
     * @param  \App\Models\VehicleLoan  $vehicleLoan
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(Accounts $accounts, VehicleLoan $vehicleLoan)
    {
        //
    }
}
