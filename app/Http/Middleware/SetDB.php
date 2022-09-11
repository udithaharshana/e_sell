<?php

namespace App\Http\Middleware;
use Illuminate\Routing\Route;
use Closure;
use Illuminate\Support\Facades\Crypt;

class SetDb
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */

    public function handle($request, Closure $next)
    {
        //Crypt::decryptString($request->header('dbuser'))
        config(['database.connections.mysql.database' => 'e_sell' ]);
        config(['database.connections.mysql.username' => 'root' ]);
        config(['database.connections.mysql.password' => '' ]);

        return $next($request);
    }
}
