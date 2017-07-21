<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Portfolio extends Model
{
    
    protected $fillable= ['portfolio_title','path','profile_id'];

    public function profile(){

        return $this->belongsTo('App\Profile');
    }
}
