<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\AksesModel;
use App\Models\Admin\LoginHistoryModel;
use App\Models\Admin\UserModel;
use App\Models\Admin\WebModel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\URL;

class LoginController extends Controller
{
    public function index()
    {
        $data["title"] = "Login";
        $data["web"] = WebModel::first();
        return view('Admin.Login.index', $data);
    }

    public function proseslogin(Request $request)
    {
        $where = [
            'tbl_user.user_nama'     => $request->user,
            'tbl_user.user_password' => md5($request->pwd)
        ];
        $getCount = UserModel::where($where)->count();

        if ($getCount > 0) {
            $query = UserModel::leftJoin('tbl_role', 'tbl_role.role_id', '=', 'tbl_user.role_id')
                            ->select('tbl_user.*','tbl_role.role_title')
                            ->where($where)
                            ->first();

            $role = AksesModel::where('role_id', '=', $query->role_id)->get();

            $request->session()->put('user', $query);
            $request->session()->put('user_role', $role);

            // ✅ Simpan histori login
            $history = LoginHistoryModel::create([
                'user_id'    => $query->user_id,
                'ip_address' => $request->ip(),
                'user_agent' => $request->header('User-Agent'),
                'login_at'   => Carbon::now(),
            ]);

            // simpan history_id ke session untuk update logout nanti
            $request->session()->put('login_history_id', $history->history_id);

            Session::flash('status', 'success');
            Session::flash('msg', 'Selamat Datang ' . $query->user_nmlengkap);

            return redirect(URL::previous());
        } else {
            Session::flash('status', 'error');
            Session::flash('msg', 'User password tidak cocok!');
            Session::flash('userInput', $request->user);
            return redirect(URL::previous());
        }
    }

    public function logout(Request $request)
    {
        // update logout_at di histori
        if ($request->session()->has('login_history_id')) {
            LoginHistoryModel::where('history_id', $request->session()->get('login_history_id'))
                ->update([
                    'logout_at' => Carbon::now()
                ]);
        }

        Session::forget('user');
        Session::forget('user_role');
        Session::forget('login_history_id');

        return redirect(URL::previous());
    }
}
