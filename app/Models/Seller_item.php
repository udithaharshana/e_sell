<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Seller_item extends Model
{
    protected $table = 'seller_item';
    public $timestamps = false;
    protected $primaryKey = 'seller_item_id';

    public function seller(){
        return $this->hasOne('App\Models\Seller','seller_id','seller_id');
    }

    public function item(){
        return $this->hasOne('App\Models\Item','item_id','item_id');
    }

    public function SellerItemImage()
    {
        return $this->hasMany('App\Models\Seller_item_image','seller_item_id','seller_item_id');
    }
    
    public function StockAvailableItem()
    {
        return $this->hasOne('App\Models\Stock','seller_item_id','seller_item_id')->with(['availablestock']);
    }

    public function GetAvailableItems($search=null)
    {
        $data = self::with(['item','stockavailableitem','sellerItemImage'])->get()->where('stockavailableitem.availablestock.avb','>',0);
        if($search){
            $data = $data->where('item.name',$search);
        }
        return $data;
    }

    public function GetSellerItems($seller_id=null)
    {
        $data = self::with(['item','sellerItemImage'])->where('seller_id',$seller_id)->get();
        return $data;
    }

    public function GetSellerByItem($seller_item_id=null)
    {
        $data = self::with(['item'])->find('i',$seller_item_id)->get();
        return $data;
    }

}
