<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Doctor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class HomeController extends Controller
{
    public function redirect()
    {
        
        if (Auth::id()) {
           if(Auth::user()->role=='1'){
           
            return view('admin.home');
           }
           else{
            $doctors = Doctor::all();
            return view('user.home', compact('doctors'));
           }
        } else {
            return redirect()->back();
        }
    }
    public function index(){

        $doctors = Doctor::all();
        // dd($doctor);


        return view('user.home', compact('doctors'));
    }
}
