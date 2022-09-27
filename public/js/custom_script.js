// This is Global JS That Load in All Page
$(document).ready(function(){
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": false,
        "progressBar": false,
        "positionClass": "toast-bottom-right",
        "preventDuplicates": true,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
      }

      $('.btn-import').click(function() {
        $('.container-form-import').toggle();
     });
      $('.btn-export').click(function() {
        $('.container-form-export').toggle();
     });

     $('.select2input').select2();
     $('.select2inputModal').select2({
        dropdownParent: $('#myModal')
    });


    if($('.sidebar-item.loan.active.full').length){
        $('.sidebar-item.inventory').removeClass('active');
    }




})
