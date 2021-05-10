<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\CourseFeatureModel;
use App\Models\CoursePlanModel;
use App\Models\PaymentGuideModel;
use App\Models\MoreSeriesModel;
use App\Models\FreeClassModel;
use App\Models\InformationModel;
use App\Models\Registration;

class HomeController extends Controller
{

    function getCourseFeatures(){
       $result= CourseFeatureModel::all();
       return  $result;
    }

    function getCoursePlan(){
        $result= CoursePlanModel::all();
        return  $result;
    }

    function getPaymentGuide(){
        $result= PaymentGuideModel::all();
        return  $result;
    }

    function getMoreSeries(){
        $result= MoreSeriesModel::all();
        return  $result;
    }

    function getFreeClass(){
        $result= FreeClassModel::all();
        return  $result;
    }
    function Informations(){
        $result= InformationModel::all();
        return  $result;
    } 
    function onRegistration(Request $req){
        $name = $req->input('name');
        $email = $req->input('email');
        $phone = $req->input('phone');
        $password = $req->input('password');
        $bkash_number = $req->input('bkash_number');
        $bkash_TrxID = $req->input('bkash_TrxID');
        $count =  Registration::where('email',$email)
                                ->orWhere('phone',$phone)
                                ->count();

       if($count===0){
       $result = Registration::insert([
                'name' => $name,
                'email' => $email,
                'phone' => $phone,
                'password' => $password,
                'bkash_number' => $bkash_number,
                'bkash_TrxID' => $bkash_TrxID
        ]);
        if($result==true){
            return "Registration Successfully";
        }
        else{
             return "Something went wrong!";
        }
    }
     else{
        return "User Alredy Exists";
    }
   
}
    
}
