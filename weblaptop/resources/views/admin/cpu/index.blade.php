@extends('admin/layouts/masteradmin')
@section('content')
<!-- Table Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-md-12">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Quản lý CPU</h6>
                <p><button class='addcpu btn btn-primary'>Thêm</button></p>
                <form class="col-sm-6 mb-4" action="/admin/cpu" method="GET">
                    <div class="form-group">
                        <input class="form-control-sm" type="search" name="keyword" maxlength="255" placeholder="Search" required>
                        <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
                    </div>

                </form>
                @if(session()->has('mess'))
                <!-- <p class="alert alert-primary sm-4">
                    {{session('mess')}}
                </p> -->
                <script>
                    // Lấy giá trị từ session message
                    var message = "{{ session('mess') }}";

                    // Hiển thị thông báo bằng SweetAlert
                    Swal.fire({
                        title: "Thông báo",
                        text: message,
                        icon: "success",
                        position: "top-end",
                        showConfirmButton: false,
                        timer: 1500,
                        toast: true,
                        timerProgressBar: true
                    }).then(function() {
                        // Tải lại trang sau khi thông báo biến mất
                        location.reload();
                    });
                </script>
                @endif
                @if(session()->has('error'))
                <!-- <div class="alert alert-primary sm-4">
                    {{session('mess')}}
                </div> -->
                <script>
                    // Lấy giá trị từ session message
                    var message = "{{ session('error') }}";

                    // Hiển thị thông báo bằng SweetAlert
                    Swal.fire({
                        title: "Thông báo",
                        text: message,
                        icon: "error",
                        position: "top-end",
                        showConfirmButton: false,
                        timer: 1500,
                        toast: true,
                        timerProgressBar: true
                    }).then(function() {
                        // Tải lại trang sau khi thông báo biến mất
                        location.reload();
                    });
                </script>
                @endif
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Tên CPU</th>
                                <th>Trạng thái</th>
                                <th>🗑️</th>
                                <th>✏️</th>
                            </tr>
                        </thead>
                        @foreach($cpu as $item)
                        <tbody>
                            <tr>
                                <td>{{$item->idCPU}}</td>
                                <td>{{$item->tenCPU}}</td>
                                <td>
                                    @if($item->trangthai==0)
                                    <span style="color: red;">Đã khóa</span>
                                    @else
                                    <span style="color: green;">Đang hoạt động</span>
                                    @endif
                                </td>
                                <td>
                                    <form action="/admin/cpu/destroy/{{$item->idCPU}}" method="POST">
                                        @csrf
                                        <input type="hidden" name="_method" value="delete">
                                        <input type="submit" value="xóa" onclick="confirmXoa(event)" class="btn btn-danger">
                                    </form>
                                </td>
                                <td>
                                    <button class='editcpu btn btn-success' data-id='{{$item->idCPU}}'>Sửa</button>
                                </td>

                            </tr>
                        </tbody>
                        @endforeach

                    </table>
                    <div class="" style="float: right;"> {{$cpu->appends(Request::all())->links()}}</div>

                </div>
            </div>
        </div>

    </div>
</div>
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Thêm CPU</h5>
              
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form method="POST">
                        @csrf
                        <div class="form-floating mb-3">
                            <input type="hidden" class="form-control" id="idCPU" name="idCPU">
                            <span class="text-danger error-text idCPU_err"></span>

                        </div>
                        <div class="form-floating mb-3">

                            <input type="text" name='tenCPU' id="tenCPU" class='form-control mt-3'>
                            <label for="floatingInput">Tên CPU</label>
                            <span class="text-danger error-text tenCPU_err"></span>
                        </div>
                        <div class="form-floating mb-3">

                            <input type="text" name='slug_CPU' id="slug_CPU" class='form-control mt-3'>
                            <label for="floatingInput">Slug</label>
                            <span class="text-danger error-text slug_CPU_err"></span>
                        </div>
                        <div class="form-floating mb-3">

                            <textarea style="height: 150px;" name="mota_CPU" id="mota_CPU" class='form-control'></textarea>
                            <label for="floatingInput">Mô tả</label>
                            <span class="text-danger error-text mota_CPU_err"></span>
                        </div>
                        <div class="form-floating mb-3">

                            <select type="number" name='trangthai' class='form-select mt-3'>
                                <option value="0">Đã khóa</option>
                                <option value="1" selected>Kích hoạt</option>
                            </select>
                            <label for="floatingInput">Trạng thái</label>
                            <span class="text-danger error-text trangthai_err"></span>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <a href="/admin/cpu" class="btn btn-secondary">Thoát</a>
                <button type="button" class="btn btn-primary storecpu">Save..</button>
            </div>


        </div>
    </div>
</div>
<div class="modal fade" id="modelId1" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Sửa CPU</h5>
            </div>

            <div class="modal-body">
                <div class="container-fluid">
                    <form method="post">
                        @csrf
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="idCPU" name="idCPU" readonly>
                            <label for="floatingInput">ID</label>
                            <span class="text-danger error-text idCPU_err"></span>

                        </div>
                        <div class="form-floating mb-3">

                            <input type="text" name='tenCPU' id="tenCPU" class='form-control mt-3'>
                            <label for="floatingInput">Tên CPU</label>
                            <span class="text-danger error-text tenCPU_err"></span>
                        </div>
                        <div class="form-floating mb-3">

                            <input type="text" name='slug_CPU' id="slug_CPU" class='form-control mt-3'>
                            <label for="floatingInput">Slug</label>
                            <span class="text-danger error-text slug_CPU_err"></span>
                        </div>
                        <div class="form-floating mb-3">

                            <textarea style="height: 150px;" name="mota_CPU" id="mota_CPU" class='form-control'></textarea>
                            <label for="floatingInput">Mô tả</label>
                            <span class="text-danger error-text mota_CPU_err"></span>
                        </div>
                        <div class="form-floating mb-3">

                            <select type="number" name='trangthai' id="trangthai" class='form-select mt-3'>
                                <option value="0">Đã khóa</option>
                                <option value="1">Kích hoạt</option>
                            </select>
                            <label for="floatingInput">Trạng thái</label>
                            <span class="text-danger error-text trangthai_err"></span>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <a href="/admin/cpu" class="btn btn-secondary">Thoat</a>

                <button type="button" class="btn btn-primary updatecpu">Save..</button>
            </div>


        </div>
    </div>
</div>
<!-- Table End -->
@stop
@section('script')
<script>
    $.ajaxSetup({

        headers: {

            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')

        }

    });
    function confirmXoa(event) {
        event.preventDefault(); // Ngăn chặn hành động mặc định của sự kiện onchange

        Swal.fire({
            title: "Xác nhận xóa",
            text: "Bạn có chắc chắn muốn xóa?",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#d33",
            cancelButtonColor: "#3085d6",
            confirmButtonText: "Xóa",
            cancelButtonText: "Hủy"
        }).then((result) => {
            if (result.isConfirmed) {
                // Hành động xóa khi người dùng xác nhận
                event.target.form.submit();
            }
        });
    }
    $(document).ready(
        function() {

            $('button.addcpu').click(
                function() {
                    $('#modelId').modal('show');
                }
            );

            $('button.storecpu').click(function() {

                let data = new FormData($('#modelId form')[0]); // you can consider this as 'data bag'
                //  files.append('fileName', $('#img')[0].files[0]);
                // let formData = new FormData();
                // formData.append('img', $('#img')[0].files[0]);
                // alert('hello');
                // e.preventDefault();
                //var ten = $("#ten").val();
                $.ajax({
                    url: '/admin/cpu/store',
                    type: 'POST',
                    //  data: $('#modelId form').serializeArray(),files,
                    data: data,
                    dataType: 'json',
                    processData: false, // tell jQuery not to process the data
                    contentType: false, // tell jQuery not to set contentType
                    // async: false,
                    // cache: false,
                    // enctype: 'multipart/form-data',
                    success: function(s) {
                        console.log(s);
                        if ($.isEmptyObject(s.error)) {
                            Swal.fire({
                                title: "Thêm thành công",
                                icon: "success",
                                position: "top-end",
                                showConfirmButton: false,
                                timer: 1500,
                                toast: true,
                                timerProgressBar: true,
                            }).then(function() {
                                location.reload();
                                $('#modelId').modal('hide');
                            });
                        } else {
                            printErrorMsg(s.error);
                            // $.each( s.error , function(k,v){
                            //     alert(k+'->'+v);
                            // })
                        }
                        //$('#modelId form #ten2').val(s.error);
                        //location.reload();
                        // location.reload();
                        // $('#modelId').modal('hide');
                    },

                });

                function printErrorMsg(msg) {
                    $.each(msg, function(key, value) {
                        console.log(key);
                        $('.' + key + '_err').text(value);
                    });
                }
            });

        }
    );
    $(document).ready(
        function() {
            $('button.editcpu').click(
                function() {
                    //let data = new FormData( $('#modelId form')[0] );

                    $('#modelId1').modal('show');
                    $.ajax({
                        url: '/admin/cpu/edit/' + $(this).data('id'),
                        type: 'get',
                        data: {
                            id: 1
                        },
                        dataType: 'json',
                        success: function(data2) {
                            console.log(data2);
                            $('#modelId1 form #tenCPU').val(data2.tenCPU);
                            $('#modelId1 form #idCPU').val(data2.idCPU);
                            $('#modelId1 form #mota_CPU').val(data2.mota_CPU);
                            $('#modelId1 form #slug_CPU').val(data2.slug_CPU);
                            $('#modelId1 form #trangthai').val(data2.trangthai);

                        }
                    })
                }
            );
            $('button.updatecpu').click(function() {
                // alert('update');
                //     let data = {_token: $('input[name="_token"]:eq(0)').val() };//new FormData( $('#modelId1 form')[0] );
                //  console.log(data);
                // return;
                let data = new FormData($('#modelId1 form')[0])
                $.ajax({
                    url: '/admin/cpu/update',
                    type: 'POST',
                    data: data,
                    dataType: 'json',
                    processData: false, // tell jQuery not to process the data
                    contentType: false,
                    success: function(s) {
                        console.log(s);
                        if ($.isEmptyObject(s.error)) {
                            Swal.fire({
                                title: "Cập nhật thành công",
                                icon: "success",
                                position: "top-end",
                                showConfirmButton: false,
                                timer: 1500,
                                toast: true,
                                timerProgressBar: true,
                            }).then(function() {
                                location.reload();
                                $('#modelId1').modal('hide');
                            });
                        } else {
                            printErrorMsg(s.error);
                            // $.each( s.error , function(k,v){
                            //     alert(k+'->'+v);
                            // })
                        }
                    },
                    // error: function(mess) {
                    //     console.log(mess);
                    // }

                });

                function printErrorMsg(msg) {
                    $.each(msg, function(key, value) {
                        console.log(key);
                        $('.' + key + '_err').text(value);
                    });
                }
            });
        }
    );
</script>
@stop