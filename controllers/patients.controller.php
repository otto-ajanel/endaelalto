<?php



class ControllerPatients{
    static public function ctrRegisterPatient(){
        if(isset($_POST["nombre"])){
				
                $datos = array("NOMBRE" => $_POST["nombre"],
                "APELLIDOS" => $_POST["apellido"],
                "EDAD" => $_POST["edad"],
                "CODIGO_CASA"=> $_POST["casa"],
                "CODIGO_CONDICION"=> $_POST["condicion"],
                "CODIGO_ESTADO_CIVIL"=> $_POST["estadoCivil"],
                "FECHA_NACIMIENTO" => $_POST["fechaNacimiento"],
                "ENCARGADO" => $_POST["encargado"],
                "TELEFONO" => $_POST["telefono"],
                "FECHA_INGRESO" => $_POST["fechaIngreso"]);
                $tabla = "paciente";
                $respuesta = ModelPatients::mdlInserPatient($tabla, $datos);
			
				if($respuesta == "ok"){
                    print("Paciente Ingresado");
                }
                else{
                    print("Paciente no Ingresado");
                }
        }
    }
    static public function ctrShowPatient($item,$valor){
        $tabla="paciente";
        $res=ModelPatients::mdlShowPatients($tabla,$item,$valor);
        return $res;
    }

    static public function ctrDeletePatient(){
        if (isset($_GET["CODIGOPACIENTE"])) {
            $tabla="paciente";
            $data=$_GET["CODIGOPACIENTE"];
            echo '<script>
                console.log("err");</script>';
            $res= ModelPatients::mdlDeletePatient($tabla,$data);
            if ($res=="ok") {
                echo'<script>

					swal({
						  type: "success",
						  title: "La categoría ha sido borrada correctamente",
						  showConfirmButton: true,
                          confirmButtonColor:"#008f39",
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
									if (result.value) {

									window.location = "showPatients";

									}
								})

					</script>';
            }
        }
    }
}