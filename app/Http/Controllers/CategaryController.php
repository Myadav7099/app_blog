<?php

namespace App\Http\Controllers;
use App\Models\Categary;
use Illuminate\Http\Request;

class CategaryController extends Controller
{
    public function add(Request $request)
   {
    
      $success_message = $request->session()->get('success');
      $error_message = $request->session()->get('error');
      return view('pages.categary',['success' => $success_message,'error' => $error_message]); 
   }
   public function save(Request $request)
   {
     
         $request->validate([
        
        'name' => 'required',
        'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
      
        $extension =  $request->image->extension(); 
        $unique_name = time().'.'.$extension;
        $image  =  $request->image->storeAs('public/images',$unique_name);
        $name = $request->input('name');
        $request->image =  $unique_name;
        $data = ['name'=>$name,'image' =>$unique_name];
        $categary = Categary::create($data); 
        return redirect('/post/add')->with('success','category added successfully!');
   }
   public function list(Request $request)
   {
            $data = Categary::paginate(10);dd($data);
            return view('pages.dashboard',['list' => $data]);
   }
     

}
