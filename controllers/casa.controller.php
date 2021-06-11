<?php
class CasaController  
{
    static public function ctrCasaShow($item,$valor){
        $tabla="casa";
        $res= CasaModel::mdlShowCasa($tabla,$item,$valor);
        return $res;
    }
}
