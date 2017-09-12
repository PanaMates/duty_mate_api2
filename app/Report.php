<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    protected $fillable = ['user_id','comment','user_reporter_id','type_report_id'];

    public function user(){
        return $this->belongsTo('App\User','user_id');
    }
    public function userReporter(){
        return $this->belongsTo('App\User','user_reporter_id');
    }

}
