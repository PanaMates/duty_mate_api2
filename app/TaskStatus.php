<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TaskStatus extends Model
{

      protected $fillable =['status_name'];

      public function tasks(){

            return $this->hasMany('App\Task');
      }
}
