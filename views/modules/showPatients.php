<section class="section-table">
    <h1 class="h1-table">Tabla de Pacientes</h1>
    <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">   
            <thead>
                <tr>
                    <th>NOMBRE</th>
                    <th>APELLIDOS</th>
                    <th>EDAD</th>
                    <th>ENCARGADO</th>
                    <th>TELEFONO</th>
                    <th>Mas Opciones...</th>
                </tr>
            </thead>
        </table>
    </div>
    <div class="tbl-content">
    <table class="table-patient"cellpadding="0" cellspacing="0" border="0">

    <tbody>
            <?php
    $item=null;
    $valor=null;
    $res=ControllerPatients::ctrShowPatient($item,$valor);
    foreach ($res as $key => $value) {
        
        echo '<tr>
        <td>'.$value["NOMBRE"].'</td>
        <td>'.$value["APELLIDOS"].'</td>
        <td>'.$value["EDAD"].'</td>
        <td>'.$value["ENCARGADO"].'</td>
        <td>'.$value["TELEFONO"].'</td>
        <td>
        
        <div >
    <header>
		
        <button class="btnEditarPaciente" CODIGO_PACIENTE="'.$value["CODIGO_PACIENTE"].';">EDITAR</a>
        
        <button class=" btnEliminarPaciente" CODIGO_PACIENTE="'.$value["CODIGO_PACIENTE"].'">ELIMINAR</button>
        </div>  
        
        </td>
        </tr>
        ';
    }
    ?>
    
    </tbody>
    </table>        

</div>
</section>



<?php
    $deletePatient= new ControllerPatients();
    $deletePatient->ctrDeletePatient();
?>
