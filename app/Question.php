<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    
    protected $fillable= ['title','content','task_id'];

    public function task(){

        return $this->belongsTo('App\Task');
    }
}
