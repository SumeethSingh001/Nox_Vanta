<?php

namespace App\Http\Controllers\Admin;

use App\Models\LoginLog;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class AttendanceController extends Controller
{
    public function index(Request $request)
    {
        $users = User::all();

        // Fetch attendance grouped day-wise including location
        $attendance = LoginLog::select(
                'user_id',
                DB::raw('DATE(CONVERT_TZ(created_at, "+00:00", "+05:30")) as date'),
                DB::raw('MIN(CONVERT_TZ(created_at, "+00:00", "+05:30")) as first_login'),
                DB::raw('MAX(CONVERT_TZ(created_at, "+00:00", "+05:30")) as last_logout'),
                'latitude',
                'longitude'
            )
            ->groupBy('user_id', 'date', 'latitude', 'longitude')
            ->orderBy('date', 'DESC')
            ->get();

        return view('admin.attendance.index', compact('attendance', 'users'));
    }
}
