<?php

require_once "conection.php";
 class ModelPatients{
     static public function mdlInserPatient($tabla, $datos){
        $stmt = Conexion::conectar()->prepare("INSERT INTO $tabla( apellido,edad , encargado,fechaIngreso,fechaNacimiento,nombre,telefono) VALUES (:apellido, :edad, :encargado, :fechaIngreso, :fechaNacimiento, :nombre , :telefono)");

		$stmt->bindParam(":apellido", $datos["apellido"], PDO::PARAM_STR);
		$stmt->bindParam(":edad", $datos["edad"], PDO::PARAM_STR);
		$stmt->bindParam(":encargado", $datos["encargado"], PDO::PARAM_STR);
		$stmt->bindParam(":fechaIngreso", $datos["fechaIngreso"], PDO::PARAM_STR);
		$stmt->bindParam(":fechaNacimiento", $datos["fechaNacimiento"], PDO::PARAM_STR);
		$stmt->bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
		$stmt->bindParam(":telefono", $datos["telefono"], PDO::PARAM_STR);


		if($stmt->execute()){

			return "ok";	

		}else{

			return "error";
		
		}

		$stmt->close();
		
		$stmt = null;
     }
 }