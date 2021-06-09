<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ENDAELALTO</title>
   <link rel="stylesheet" href="views/css/style.css">
   <link rel="shortcut icon" href="views/img/ico.ico" type="image/x-icon">
   <script src="views/js/sweetalert2.all.js"></script>
</head>
<body>
   <?php
   if (isset($_SESSION["sessionstart"]) && $_SESSION["sessionstart"]=="ok") {
       include "modules/header.php" ;
       echo "<div class='principal'>";
       include "modules/menu.php";
       
       if(isset($_GET["ruta"])){

        if($_GET["ruta"] == "inicio" ||
           $_GET["ruta"] == "insertPatient" ||
           $_GET["ruta"] == "showPatients" |
           $_GET["ruta"] == "createAppointment" ||
           $_GET["ruta"] == "showAppointment" ||
           $_GET["ruta"] == "logout"
           ){
  
          include "modules/".$_GET["ruta"].".php";
  
        }else{
          include "modules/page.php";
  
        }
      }else{
        
        include "modules/inicio.php";
        
        
      
      }
    }else{
      include "modules/page.php";
    }
   ?>
   <script src="views/js/users.js"></script>
</body>
</html>