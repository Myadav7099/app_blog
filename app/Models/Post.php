<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;

class Post extends Model
{
    protected $fillable = ['title', 'description','category','image','author_id'];
   
    

    public function author()
    {
        return $this->hasOne(User::class,'id','author_id');
    }

    public function comments()
    {
        return $this->hasMany(Comment::class,'post_id','id');
    }
}
