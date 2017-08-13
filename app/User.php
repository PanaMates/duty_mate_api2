<?php

namespace App;

use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;


class User extends Authenticatable
{
    use  HasApiTokens, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
       'email', 'password','remember_token','fb_id','active'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function tipo(){
          return $this->belongsTo('App\UserType');
    }

    public function profile(){

        return $this->hasOne('App\Profile');
    }

    public function userType(){

        return $this->belongsTo('App\UserType');
    }
    public function paymentInfo(){
         return $this->hasOne('App\PaymentInfo');
    }

    public function reviews(){
        return $this->hasMany();
    }
}
