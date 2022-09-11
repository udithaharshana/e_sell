<?php

namespace App\Repositories;

use App\Models\Brnchmas;
use App\Models\Emplymas;
use App\Models\Emplyment;
use App\Models\Settings;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Common_rpo
{

    //genarate note number
    public static function note_number($nid, $table, $field, $char, $date, $branch_id = null)
    {
        $note_format = Settings::where('sti', $nid)->first();
        if ($note_format != '') {
            $string = ''; //create string part
            if ($note_format->nob == 1) { //add branch code
                if (isset($branch_id)) {
                    $data = Brnchmas::where('bid', $branch_id)->first();
                    $bco = $data->bco;
                } else {
                    $bco = Auth::user()->brnchmas->bco;
                }
                $string .=  $char. '/' . $bco . '/';
            } else {
                $string .= $char . '/';
            }
            if ($note_format->nos == 1) { //add year(20)
                $string .= substr($date, 2, 2) . '/'; //get year YY by effective date
            } else if ($note_format->nos == 3) { //add month(01)
                $string .= substr($date, 2, 2) . substr($date, 5, 2) . '/'; //get year YY And month mm by effective date
            } else if ($note_format->nos == 0) {
            }

            $length = $note_format->nol; //length of number part
            $x = sprintf("%05d", 1);
            $number = substr($x, -$length); //(0001)

            $strr = DB::select("SELECT IFNULL(CONCAT('" . $string . "',LPAD((MAX(substring(`" . $field . "`,-($length)))+1),$length,'0')),'" . $string . $number . "') AS nwn FROM `" . $table . "` WHERE `" . $field . "` LIKE '$string%' ");
            return $strr[0]->nwn;
        } else {
            return null;
        }
    }
}
