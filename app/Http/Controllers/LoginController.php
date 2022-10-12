<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        if(Auth::check()){
            return redirect('backend/dashboard');
        };
        return view('backend/login');


    }

    public function authenticate(Request $request)
    {
        $credentials = $request->validate(['email' => 'required|email', 'password' => 'required']);

        if (Auth::attempt(['account_email' => $credentials['email'], 'password' => $credentials['password']]))
        {
            $request->session()->regenerate();

            return redirect()->intended('backend/dashboard');
        }

        return redirect()->back()->withInput()->with('loginError', 'Login failed!');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/login');

    }

    public function userIndex()
    {
        return view('frontend/login');
    }

    public function userAuthenticate(Request $request)
    {
        $credentials = $request->validate(['email' => 'required|email', 'password' => 'required']);

        if (Auth::attempt(['account_email' => $credentials['email'], 'password' => $credentials['password']]))
        {
            $request->session()->regenerate();

            return redirect()->intended('/dashboard');
        }

        return redirect()->back()->withInput($request->all)->with('loginError', 'Login failed!');

    }

}

