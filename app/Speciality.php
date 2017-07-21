<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Speciality extends Model
{
    protected $fillable =['speciality_name'];

    public function profiles(){
        return $this->belongsToMany('App\Profile');
    }
    
}