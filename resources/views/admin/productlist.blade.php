@extends('layouts/app')
@section('content')
<div class="panel-body">
	<div class="clearfix">&nbsp;</div>
		<div class="addp">
			<a href="{{url('/admin/addproduct')}}"><button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">Add Product</button></a>
		</div>
		<div class="clearfix">&nbsp;</div>
		<div class="totalplist">
			
			    <table class="table table-responsive">
					<thead>
						<th>#</th>
						<th>Title</th>
						<th>Sku</th>
						<th>Price</th>
						<th>Descripiton</th>
						<th>Status</th>
						<th>Edit/ Delete</th>
					</thead>
					<tbody>
					@forelse ($products as $product)
					<tr>
						<td>{{$loop->iteration}}</td>
						<td>{{$product->title}}</td>
						<td>{{$product->sku}}</td>
						<td>{{$product->price}}</td>
						<td>{{$product->description}}</td>
						<td>{{$product->title}}</td>
						<td><a href="">edit</a> || <a href="">delete</a></td>
					</tr>
					@empty
					    <p>No Product Found</p>
					@endforelse
					</tbody>
				</table>
			
		</div>
</div>
<script type="text/javascript">

	$(document).ready(function(){
		$('.statuschebox').click(function(){
			var checkresult = $(this).prop('checked');
			if(checkresult == true)
			{
				$('input[name="status"]').val('Y');
			}
			if (checkresult == false)
			{
				$('input[name="status"]').val('N');
			}
			$(this).closest('form').submit();
		});
	});
	
</script>
@endsection(content)