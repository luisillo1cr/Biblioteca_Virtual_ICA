<script>
$(document).ready(function(){
    $('.btn-exit-system').on('click', function(e){
        e.preventDefault();
        swal({
            title: 'Estas seguro?',
            text: "La sesión actual se va a cerrar",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#03A9F4',
            cancelButtonColor: '#F44336',
            confirmButtonText: '<i class="zmdi zmdi-run"></i> Si, Salir!',
            cancelButtonText: '<i class="zmdi zmdi-close-circle"></i> No, Cancelar!'
        }).then(function () {
            window.location.href="index.html";
        });
	});
});
</script>