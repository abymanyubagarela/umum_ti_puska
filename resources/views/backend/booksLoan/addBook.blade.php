<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Tambah Buku </h4>
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
                                <th>Kode Buku</th>
                                <th>Judul Buku</th>
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
    
    var count = 0;
    $(function() {
        getDataTableModal();
    });

    $(document).on('click', '.open_modal', function() {
        $('#myModal').modal('show')
        $('.yajra-datatable-modal').DataTable().ajax.reload();
    });

    $(document).on('click', 'div.adding', function() {
        var typeModal = $('table #type').val();
        if (typeModal == 'edit') {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            })
            var formData = {
                inventory_id: $(this).attr('value'),
                inventoryloan_id: $('#inventoriesLoanInput').val()
            }
            $.ajax({
                type: "POST",
                url: "/backend/inventoriesLoanDetails/",
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
            if(count < 3) {
                var tableRows = $(this).parent().parent();
                dataRowAdd.push($(this).attr('value'));
                $(this).removeClass('adding');
                $(this).addClass('deleting');
                $(this).text('Hapus');
                $(this).append('<input name="book[]" value="' + $(this).attr('value') + '" type="hidden" />')
                $('.yajra-datatable').append(tableRows);
                count++;
            } else {
                toastr.error('Maksimal peminjaman buku satu pegawai adalah 3 buku');
            }
        }

    });

    $(document).on('click', 'div.deleting', function() {
        
        values = $(this).attr('value');
        dataRowAdd = $.grep(dataRowAdd, function(n) {
            return n != values;
        });
        var tableRows = $(this).parent().parent().remove();
        count--;
        
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
                url: '{{ route("books.loan") }}',
                method: 'POST'
            },
            columns: [{
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex'
                },
                {
                    data: 'book_number',
                    name: 'book_number'
                },
                {
                    data: 'book_title',
                    name: 'book_title'
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
            },
            "initComplete": function() {
                $(".dataTables_filter input")
                    .unbind() // Unbind previous default bindings
                    .bind("input", function(e) { // Bind our desired behavior
                        // If the length is 3 or more characters, or the user pressed ENTER, search
                        if (this.value.length > 2 || e.keyCode == 13) {
                            // Call the API search function
                            table.search(this.value).draw();
                        }
                        // Ensure we clear the search if they backspace far enough
                        if (this.value == "") {
                            table.search("").draw();
                        }
                        return;
                    });
            }
        });
    };
</script>
<!-- END MODAL -->