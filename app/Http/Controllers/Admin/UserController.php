<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
	//User list show
	public function index()
	{
		$users = User::all();
		return view('admin.userlist', compact('users'));
	}
	//User list edit
	public function user_edit($id)
	{
		$users = User::findOrFail($id);
		return view('admin.useredit', compact('users'));
	}

	// update user information
	// public function user_update(Request $request, $id){
	// 	$users = User::findOrFail($id);

	// 	$users->name = $request->name;
	// 	$users->email = $request->email;
	// 	$users->role = $request->role;

	// 	$users->save();

	// 	return redirect()->route('user_list')->with('message','User information Updated successfully');
	// }
	public function user_update(Request $request, $id)
	{
		$request->validate([
			'name' => 'required',
			'email' => 'required|email',
			'role' => 'required', // Assuming 'role' is a required field
		]);

		$user = User::findOrFail($id);

		$user->name = $request->name;
		$user->email = $request->email;
		$user->role = $request->role;
		$user->save();
		return redirect()->route('user_list')->with('message', 'User information updated successfully');
	}
 // user delete 

	public function user_delete($id){
		$user=User::find($id);
		$user->delete();
		return redirect()->back()->with("message","User deleted successfully");
	}

}
