<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PaymentInfo extends Model
{

    protected $fillable = ['user_id','account_name','account_number','bsb','street_address','city','state_id','mobile_number','postcode'];
    
}
