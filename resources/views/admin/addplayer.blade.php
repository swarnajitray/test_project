@extends('layouts/sidemenu')
@section('content')
<div class="panel panel-default">
    <div class="panel-body">
        <div class="clearfix">&nbsp;</div>
       
        
       
        @if(!isset($p_info))
        <form class="form-horizontal" action="{{url('/admin/store')}}"  method="POST" enctype="multipart/form-data">
            @else
            <form class="form-horizontal" action="{{url('/admin/updateplayer/'.(isset($p_info->id) ? encrypt($p_info->id):'' ))}}"  method="POST" enctype="multipart/form-data">
                @endif
                {{ csrf_field() }}
                <input type="hidden" name="user_id" value="{{Auth::user()->id}}">
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">Name</label>
               
                    <div class="col-sm-6">
                        <input type="text" name="name" id="name" value="{{ old('name',  isset($p_info->name) ? $p_info->name : null)}}" placeholder="ex: John" class="form-control">
                        {{$errors->first('name')}}
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-sm-2 control-label">Phone No</label>
                    <div class="col-sm-6">
                        <input type="text" name="phone" class="form-control" id="address" placeholder="Phone No" value="{{ old('phone',  isset($p_info->phone) ? $p_info->phone : null)}}">
                        {{$errors->first('phone')}}
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-6">
                        <input type="text" name="email" class="form-control" id="address" placeholder="Email" value="{{ old('email',  isset($p_info->email) ? $p_info->email : null)}}" 
                               {{(isset($p_info) ? 'readonly' : '')}}>
                        {{$errors->first('email')}}
                    </div>
                </div>
                <div class="form-group">
                    <label for="address" class="col-sm-2 control-label">Address</label>
                    <div class="col-sm-6">
                        <textarea name="address" class="form-control" rows="3" id="phone" >{{ old('address',  isset($p_info->address) ? $p_info->address : null)}}</textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="gender" class="col-sm-2 control-label">Gender</label>
                    <div class="col-sm-6">
                        <input type="radio" name="gender" value="Male" {{isset($p_info->gender) && $p_info->gender =='Male' ? 'checked' : null }} > Male<br>
                        <input type="radio" name="gender" value="Female" {{isset($p_info->gender) && $p_info->gender =='Female' ? 'checked' : null }}>Female<br>
                    </div>
                </div>
                <div class="form-group">
                    <label for="picture" class="col-sm-2 control-label">Picture</label>

                    
                    <div class="col-sm-4">
                        <input type="file" name="picture" id="picture" class="form-control"
                               onchange="loadFile(event)">
                    </div>
                    @if(isset($p_info->pic)&& $p_info->pic!='')
                    <div><input type="hidden" name="picture_name" value="{{$p_info->pic}}"></div>
                    <div class="col-sm-4">
                        <img src="{{ url('storage/app/thumb_img/'.$p_info->pic)}}" id="image" alt="Player pic" style="width: 100px; height: 100px;">
                    </div>
                    @endif
                    @if(!isset($p_info->pic))
                    <div class="col-sm-4">
                        <img src="{{ url('storage/app/thumb_img/aboutme.jpg')}}" id="image" alt="Player pic" style="width: 100px; height: 100px;">
                    </div>
                    @endif
                    {{$errors->first('picture')}}
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default" id="adprd">Submit</button>
                    </div>
                </div>
            </form>
            <div class="clearfix">&nbsp;</div>
    </div>
</div>
@section('js')
<script type="text/javascript">
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": true,
        "progressBar": false,
        "positionClass": "toast-bottom-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "3000",
        "hideDuration": "2000",
        "timeOut": "3000",
        "extendedTimeOut": "3000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };

    function notify(msg_type, msg_body) {
        if (msg_type == "error") {
            toastr.error(msg_body);
            return false;
        } else if (msg_type == "warning") {
            toastr.warning(msg_body);
            return false;
        } else if (msg_type == "success") {
            toastr.success(msg_body);
            return false;
        } else {
            toastr.info(msg_body);
        }
    }
    ;


    $(document).ready(function () {
        $('#adprd').click(function () {
            var title = $('input[name="title"]').val();
            if (title.trim() == '')
            {
                notify('error', "title cannot be empty");
                return false;
            }
        });
    });
</script>

<script>


     var loadFile = function(event) {
        var reader = new FileReader();
        reader.onload = function(){
          var output = document.getElementById('image');
          output.src = reader.result;
        };
        reader.readAsDataURL(event.target.files[0]);
      };

</script>
@endsection

@endsection(content)