@extends('layouts/sidemenu')
@section('content')
<div class="panel panel-default">
    <div class="panel-body">
        <div class="clearfix">&nbsp;</div>
       
        
       
       
        <form class="form-horizontal" action="{{url('/admin/checkMiddleWare')}}"  method="POST" enctype="multipart/form-data">
           
                {{ csrf_field() }}
                <input type="hidden" name="user_id" value="{{Auth::user()->id}}">
                <div class="form-group">
                    <label for="age" class="col-sm-2 control-label">Age</label>
               
                    <div class="col-sm-6">
                        <input type="text" name="age" id="age" value="{{ old('name',  isset($p_info->name) ? $p_info->name : null)}}" placeholder="ex: John" class="form-control">
                        {{$errors->first('name')}}
                    </div>
                </div>
                
            {{\Session::get('message')}}

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

@endsection

@endsection(content)