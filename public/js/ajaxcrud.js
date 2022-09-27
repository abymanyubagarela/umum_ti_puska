
$(document).ready(function(){

    //get base URL *********************
    var url = $('#url').val();


    //display modal form for creating new product *********************
    $('#btn_add').click(function(){
        $('#btn-save').val("add");
        $('#frmProducts').trigger("reset");
        $('#myModal').modal('show');
    });



    //display modal form for product EDIT ***************************
    $(document).on('click','.open_modal',function(){
        $('.modal').removeClass("hide");
        var product_id = $(this).val();
        // Populate Data in Edit Modal Form
        $.ajax({
            type: "GET",
            url: url + '/' + product_id +'/edit',
            success: function (data) {
                console.log(data);
                $('#product_id').val(data.id);
                Object.keys(data).forEach((element) => {
                    $('#'+element).val(data[element]);
                });
                $('#myModal').modal('show');
            },
            error: function (data) {
                console.log('Error:', data);
            }
        });
    });



    //create new product / update existing product ***************************
    $("#btn-save").click(function (e) {

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
            }
        })
        var ids = []
        $('#frmProducts .inputData').each(function(){
              ids.push($(this).attr('id'))
        })
        e.preventDefault();
        $(ids).each(function(){
            ids.push($(this).attr('id'))
            })
        var formData = {}

        for (var i = 0; i < ids.length; ++i){
         if (ids[i] !== undefined) formData[ids[i]] = $('.modal #'+ids[i]).val();
        }
        var product_id = $('#product_id').val();;
        $.ajax({
            type: "PUT",
            url: url + '/' + product_id,
            data: formData,
            dataType: 'json',
            success: function (data) {


                $('#frmProducts').trigger("reset");
                $('#myModal').modal('hide')
                $('.dataTable').DataTable().ajax.reload();
                toastr.success('Data berhasil diubah');
            },
            error: function (reject) {
                var response = $.parseJSON(reject.responseText);
                  $('.is-invalid').next().remove();
                  $('.is-invalid').removeClass('is-invalid')
                  //
                $.each(response.errors, function(key, val) {

                    $("#" +key).addClass('is-invalid');
                    $("#" + key+'.is-invalid').parent().append('<div class="invalid-feedback">'+val+' </div>');

                })
                console.log(response);
            }
        });
    });


    //delete product and remove it from TABLE list ***************************
    $(document).on('click','.delete-product',function(){
        var data_name = $(this).attr('name');
        var data_id = $(this).val();
        Swal.fire({
            title: "Apakah anda yakin akan menghapus "+data_name+"?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
          }).then((result) => {
            if (result.isConfirmed) {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                })
                $.ajax({
                    type: "DELETE",
                    url: url + '/' + data_id,
                    success: function (data) {
                        $('.dataTable').DataTable().ajax.reload();

                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });
                toastr.info('Data Berhasil dihapus');

            }
          })

    });

});
