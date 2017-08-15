<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Task;
use App\Http\Requests\TasksRequest;
use App\Speciality;
use App\User;
use App\Profile;
use App\Estate;
use App\PaymentInfo;
use App\Offer;
use App\Comment;
use App\Avatar;
use App\Education;
use App\Language;
use App\Work;
use App\Review;
use App\ProfileSpecielity;
use App\Transportation;
use App\Mail\Registration;
use Auth;
use Mail;




class ApiController extends Controller
{

  //this method returns tasks with type and status parameter

    public function get_tasks($type,$status){

            $tasks = Task::where(['tasks.task_type_id'=>$type,'tasks.task_statuse_id'=>$status])->get();

            return response()->json($tasks);

    }

      // this method create a task with the parameters given
      //the TaskRequest is validated , fields cant be null

      public function save_task(TasksRequest $request){

             $task = new Task();
             $task->fill($request->all());
             $task->save();

              return response()->json(['message'=>'Task Saved']);

      }

      public function get_test(){
              $specialities = Speciality::all();
              return response()->json($specialities);
      }

      //create new user

      public function new_user(Request $request){
                 $user = new User();
                 $user->create([
                                'email'=>$request['email'],
                                'password'=> bcrypt($request['password'])
                ]);
                $profile = new Profile();
                 $userId = $user->all()->last();
                $profile->create([
                        'name' =>$request['name'],
                        'lastname' =>$request['lastname'],
                        'user_id' => $userId->id,
                        'path' => $request['path'],
                        'img'=>''
                ]);
                
                
               $this->emailSender($request['email'],$request);
                
                return response()->json(['msg'=>'User Saved','status'=>'OK']);
      }
      
      // user authentication
      public function authenticate(Request $request){
      	if(Auth::attempt(['email'=>$request['email'],'password'=>$request['password']])){

			$user = User::where('users.email', $request['email'] )->with(['profile'])->first();
			return response()->json(['msg'=>'Successful','status'=>"OK","user"=>$user]);




        }else{

            return response()->json(['msg'=>'Usuario o Contrasena Invalidos','status'=>"ERR"]);
        }
    }
    public function new_duty(Request $request){

            $task = new Task();
                 $task->create([
                               'description'=>$request['description'],
                               'title'=>$request['title'],
                               'user_id'=>$request['user_id'],
                               'task_type_id'=>$request['task_type_id'],
                                'task_latitude'=>$request['latitude'],
                                'task_longitude'=>$request['longitude'],
                                'task_statuse_id'=>$request['task_statuse_id'],
                                'due_date'=>$request['due_date'],
                                'people_needed'=>$request['dutymates'],
                                'budget_type_id'=>$request['budget_type_id'],
                                'amount_offered'=>$request['amount_offered'],
                                'speciality_id'=>$request['speciality_id'],
                                'location'=>$request['location'],
                                'task_latitude'=>$request['task_latitude'],
                                'task_longitude'=>$request['task_longitude']
                               ]);

                
                return response()->json(['msg'=>'User Saved','status'=>'OK'],200,[],JSON_NUMERIC_CHECK);
                
    }

    public function getSpecialities(){
            
        $specialities = Speciality::all();
        return response()->json(['msg'=>'ok','specialities'=>$specialities]);
    }

    public function getDuties($limit){
                $tasks = Task::with(['user','user.profile','speciality'])->limit($limit)->get();
                return response()->json(['msg'=>'OK','tasks'=>$tasks]);
    }



    public function get_duty($id){

            $duty = Task::where(['id'=>$id])->with(['user','user.profile','user.paymentInfo','offers.user.profile','comments.user.profile'])->first();
            return response()->json($duty,200,[],JSON_NUMERIC_CHECK);
            
    }

 public function new_comment(Request $request){


        $comment = new Comment;
        $comment->create($request->all());
        return response()->json(['msg'=>'Comment Saved','status'=>'OK'],200,[],JSON_NUMERIC_CHECK);

 }
// get states

public function get_states(){
        $states =  Estate::all();
        return response()->json(['status'=>'OK','states'=>$states]);

}

//check payment info

public function check_payment($user_id){

        $check = PaymentInfo::where(['user_id'=>$user_id])->first();

        return response()->json(['status'=>'OK','check'=>$check]);

}

// save payment info

public function save_payment_info(Request $request){ 
        
        $payment = new PaymentInfo;
        $payment->create($request->all());
        return response()->json(['msg'=>'Payment Saved','status'=>'OK'],200,[],JSON_NUMERIC_CHECK);  

}

// save offer

public function save_offer(Request $request){
        $offer = new Offer;
        $offer->fill($request->all());
        $offer->save();

        return response()->json(['msg'=>'Offer Saved','status'=>'OK','offer'=>$offer->id],200,[],JSON_NUMERIC_CHECK); 
}

// get offer

public function get_offer($id){

        $offer = Offer::where(['id'=>$id])->with(['user','user.profile','task'])->first();
        return response()->json($offer,200,[],JSON_NUMERIC_CHECK);
      

}

public function get_my_duties($id){
        
         $duties_posted   = Task::where(['user_id'=>$id,'task_statuse_id'=>1])->with(['offers','comments','estatus'])->get();
         $duties_accepted = Task::where(['user_id'=>$id ,'task_statuse_id'=>2])->with(['offers','comments','estatus','acceptedUser','acceptedUser.profile'])->get();
         $duties_finished = Task::where(['user_id'=>$id ,'task_statuse_id'=>3])->with(['offers','comments','estatus','review'])->get();

        return response()->json(['msg'=>'OK','duties_posted'=>$duties_posted ,'duties_accepted'=>$duties_accepted ,'duties_finished'=>$duties_finished]);
}
public function get_my_own_duties($id){
        
         $duties_posted   = Task::where(['user_accepted_id'=>$id,'task_statuse_id'=>2])->with(['user', 'user.profile','offers','comments','estatus'])->get();
         $duties_accepted = Task::where(['user_accepted_id'=>$id ,'task_statuse_id'=>3])->with(['user','user.profile','offers','comments','estatus','review'])->get();
         $duties_finished = Task::where(['user_accepted_id'=>$id ,'task_statuse_id'=>4])->with(['user','user.profile','offers','comments','estatus','review'])->get();

        return response()->json(['msg'=>'OK','duties_posted'=>$duties_posted ,'duties_accepted'=>$duties_accepted ,'duties_finished'=>$duties_finished]);
}

public function profile_info($id){
        $profile_info = Profile::where(['user_id'=>$id])->with('educations','languages','portfolios','transportations','works','specialities')->first();
        return response()->json(['msg'=>'OK','profileInfo'=>$profile_info]);
}

public function save_profile(Request $request,$id){
        
        $profile = Profile::find($id);
        $profile->fill($request->all());
        $profile->save();
        return response()->json(['msg'=> $profile]);

}

public function upload ($id){

        If(Input::hasFile('file')){
            

            $file = Input::file('file');

            $destinationPath = public_path(). '/uploads/';
            $filename = $file->getClientOriginalName();

            $file->move($destinationPath, $filename);

            echo  $filename;
            //echo '<img src="uploads/'. $filename . '"/>';

            $avatar = Avatar::create([
                'name' => $filename,
                'profile_id'=>$id
            ]);
        }
    }

public function checkFbUser(Request $request){


         $user = new User();
         $resultUser = $user->where(['fb_id'=>$request['id']])->with('profile')->first();

         if(count($resultUser) != 0 ){
                 return response()->json($resultUser);
         }else{

                  $user->create([
                                'email'=>$request['email'],
                                'fb_id'=>$request['id'],
                                'password'=> bcrypt('12345'),
                ]);
                 $profile = new Profile();
                $userId = $user->where(['fb_id'=>$request['id']])->with('profile')->first();
               
                $profile->create([
                        'name' =>$request['name'],
                        'lastname' =>$request['last_name'],
                        'user_id' => $userId->id,
                        'img'=>$request['path']
                ]);

                

                return response()->json($userId);

         }
         

}

public function saveSkill(Request $request,$id){

               
               switch ($request['type']) {
                       case 'Educations':

                       $education = new Education();

                       $education->insert($request['value']);
                       
                       $educationsAll = $education::where(['profile_id'=>$id])->get() ;

             
                        return response()->json(['update'=>$educationsAll,'id'=>$id]);
                               break;

                        case 'Languages':

                                $language = new Language();

                                $language->insert($request['value']);
                                
                                $languagesAll = $language::where(['profile_id'=>$id])->get() ;

                        
                                        return response()->json(['update'=>$languagesAll,'id'=>$id]);


                                break;

                        case 'Works':

                                $work = new Work();

                                $work->insert($request['value']);
                                
                                $worksAll = $work::where(['profile_id'=>$id])->get() ;

                        
                                        return response()->json(['update'=>$worksAll,'id'=>$id]);


                                break;

                        case 'Specialities':

                                $speciality = new ProfileSpecielity();

                                $speciality->insert($request['value']);
                                
                                $specialityAll = $speciality::where(['profile_id'=>$id])->get() ;

                        
                                        return response()->json(['update'=>$specialityAll,'id'=>$id]);


                                break;
                        
                        case 'Transportations':

                                $transportation = new Transportation();

                                $transportation->insert($request['value']);
                                
                                $transportationAll = $transportation::where(['profile_id'=>$id])->get() ;

                        
                                        return response()->json(['update'=>$transportationAll,'id'=>$id]);


                                break;
                        
                       
                       default:
                               return response()->json([],401);
                               break;
               }
}

public function deleteSkill(Request $request,$id){

        switch ($request['type']) {
                case 'Educations':
                        
                        $education = Education::find($id);
                        $education->delete();
                        return response()->json(['msg'=>$id]);
                        break;

                 case 'Transportations':
                        
                   
                        $transportation = Transportation::find($id);
                        $transportation->delete();
                    

                        return response()->json(['msg'=>'transport deleted']);

                        break;

                 case 'Works':

                        $work = Work::find($id);
                        $work->delete();
                        
                        return response()->json(['msg'=>'work deleted']);
                        
                        break;

                 case 'Languages':

                        $language= Language::find($id);
                        $language->delete();

                        return response()->json(['msg'=>'language deleted']);
                        break;
                case 'Specialities':

                        $speciality = new ProfileSpecielity();
                        $speciality->delete($id);
                        return response()->json(['msg'=>'speciality deleted']);
                        break;
                
                default:
                        # code...
                        break;
        }

        return response()->json($id);

}

//get a duty offers

public function get_offers($id_duty,$status){

                $offers = Offer::where(['task_id'=>$id_duty,'offer_status_id'=>$status])->with(['user','task','user.profile'])->get();
                return response()->json(['msg'=>'OK','offers'=>$offers]);

}
//change task and offer status
public function change_status(Request $request){

        $task = Task::where(['id'=>$request['task_id']])->update(['task_statuse_id'=>$request['status_id'],'message_accepted'=>$request['message'],'user_accepted_id'=>$request['user_id']]);
        $offer = Offer::where(['id'=>$request['offer_id']])->update(['offer_status_id'=>$request['status_id']]);
        return response()->json(['msg'=>'OK','response'=>$offer]);
}

//reject offer

public function change_status_reject(Request $request){

        $offer = Offer::where(['id'=>$request['offer_id']])->update(['offer_status_id'=>$request['status_id']]);
        return response()->json(['msg'=>'OK','response'=>$offer]);
}

//save review

public function save_review(Request $request){

        $review = new Review;
        $review->create($request->all());
        $task = Task::where(['id'=>$request['task_id']])->update(['task_statuse_id'=>3]);
        return response()->json(['msg'=>'Review Saved','status'=>'OK'],200,[],JSON_NUMERIC_CHECK);  
}

//send emails

function emailSender($email, $request) {
		Mail::to($email)->send(new Registration($request));
	}

        

 

   
}
