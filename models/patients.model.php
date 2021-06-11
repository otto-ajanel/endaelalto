<?php

require_once "conection.php";
 class ModelPatients{
     static public function mdlInserPatient($tabla, $datos){
        $stmt = Conexion::conectar()->prepare("INSERT INTO $tabla( NOMBRE,APELLIDOS , EDAD,FECHA_NACIMIENTO,ENCARGADO,TELEFONO,CODIGO_ESTADO_CIVIL,CODIGO_CONDICION,CODIGO_CASA,FECHA_INGRESO) VALUES (:NOMBRE, :APELLIDOS, :EDAD, :FECHA_NACIMIENTO, :ENCARGADO, :TELEFONO , :CODIGO_ESTADO_CIVIL, :CODIGO_CONDICION,:CODIGO_CASA,:FECHA_INGRESO)");

		$stmt->bindParam(":NOMBRE", $datos["NOMBRE"], PDO::PARAM_STR);
		$stmt->bindParam(":APELLIDOS", $datos["APELLIDOS"], PDO::PARAM_STR);
		$stmt->bindParam(":EDAD", $datos["EDAD"], PDO::PARAM_STR);
		$stmt->bindParam(":FECHA_NACIMIENTO", $datos["FECHA_NACIMIENTO"], PDO::PARAM_STR);
		$stmt->bindParam(":ENCARGADO", $datos["ENCARGADO"], PDO::PARAM_STR);
		$stmt->bindParam(":TELEFONO", $datos["TELEFONO"], PDO::PARAM_STR);
		$stmt->bindParam(":CODIGO_ESTADO_CIVIL", $datos["CODIGO_ESTADO_CIVIL"], PDO::PARAM_STR);
		$stmt->bindParam(":CODIGO_CONDICION", $datos["CODIGO_CONDICION"], PDO::PARAM_STR);
		$stmt->bindParam(":CODIGO_CASA", $datos["CODIGO_CASA"], PDO::PARAM_STR);
		$stmt->bindParam(":FECHA_INGRESO", $datos["FECHA_INGRESO"], PDO::PARAM_STR);
		
		if($stmt->execute()){

			return "ok";	

		}else{

			return "error";
		
		}

		$stmt->close();
		
		$stmt = null;
     }

	 static public function mdlShowPatients($tabla,$item,$valor){
		 if ($item!=null) {
			 $data=Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item=:$item");
			 $data->bindParam(":".$item,$valor,PDO::PARAM_STR);
			 $data->execute();
			 return $data->fetch();

		 }
		 else{
			 $data=Conexion::conectar()->prepare("SELECT CODIGO_PACIENTE,NOMBRE,APELLIDOS,EDAD,ENCARGADO,TELEFONO FROM $tabla ");
			 $data->execute();
			return $data->fetchAll();
		 }
		 $data->close();
		 $data=null;
	 }
	 static public function mdlDeletePatient($tabla,$data){
		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE CODIGO_PACIENTE = :CODIGO_PACIENTE");

		$stmt -> bindParam(":CODIGO_PACIENTE", $data, PDO::PARAM_INT);

		if($stmt -> execute()){

			return "ok";
		
		}else{

			return "error";	

		}

		$stmt -> close();

		$stmt = null;

	 }
 }