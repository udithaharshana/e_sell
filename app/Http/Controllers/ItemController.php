<?php

namespace App\Http\Controllers;

use App\Models\Seller;
use App\Models\Seller_item;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Exception;

class ItemController extends Controller
{
    private $seller_item;

    public function __construct() {
        $this->seller_item = new Seller_item();
    }

    /* get Availale Items list AS default
        Also available for search item name
    */
    public function GetAvailableItems(Request $request)
    {
        try {
            $data = $this->seller_item->GetAvailableItems($request->search);
            return response()->json(['data' => $data ]);

        }catch(Exception $e){
            return response(App::environment('local') ? $e->getMessage() : '' , 422);
        }
    }

    /* get seller all itmes list */
    public function GetSellerItems(Request $request)
    {
        try {
            $data = $this->seller_item->GetSellerItems($request->seller_id);
            return response()->json(['data' => $data ]);

        }catch(Exception $e){
            return response(App::environment('local') ? $e->getMessage() : '' , 422);
        }
    }

    /* get seller details by item id */
    public function GetSellerByItem(Request $request)
    {
        try {
            //find seller item
            $seller_item = $this->seller_item->find($request->seller_item_id);
            //get seller details
            $seller = Seller::find($seller_item->seller_id);
            return response()->json(['data' => $seller ]);

        }catch(Exception $e){
            return response(App::environment('local') ? $e->getMessage() : '' , 422);
        }
    }

}
