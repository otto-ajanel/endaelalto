<?php
class ControllerUsers{
    static public function ctrLoginuser(){
        if (isset($_POST["user"])) {
            
            if (preg_match('/^[a-zA-Z0-9]+$/', $_POST["user"]) &&
            preg_match('/^[a-zA-Z0-9]+$/', $_POST["password"])) {
                $tabla="usuario";
                $item = "NOMBRE_USUARIO";
				$valor = $_POST["user"];
                $respuesta = ModelUsers::MdlShowUsers($tabla, $item, $valor);
                if ($respuesta) {
                    # code...
                    if ($respuesta["NOMBRE_USUARIO"]== $_POST["user"] && $respuesta["PASSWORD"]==$_POST["password"]) {
                        
                        
                        $_SESSION["sessionstart"]="ok";
                        $_SESSION["user"]=$respuesta["NOMBRE_USUARIO"];
                        
                        if ($_SESSION["sessionstart"]=="ok") {
                            # code...
                            echo '<script>
                            window.location="inicio"
                            </script>
                            ';
                            
                        }
                        
                    }else{
                        echo '<script>

					swal({

						type: "error",
						title: "¡El usuario o la contraseña es invalido",
						showConfirmButton: true,
						confirmButtonText: "Cerrar"

					}).then(function(result){

						if(result.value){
						
							window.location = "usuarios";

						}

					});
				

				</script>';
                    }
                }else{
                    echo '<script>

					swal({

						type: "error",
						title: "¡El usuario no existe!",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
                        confirmButtonColor:"#00a843",
					}).then(function(result){

						if(result.value){
						
							window.location = "page";

						}

					});
				

				</script>';
                }
                
            }
        }
    }
}