<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\LoginLog;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use App\Providers\RouteServiceProvider;

class LoginController extends Controller
{
    use AuthenticatesUsers;

    //protected $redirectTo = '/home'; // change if needed
    protected $redirectTo = RouteServiceProvider::DASHBOARD;

    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function showLoginForm()
    {
        return view('auth.login');
    }

    /**
     * Override login() to make camera mandatory and store location/photo.
     */
    public function login(Request $request)
    {
        $request->validate([
            'email'      => 'required|string',
            'password'   => 'required|string',
            'latitude'   => 'required',
            'longitude'  => 'required',
            'login_photo'=> 'required', // mandatory camera
        ], [
            'login_photo.required' => 'Camera photo is required to login.',
        ]);

        // Save photo to storage
        $photoPath = null;
        $b64 = $request->input('login_photo');
        if ($b64 && preg_match('/^data:image\/(\w+);base64,/', $b64, $type)) {
            $data = substr($b64, strpos($b64, ',') + 1);
            $data = base64_decode($data);
            if ($data !== false) {
                $ext = $type[1] === 'jpeg' ? 'jpg' : $type[1];
                $fileName = 'login_photos/' . Str::random(40) . '.' . $ext;
                Storage::disk('public')->put($fileName, $data);
                $photoPath = $fileName;
            }
        }

        // Attempt login
        if (Auth::attempt($request->only('email', 'password'), $request->boolean('remember'))) {
            $user = Auth::user();

            // Store GPS + photo
            LoginLog::create([
                'user_id'   => $user->id,
                'email'     => $user->email,
                'ip'        => $request->ip(),
                'latitude'  => $request->input('latitude'),
                'longitude' => $request->input('longitude'),
                'accuracy'  => $request->input('accuracy'),
                'photo_path'=> $photoPath,
                'user_agent'=> $request->header('User-Agent'),
            ]);

            return redirect()->intended($this->redirectTo);
        }

        return back()->withErrors([
            'email' => 'Invalid credentials or photo missing.',
        ])->withInput($request->only('email'));
    }
}
