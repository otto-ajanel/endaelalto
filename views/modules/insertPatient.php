<div class="window-container">
<h1>                Registro del paciente</h1>
<form name="formulario1" id="formulario1" method="post" class="form-border">
	<div class="styleForm">
	<section>
	<p>Nombre</p>
	<input type="text" name="nombre" id="nombre" required>

	<p>Apellido</p>
	<input type="text" name="apellido" id="dirreccion" required>

	<p>Edad</p>
	<input type="text" name="edad" id="email" required>
	<select  id="estadoCivil" name="estadoCivil" required>
                  
                  <option value="">Selecionar Estado Civil </option>

                  <?php

                  $item = null;
                  $valor = null;

                  $estadosCiviles = EstadoCivilController::ctrEstadoCivilshow($item, $valor);

                  foreach ($estadosCiviles as $key => $value) {
					  
                    
                    echo '<option value="'.$value["CODIGO_ESTADO_CIVIL"].'">'.$value["ESTADO_CIVIL"].'</option>';
                  }

                  ?>
  
    </select>
	<select  id="casa" name="casa" required>
                  
                  <option value="">Seleccione la casa</option>

                  <?php

                  $item = null;
                  $valor = null;

                  $casa = CasaController::ctrCasaShow($item, $valor);

                  foreach ($casa as $key => $value) {
					  
                    
                    echo '<option value="'.$value["CODIGO_CASA"].'">'.$value["NOMBRE_CASA"].'</option>';
                  }

                  ?>
  
    </select>
	<select  id="condicion" name="condicion" required>
                  
                  <option value="">Seleciona su Condicion</option>

                  <?php

                  $item = null;
                  $valor = null;

                  $condiciones = CondicionController::ctrShowCondicion($item, $valor);

                  foreach ($condiciones as $key => $value) {
                    
                    echo '<option value="'.$value["CODIGO_CONDICION"].'">'.$value["CONDICION"].'</option>';
                  }

                  ?>
  
     </select>
	</section>
	<section>
	<p>Fecha nacimiento</p>
	<input type="date" name="fechaNacimiento" id="pass" required>

	<p>Encargado</p>
	<input type="text" name="encargado" id="fecha1" required>

	<p>Telefono</p>
	<input type="text" name="telefono" id = "fecha2" required>


	<p>Fecha ingreso</p>
	<input type="date" name="fechaIngreso" id ="postal" required>
	</section>
	</div>

	<P> llenar los datos correctamente </P>

	<button type="submit" value="Comprobar">Registrar</button>
    <?php
$register=new ControllerPatients();
$register->ctrRegisterPatient();
?>
</form>

</div>