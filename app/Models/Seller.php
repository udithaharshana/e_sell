<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Seller extends Model
{
    protected $table = 'seller';
    public $timestamps = false;
    protected $primaryKey = 'seller_id';


}
