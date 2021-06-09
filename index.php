<?php
require_once "controllers/template.controller.php";
require_once "controllers/users.controller.php";
require_once "controllers/patients.controller.php";
require_once "controllers/estadoCivil.controller.php";
require_once "controllers/condicion.controller.php";

require_once "models/users.model.php";
require_once "models/patients.model.php";
require_once "models/estadoCivil.model.php";
require_once "models/condicion.model.php";
$template=new ControllerTemplate();
$template->ctrTemplate();
?>