<?php
class CondicionController{
    static public function ctrShowCondicion($item,$valor){
        $tabla="condicion";
        $res=CondicionModel::mdlShowCondicion($tabla,$item,$valor);
        return $res;
    }
}