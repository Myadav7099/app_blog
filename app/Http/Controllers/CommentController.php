<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Comment;
use Auth;
class CommentController extends Controller
{
   public function save( Request $request)
   {
        $post_id = $request->post_id;
        $input_comment = $request->comment;
        $author_id = Auth::id();
        $comment = new Comment();
        $comment->post_id = $post_id;
        $comment->comment = $input_comment;
        $comment->author_id = $author_id;
        $comment->save(); 
        return back()->with('Message saved');
    }
   
    
   
}
