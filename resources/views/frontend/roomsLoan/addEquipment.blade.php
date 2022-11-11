<!-- MODAL SECTION -->
<div class="modal modal-lg fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <h4 class="modal-title">Tambah Perlengkapan </h4>
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
                        <th>Nama Perlengkapan</th>
                        <th>Jumlah</th>
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

  $(function() {
      getDataTableModal();
  });

  $(document).on('click', '.open_modal', function() {
      $('#myModal').modal('show')
      $('.yajra-datatable-modal').DataTable().ajax.reload();
  });

  $(document).on('click', 'div.adding', function() {
      var typeModal = $('table #typeEquipments').val();
        
        if (typeModal == 'edit') {
          $.ajaxSetup({
              headers: {
                  'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
              }
          })

          var columnJumlah = $(this).parent().closest('td').siblings().find('input');

          if( columnJumlah.val() > 0 ) {                     
            var formData = {
                equipment_id: $(this).attr('value'),
                jumlah: columnJumlah.val(),
                roomloan_id: $('#roomLoanInput').val()
            }

            $.ajax({
              type: "POST",
              url: "/backend/roomLoanDetails/",
              data: formData,
              dataType: 'json',
              success: function(data) {
                  $('#myModal').modal('hide')
                  $('.dataTable').DataTable().ajax.reload();
                  toastr.success('Data berhasil ditambah');
              },
              error: function(reject) {
                  console.log(reject);
              }
          });
          } else {

            toastr.warning('Jumlah tidak boleh kosong atau negatif/nol');

          }

      } else {
          var tableRows = $(this).parent().parent();
          
          var columnJumlah = $(this).parent().closest('td').siblings().find('input');
          
          if( columnJumlah.val() > 0 ) {                     
              columnJumlah.attr('disabled','disabled');

              $(this).removeClass('adding');
              $(this).addClass('deleting');
              $(this).text('Hapus');
              $(this).append('<input name="equipment[]" value="' + $(this).attr('value') + '_'+ columnJumlah.val() +'" type="hidden" />')

              dataRowAdd.push($(this).attr('value'));

              $('.yajra-datatable').append(tableRows);
          } else {

            toastr.warning('Jumlah tidak boleh kosong atau negatif/nol');

          }
      }

  });

  $(document).on('click', 'div.deleting', function() {
      values = $(this).attr('value');
      dataRowAdd = $.grep(dataRowAdd, function(n) {
          return n != values;
      });
      var tableRows = $(this).parent().parent().remove();
  });

  function getDataTableModal() {
      $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
          }
      })
      var table = $('.yajra-datatable-modal').DataTable({
          processing: true,
          serverSide: true,
          responsive: true,
          ajax: {
              url: '{{ route("equipments.detail") }}',
              method: 'POST'
          },
          columns: [{
                  data: 'DT_RowIndex',
                  name: 'DT_RowIndex'
              },
              {
                  data: 'name',
                  name: 'name'
              },
              {
                  data: 'jumlah',
                  name: 'jumlah'
              },
              {
                  data: 'action',
                  name: 'action',
                  class: 'action',
                  orderable: true,
                  searchable: true
              }
          ],
          "drawCallback": function(settings) {
              $.each(dataRowAdd, function(index, value) {
                  $('.adding').each(function(index) {
                    console.log(value, index)
                      if ($(this).attr('value') == value) {
                          $(this).parent().parent().remove()
                      }
                  })
              });
          }
      });      
  };



</script>
<!-- END MODAL -->

