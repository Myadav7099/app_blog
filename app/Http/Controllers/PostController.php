<?php

namespace App\Http\Controllers;
use session;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Categary;
use App\Models\Comment;
use Illuminate\Support\Facades\Auth;
class PostController extends Controller
{
   
   public function create(Request $request)
   {
    
      
      $data = Categary::all();
  
      return view('pages.post',['data' =>$data]); 
   }
   

   public function save(Request $request)
   {
  
        $request->validate([
        'title' => 'required',
        'description' => 'required',
        'category' => 'required',
        'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        
        $extension =  $request->image->extension(); 
        $unique_name = time().'.'.$extension;
        $image  =  $request->image->storeAs('public/images',$unique_name);
        $title = $request->input('title');
        $description = $request->input('description'); 
        $category = $request->input('category');
        $author_id = Auth::id();
        $data = ['title'=>$title,'author_id'=>$author_id,'description'=>$description,'category'=>$category,'image' =>$unique_name];
        

        $post = Post::create($data);
        
        return redirect('/home');
    

   }
   public function get( Request $request,$id=null)
   {
      
      $post = [];
      if($id)
      {
         $post = Post::find($id);
      }
    
      $categories = Post ::orderBy('created_at','desc')->take(3)->get();
      
      $data = Categary::all();
      return view ('pages.singlepost',['post'=>$post,'categories' => $data,'list'=>$categories]);
   }
   public function logout(Request $request)
    {
      
      $request->session()->flush();
      return redirect('/register');
       
        
    }
    public function delete(Request $request,$id)
    {
        
        if($id)
        {
            $comment = Comment::find($request->id);dd($comment);
            $comment->delete();
            $request->session()->flash('success','Successfully Deleted');
         
        }
       
        return view('pages.delete');
        
    }

}



