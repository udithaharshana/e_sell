<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Stock_leg extends Model
{
    protected $table = 'stock_leg';
    public $timestamps = false;
    protected $primaryKey = 'row_id';

    public function AvailableItem(){
        return $this->selectRaw('SUM(debit_qty-credit_qty) avb, stk_id')->groupBy('stock_id')->having('avb >',0);
    }
}
