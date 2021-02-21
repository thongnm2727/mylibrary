<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class UserController extends Controller
{
    //
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            "email" =>  "required|email",
            "password" =>  "required",
        ]);

        if ($validator->fails()) {
            return response()->json(["validation_errors" => $validator->errors()]);
        }

        $user           =       User::where("email", $request->email)->first();

        if (is_null($user)) {
            return response()->json(["status" => "failed", "message" => "Failed! Email not found"]);
        }

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $user       =       Auth::user();
            $token      =       $user->createToken('token')->plainTextToken;

            return response()->json(["status" => "success", "login" => true, "token" => $token, "data" => $user]);
        } else {
            return response()->json(["status" => "failed", "success" => false, "message" => "Whoops! invalid password"]);
        }
    }
}
