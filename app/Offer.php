<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Offer extends Model
{
    protected $fillable = ['task_id','user_id','price','message','offer_status_id'];

    public function task(){

                return $this->belongsTo('App\Task');
        }

   public function user(){

                return $this->belongsTo('App\User');
        }
}
