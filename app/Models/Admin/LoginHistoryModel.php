<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class LoginHistoryModel extends Model
{
    protected $table = "tbl_login_history";
    protected $primaryKey = "history_id";

    protected $fillable = [
        'user_id',
        'ip_address',
        'user_agent',
        'login_at',
        'logout_at'
    ];
}
