@extends('layouts.default')
@section('content')

<div class="container grid-container">
<div class="row">
<?php foreach($post as $key => $value){ ?>
    
 
   <div class="col-12 col-md-6 col-lg-4">
      <div class="card">
            <img class="card-img-top" src="<?php echo asset("storage").'/images/'.$value->image ?>" value="<?php echo $value->unique_name; ?>" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title"><?php echo $value->title; ?></h5>
                <p class="card-text"><?php echo $value->description; ?></p>
            </div>
            <a type="button" href="/post/{{$value->id}}" class="btn btn-primary">Read More</a>
            <a type="button" href="/post/{{$value->id}}" class="btn btn-primary">Delete</a>
      </div>
    </div>

  <?php } ?>
  </div>

    {{ $post->links() }}
</div>

@stop