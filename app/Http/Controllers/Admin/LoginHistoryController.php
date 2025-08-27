<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\LoginHistoryModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Yajra\DataTables\Facades\DataTables;

class LoginHistoryController extends Controller
{
    public function index()
    {
        $data["title"] = "Login History";
        return view('Admin.LoginHistory.index', $data);
    }

    public function getData(Request $request)
    {
        $query = LoginHistoryModel::leftJoin('tbl_user', 'tbl_user.user_id', '=', 'tbl_login_history.user_id')
            ->select('tbl_login_history.*', 'tbl_user.user_nama', 'tbl_user.user_nmlengkap')
            ->where('tbl_login_history.user_id', Session::get('user')->user_id) // filter user login
            ->orderBy('history_id', 'DESC');

        return DataTables::of($query)
            ->addIndexColumn()
            ->editColumn('login_at', function ($row) {
                return $row->login_at ? date('Y-m-d H:i:s', strtotime($row->login_at)) : '-';
            })
            ->editColumn('logout_at', function ($row) {
                return $row->logout_at ? date('Y-m-d H:i:s', strtotime($row->logout_at)) : '-';
            })
            ->make(true);
    }
}
