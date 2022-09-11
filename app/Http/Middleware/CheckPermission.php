<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\Userper;
use Illuminate\Support\Facades\Auth;

class CheckPermission
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    //check permisson middleware
    public function handle($request, Closure $next, $prid){

        if (Auth::guard('api')->check() && $request->user()->type >= 1) {
            return $next($request);
        } else {
            $message = ["message" => "Permission Denied"];
            return response($message, 401);
        }
       /*  if($usmo == 1){
            return $next($request);
        }else{
            $usrper = new Userper;
            if($usrper->is_permission_exist_uid($usid, $prid)){
                return $next($request);
            }else{
                return redirect()->back()->with(["fdbk"=>['type'=>'info']]);
            }
        } */
    }



}
