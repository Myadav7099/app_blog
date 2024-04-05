@extends('layouts.default')
@section('content')
<h3>Categary Table</h3>
<div id="band" class="container text-center">

<table class="table table-bordered">

    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Image</th>
        <th>Created_date</th>
        <th>updated_date</th>
      
      </tr>
    </thead>
    <tbody>
    <?php foreach($list as $key => $value){ ?>
      <tr>
      <td><?php echo $value['id']; ?></td> 
      <td><?php echo $value['name']; ?></td> 
       <td><img src="<?php echo asset("storage").'/images/'.$value->image ?>" style="height:100px" class="img img-circle img-responsive"/> </td> 
      <td><?php echo $value['created_at']; ?></td>
      <td><?php echo $value['updated_at']; ?></td> 
      
      </tr>
      <?php } ?>
    </tbody>
  </table>
  {{ $list->links() }}

</div>
@stop