<?php

namespace App\Http\Controllers\Auth;

Use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use App\Models\Oauth_access_tokens;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ApiAuthController extends Controller
{
    public function login (Request $request) {
        try{
            /* inputs Validate */
            $validator = Validator::make($request->all(), [
                'user_id' => 'required|string|max:15',
                'password' => 'required|string',
            ]);
            //dd($validator->fails());
            if ($validator->fails())
            {
                return response(['errors'=>$validator->errors()->all()], 422);
            }

            $user = User::where('user_id', $request->user_id)->first();
            if ($user) {
                if (Hash::check($request->password, $user->password)) {
                    //auth()->user()->createToken('authToken')->accessToken;
                    $token = $user->createToken('Laravel Password Grant Client')->accessToken;
                    $response = ['status'=>'1', 'token'=>$token, 'name'=>$user->name ];

                    return response($response, 200);
                } else {
                    $response = ['status'=>'0',"message" => "Password mismatch"];
                    return response($response, 422);
                }
            } else {
                throw new Exception();
            }
        }catch(Exception $e){
            return response()->json($e->getMessage(),$e->getLine());
            $response = ['status'=>'0', "message" =>'User does not exist'];
            return response($response, 422);
        }
    }

    public function islogin(Request $request){
        if(Auth::check()){
            $response = ['status'=>'1'];
            return response($response, 200);
        }else{
            $response = ['status'=>'0',Auth::check()];
            return response($response, 422);
        }
    }
    public function logout () {
        try{
           /*  $token = $request->user()->token();
            $token->revoke(); */
            if (Auth::check()) {
                Auth::user()->token()->revoke();
                Oauth_access_tokens::where('revoked','1')->whereDate('expires_at','<',$this->dtdatetime)->delete();
             }
            $response = ['data' => 'You have been successfully logged out!', 'sts'=>0];
            return response($response, 200);
        }catch(Exception $e){

            $response = ['data' => 'Something went wrong!'.$e->getMessage(), 'sts'=>1];
            return response($response, 422);
        }
    }
}
