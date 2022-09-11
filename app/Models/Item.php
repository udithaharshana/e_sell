<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Item extends Model
{
    protected $table = 'item';
    public $timestamps = false;
    protected $primaryKey = 'iid';

    public function createuser(){
        return $this->hasOne('App\Models\User','id','create_user_id');
    }
    public function updateuser(){
        return $this->hasOne('App\Models\User','id','update_user_id');
    }
    public function category(){
        return $this->hasOne('App\Models\Item_catgry','cid','cid');
    }
    public function manufacture(){
        return $this->hasOne('App\Models\Item_mnfct','mid','mid');
    }

}
