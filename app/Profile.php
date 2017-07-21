<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Storage;
use File;

class Profile extends Model
{

        protected $fillable =['name','address','lastname','location','tagline','birthday','description','abn','want_to','path','background_picture','user_id','fb_img','img'];

        
        public function transportations(){
                
                return $this->hasMany('App\Transportation');
        }

        public function specialities(){
                return $this->hasMany('App\ProfileSpecielity');
        }
        public function educations(){
                return $this->hasMany('App\Education');
        }

        public function languages(){

                return $this->hasMany('App\Language');
        }
        public function portfolios(){
                return $this->hasMany('App\Portfolio');
        }
       
         public function works(){
                return $this->hasMany('App\Work');
        }

        public function tasks(){

                return $this->hasMany('App\Task');
        
        }

        public function user(){

                return $this->belongsTo('App\User');
        }

        public function avatar(){
                return $this->hasOne('App\Avatar');
        }

   
        public function setPathAttribute($path) {

		if (!empty($path)) {
			$name = $path->getClientOriginalName();
			$this->attributes['path'] = $name;
			Storage::disk('local')->put($name, File::get($path));
		}

	}
}
