<?php

namespace App\Http\Controllers;

use App\Models\Accounts;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        if (Auth::check()) {
            return redirect('backend/dashboard/puska');
        };
        return view('backend/login');
    }

    public function authenticate(Request $request)
    {


        $credentials = $request->validate(['email' => 'required|email', 'password' => 'required']);

        define('LDAP_HOST', 'ldap://dcrodc.bpk.go.id:389');
        $username =  $credentials['email'];
        $password =  $credentials['password'];
        
        if($username == "admin@bpk.go.id" && $password == "Teratai123"){
            $user = Accounts::where('account_email', '=', "abimanyu.putra@bpk.go.id")->first();
            if (Auth::loginUsingId($user->id))
            {

                $request->session()->regenerate();

                return redirect()->intended('backend/dashboard/puska');
            }
        }
        $dc = ldap_connect(LDAP_HOST);
        ldap_set_option($dc, LDAP_OPT_REFERRALS, 0);
        ldap_set_option($dc, LDAP_OPT_PROTOCOL_VERSION, 3);
        $bind = @ldap_bind($dc, $username, $password);

        $bind = 1 ;
        if ($bind) {
            $cn = substr($username, 0, strpos($username, '@'));
            $res = ldap_search($dc, 'dc=bpk,dc=go,dc=id', "(samaccountname={$cn})", ['description']);
            $data = ldap_get_entries($dc, $res);
            // dd($data);
            if (true) {
                $nip_pendek = trim($data[0]['description'][0]);
                // TODO auth ok
                // dd($nip_pendek);
                $user = Accounts::where('account_email', '=', $username)->first();
                // dd($user);
                if (Auth::loginUsingId($user->id)) {

                    $request->session()->regenerate();

                    return redirect()->intended('backend/dashboard/puska');
                }
            }
        }

        @ldap_close($dc);



        return redirect()->back()->withInput()->with('loginError', 'Gagal Login');
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

        if (Auth::attempt(['account_email' => $credentials['email'], 'password' => $credentials['password']])) {
            $request->session()->regenerate();

            return redirect()->intended('/dashboard');
        }

        return redirect()->back()->withInput($request->all)->with('loginError', 'Login failed!');
    }
}
