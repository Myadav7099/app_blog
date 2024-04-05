@extends('layouts.default')
@section('content')
<div class="container">
  <h2>Post Form</h2>
  @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
  <form action="/post/save" method="post" enctype="multipart/form-data">
    <div class="form-group">
      <label for="post_title">Post Title:</label>
      <input type="text" class="form-control" id="post_title" placeholder="Enter Post Title" name="title">
    </div>
    
    <div class="form-group">
      <label for="post_description">Post Description:</label>
      <input type="text" class="form-control" id="post_description" placeholder="Enter Post Description" name="description">
    </div>
    <div class="form-group">
      <label for="post_image">Post Image:</label>
      <input type="file" class="form-control" id="post_description" placeholder="Enter Post Image" name="image">
    </div>
    <input type="hidden" name="_token" value="{{ csrf_token() }}"/>
    <div class="form-group">
    <label for="categary">Category:</label>
    <select class="form-select form-control" name="category" >

    <?php foreach($data as $key => $value){ ?>
      <option value="<?php echo $value->id; ?>"><?php echo $value->name; ?></option>
      <?php } ?>
    </select>
      
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
@stop