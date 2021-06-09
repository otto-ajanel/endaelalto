<?php
class EstadoCivilController{
    static public function ctrEstadoCivilshow($item,$valor)
    {
        $tabla = "estado_civil";

		$respuesta = EstadoCivilModel::mdlShowEstadoCivil($tabla, $item, $valor);

		return $respuesta;
    }
}