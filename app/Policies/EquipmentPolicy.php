<?php

namespace App\Policies;

use App\Models\Accounts;
use App\Models\Equipment;
use Illuminate\Auth\Access\HandlesAuthorization;

class EquipmentPolicy
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
     * @param  \App\Models\Equipment  $equipment
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(Accounts $accounts, Equipment $equipment)
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
     * @param  \App\Models\Equipment  $equipment
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(Accounts $accounts, Equipment $equipment)
    {
        //
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\Accounts  $accounts
     * @param  \App\Models\Equipment  $equipment
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(Accounts $accounts, Equipment $equipment)
    {
        //
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\Accounts  $accounts
     * @param  \App\Models\Equipment  $equipment
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(Accounts $accounts, Equipment $equipment)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\Accounts  $accounts
     * @param  \App\Models\Equipment  $equipment
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(Accounts $accounts, Equipment $equipment)
    {
        //
    }
}
