@extends('layouts.default')
@section('content')
<div class="container">
<?php if($success) { ?>

<div class="alert alert-success">

  <p><?php echo $success; ?></p>

</div>

<?php } ?>
  <h2>Categary Form</h2>
 
  <form action="/category/save" method="post" enctype="multipart/form-data">
    
    
    <div class="form-group">
      <label for="categary_name">Categary Name:</label>
      <input type="text" class="form-control" id="categary_name" placeholder="Enter name" name="name">
    </div>
    <input type="hidden" name="_token" value="{{ csrf_token() }}"/>
    <div class="form-group">
      <label for="categary_image">Categary Image:</label>
      <input type="file" class="form-control" id="categary_image" placeholder="Enter Image" name="image">
    </div>
   
    
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
@stop