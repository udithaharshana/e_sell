<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Oauth_access_tokens extends Model
{
    protected $table = 'oauth_access_tokens';
    public $timestamps = false;
    protected $primaryKey = 'id';
}
