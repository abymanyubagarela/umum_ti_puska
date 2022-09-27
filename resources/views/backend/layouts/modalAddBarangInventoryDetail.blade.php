<!-- MODAL SECTION -->

<div class="modal modal-lg fade modal-add-inventory" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Tambah Barang </h4>
            <div class="btn-group" role="group" aria-label="Third group">
                <button type="button" class="close btn" data-bs-dismiss="modal">X</button>
            </div>
        </div>
        <div class="modal-body">
            <div class="row px-4">
        <table style="width:100% !important" class="table table-bordered yajra-datatable-modal mt-3">
            <thead>
                <tr>
                    <th>No</th>
                    <th>NUP</th>
                    <th>Nama Barang</th>
                    <th>Merek</th>
                    <th>Kondisi</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
    </div>
      </div>
    </div>
  </div>


  <script type="text/javascript">
     var dataRowAdd = [];
    $(function () {
        getDataTableModal();


    });
     $(document).on('click','.open_modal',function(){
        $('#myModal').modal('show')
        $('.yajra-datatable-modal').DataTable().ajax.reload();
    });
     $(document).on('click','div.adding',function(){
        var typeModal = $('table #typeInventory').val();
        if(typeModal == 'edit'){
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            })
            var formData = {
                inventory_id: $(this).attr('value'),
                inventoryloan_id: $('#inventoriesLoanInput').val()
            }
            console.log( formData)
            $.ajax({
                type: "POST",
                url: "/backend/inventoriesLoanDetails/",
                data: formData,
                dataType: 'json',
                success: function (data) {
                    $('#myModal').modal('hide')
                    $('.dataTable').DataTable().ajax.reload();
                    toastr.success('Data berhasil ditambah');
                },
                error: function (reject) {
                    console.log(reject);
                }
            });
        } else {
            var tableRows = $(this).parent().parent();
            dataRowAdd.push($(this).attr('value'));
            $(this).removeClass('adding');
            $(this).addClass('deleting');
            $(this).text('Hapus');
            $(this).append('<input name="inventory[]" value="'+$(this).attr('value')+'" type="hidden" />')
            $('.yajra-datatable').append(tableRows);
        }

    });
     $(document).on('click','div.deleting',function(){
        values = $(this).attr('value');
        dataRowAdd = $.grep(dataRowAdd, function(n) {
        return n != values;
        });
        var tableRows = $(this).parent().parent().remove();
    });




    function getDataTableModal(){
          var table = $('.yajra-datatable-modal').DataTable({
          processing: true,
          serverSide: true,
          responsive: true,
          ajax: "{{ route('inventories.listloan') }}",
          columns: [
              {data: 'DT_RowIndex', name: 'DT_RowIndex'},
              {data: 'inventory_nup', name: 'inventory_nup'},
              {data: 'inventory_name', name: 'inventory_name'},
              {data: 'inventory_brand', name: 'inventory_brand'},
              {data: 'inventory_condition', name: 'inventory_condition'},
              {
                  data: 'action',
                  name: 'action',
                  class: 'action',
                  orderable: true,
                  searchable: true
              }
          ],
          "drawCallback": function( settings ) {

                $.each(dataRowAdd, function( index, value ) {
                    $('.adding').each(function(index){
                        if($(this).attr('value') == value){
                            $(this).parent().parent().remove()
                        }
                    })


                });
            //    if($('.yajra-datatable-modal div').attr('value') == 2){
            //     alert('asd');
            //    }
            }
         });
    };

  </script>
<!-- END MODAL -->

