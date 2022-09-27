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
            {{-- <div class="col-md-12">
                <label for="inputEmail4" class="form-label">Daftar Barang</label>
                <select class="select2inputModal form-select" name="inventory[]" multiple="multiple">
                    @foreach($inventories as $inventory)
                    <option value="{{ $inventory->id }}">{{ $inventory->inventory_name }} ({{ $inventory->inventory_nup }})</option>
                    @endforeach
                </select>
            </div>
            </div>
        </div> --}}
        <table class="table  table-bordered yajra-datatable-modal mt-3">
            <thead>
                <tr>
                    <th>No</th>
                    <th>NUP</th>
                    <th>Nama Barang</th>
                    <th>Merek</th>
                    <th style="max-width: 150px;overflow-wrap: break-word;">Deskripsi</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
    </div>
        <div class="modal-footer">
          {{-- <button type="button" class="btn btn-secondary" id="btn-save" value="update">Tambah Barang</button>
          <input type="hidden" id="product_id" name="product_id" value="0"> --}}
        </div>
      </div>
    </div>
  </div>


  <script type="text/javascript">
     $(document).on('click','.open_modal',function(){
        $('#myModal').modal('show')
    });
    $(document).on('select2:open', () => {
        document.querySelector('.select2-search__field').focus();
    });
    $(document).on('click','#deleteinventory',function(){
        $(this).parent().parent().remove();
    });

    $("#btn-save").click(function (e) {
        $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            })
        if($('#typeInventory').val() == "edit"){
                var formData = {
                inventory_id: $('.select2inputModal').val(),
                    inventoryloan_id: $('#inventoriesLoanInput').val()
            }
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
        } else if($('#typeInventory').val() == "create"){
            var formData = {
                inventory_id: $('.select2inputModal').val()
            }
            $.ajax({
                type: "POST",
                url: "/backend/inventories/showData",
                data: formData,
                dataType: 'json',
                success: function (datas) {
                    var no = 1;
                    Object.keys(datas).forEach(item => {
                        if(!$('.inventoryname.id-'+datas[item]['id']).length){
                            const row = $("<tr></tr>");
                            row.append("<td><input class='inventoryname id-"+datas[item]['id']+"' type='hidden' value='"+datas[item]['id']+"'/>"+no+"</td>");
                            no++;
                            Object.keys(datas[item]).forEach(key => {
                            if(key != 'id'){
                                const rowData = $("<td></td>")
                                    .addClass("bar")
                                    .text(datas[item][key]);
                                row.append(rowData);
                            }
                            });
                            row.append("<td><div id='deleteinventory' class='btn btn-danger btn-sm '>Delete</div></td>");
                            $('.yajra-datatable').append(row);
                        }
                    });
                    $('#myModal').modal('hide')
                },
                error: function (reject) {
                    console.log(reject);
                }
            });
        }

    });

  </script>
<!-- END MODAL -->

