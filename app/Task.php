<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    protected $fillable =['description','title','user_id','location','task_type_id', 'speciality_id','task_latitude','task_longitude','task_statuse_id','due_date','people_needed','budget_type_id','amount_offered','user_accepted_id','message_accepted'];

    public function tipo(){

          return $this->belongsTo('App\TaskType');
    }

    public function estatus(){

            return $this->belongsTo('App\TaskStatus');
    }

    public function questions(){

        return $this->hasMany('App\Question');
    }

    public function user(){

        return $this->belongsTo('App\User');
    }
    public function speciality(){
        
        return $this->belongsTo('App\Speciality');
    }
    public function offers(){
        return $this->hasMany('App\Offer');
    }
    public function comments(){
        return $this->hasMany('App\Comment');
    }

    public function acceptedUser(){

        return $this->belongsTo('App\User','user_accepted_id');
    }
    public function review(){
        return $this->hasOne('App\Review');
    }
    public function offerAccepted(){
        return $this->hasOne('App\Offer','offer_accepted-id');
    }
}
