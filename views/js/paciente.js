$(".table-patient").on("click", ".btnEliminarPaciente", function(){
	var CODIGO_PACIENTE = $(this).attr("CODIGO_PACIENTE");
	
	swal({
		title: '¿Está seguro de borrar el Paciente',
		text: "¡Si no lo está puede cancelar la acción!",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#008f39',
		cancelButtonColor: '#d33',
		cancelButtonText: 'Cancelar',
		confirmButtonText: 'Si, borrar Paciente!'
	}).then(function(result){
		
		if(result.value){
			
			window.location = "index.php?ruta=showPatients&CODIGOPACIENTE="+CODIGO_PACIENTE;
			
		}
		
	})
	
	
})
