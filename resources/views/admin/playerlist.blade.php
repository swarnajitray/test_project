@extends('layouts/sidemenu')
@section('content')
            <div class="panel panel-default">
<div class="panel-body">
	<div class="clearfix">&nbsp;</div>
		<div class="addp">
			<a href="{{url('/admin/addplayer')}}"><button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">Add Player</button></a>
		</div>
		<div class="clearfix">&nbsp;</div>
		<div class="totalplist">
			
			    <table class="table table-responsive">
					<thead>
						<th width="3%">#</th>
						<th width="10%">Name</th>
						<th width="10%">Address</th>
						<th width="10%">Phone</th>
						<th width="7%">Gender</th>
						<th width="10%">Status</th>
						<th width="40%">Edit/ Delete</th>
					</thead>
					<tbody>
					@forelse ($players as $player)
					<tr>
						<td>{{$loop->iteration}}</td>
						<td>{{$player->name}}</td>
                                                <td>{{$player->address}}</td>
                                                <td>{{$player->phone}}</td>
                                                <td>{{$player->gender}}</td>
                                                <td>{{$player->status}}</td>
                                                <td><a href="{{url('/admin/editpost/'.encrypt($player->id))}}">Edit</a> || 
                                                    <a href="{{url('/admin/deleteplayer/'.encrypt($player->id))}}"onclick="return confirm('Are you sure you want to Remove?');">Delete</a>||
                                                <a href="{{url('/admin/OnetoOne/'.encrypt($player->id))}}">OnetoOne</a>||
                                                <a href="{{url('/admin/Inverse/'.encrypt($player->id))}}">Inverse</a>||
                                                <a href="{{url('/admin/ManytoMany/'.encrypt($player->id))}}">ManytoMany<br></a>||
                                                <a href="{{url('/admin/EagerLoading/'.encrypt($player->id))}}">EagerLoading</a>||
                                                <a href="{{url('/admin/InUpRelatedModels/'.encrypt($player->id))}}">InUpRelatedModels</a>||
                                                <a href="{{url('/admin/Belongsto/'.encrypt($player->id))}}">Update BelongsToRelationships</a>||
                                                <a href="{{url('/admin/attach/'.encrypt($player->id))}}">Attach||</a>
                                                </td>
                                                

					</tr>
					@empty
					    <p>No Product Found</p>
					@endforelse
					</tbody>
				</table>
			
		</div>
</div>
            </div>
<!--<script type="text/javascript">

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
	
</script>-->
@endsection(content)