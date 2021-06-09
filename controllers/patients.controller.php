<?php
class ControllerPatients{
    static public function ctrRegisterPatient(){
        if(isset($_POST["nombre"])){
				$tabla = "pacientes";

                $datos = array("nombre" => $_POST["nombre"],
                "apellido" => $_POST["apellido"],
                "edad" => $_POST["edad"],
                "fechaNacimiento" => $_POST["fechaNacimiento"],
                "encargado" => $_POST["encargado"],
                "telefono" => $_POST["telefono"],
                "fechaIngreso" => $_POST["fechaIngreso"]);

                $respuesta = ModelPatients::mdlInserPatient($tabla, $datos);
			
				if($respuesta == "ok"){
                    print("Paciente Ingresado");
                }
                else{
                    print("Paciente no Ingresado");
                }
        }
    }
}