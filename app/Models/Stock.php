<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Stock extends Model
{
    protected $table = 'stock';
    public $timestamps = false;
    protected $primaryKey = 'stk_id';

    public function StockLeg(){
        return $this->hasMany('App\Models\Stock_leg','stk_id','stk_id');
    }
    public function AvailableStock(){
        return $this->hasOne('App\Models\Stock_leg','stk_id','stk_id')->selectRaw('SUM(debit_qty-credit_qty) avb, stk_id')->groupBy('stk_id');
    }
   
}
