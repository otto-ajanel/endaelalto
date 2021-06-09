<div class="header-page">
    <img src="views/img/logo.jpg" alt="logo">
    <div class="menu">
        <ul>
            <li><a href="#">ENDA</a></li>
            <li><a href="#contact">contacto</a></li>
            <li><a href="#login">Login</a></li>
        </ul>
    </div>
</div>
<div class="container" id="container">
    <div class="home" id="home">
       <h3>
           ENDA es un Programa Preventivo de la Marginalidad Social,
           de carácter solidario, <br> Aconfesional, apartidista político y 
           sin ánimo de lucro.
       </h3>
       <div class="imgs">
           <img src="views/img/image1.jpg" alt="">
           <img src="views/img/image2.jpg" alt="">
           <img src="views/img/image3.jpg" alt="">
           <img src="views/img/image4.jpg" alt="">
         
       </div>
       <div class="description">
           <div class="item">
               <h2 class="module-border">Misión</h2>
               <p>
                Reducimos la vulnerabilidad social a través <br>
                de proyectos de asistencia, educación, <br>
                prevención e incidencia política.
               </p>
           </div>
           <div class="item">
               <h2 class="module-border">Visión</h2>
               <p>
                Un mundo de derechos humanos que <br>
               promueve la inclusión social.
               </p>
           </div>
           <div class="item">
               <h2 class="module-border">Objetivos</h2>
               <p>
               Prevenir la Marginalidad social de niños, <br>
                adolescentes y jóvenes. <br><br>
                Mejorar la dinámicas sociofamiliares, <br>
                educativa. <br><br>
                Favorecer la integración comunitaria social.
               
               </p>
               
           </div>
       </div>
    </div>

    <div class="contact" id="contact">
        <form action="views/modules/contacto.php" method="post">
        <h3>CONTACTO</h3>
  <div class="elem-group">
    <label for="name">Nombre</label>
    <input type="text" id="name" name="visitor_name" placeholder="Oscar Ventura" pattern=[A-Z\sa-z]{3,20} required>
  </div>
  <div class="elem-group">
    <label for="email">Email</label>
    <input type="email" id="email" name="visitor_email" placeholder="rocsodiasystem@gmail.com" required>
  </div>
  <div class="elem-group">
    <label for="message">Mesaje</label>
    <textarea id="message" name="visitor_message" placeholder="Escribe su mensaje Aqui..." required></textarea>
  </div>
  <button type="submit">Enviar</button>
</form>
    </div>
</div>


    <div class="login" id="login">
        <h1>INICIAR SESION</h1>
        
        <form  method="post">
            <div class="login-item-group">
                <label for="user">USUARIO</label>
                <input type="text"id="user" name="user" placeholder="example rocsodiasystem">
            </div>
            <div class="login-item-group">
                <label for="password" id="password" name="password">CONTRASEÑA</label>
                <input type="password" id="password" name="password">

            </div>
            <button type="submit">Ingresar</button>
        <?php
        $login=new ControllerUsers();
        $login-> ctrLoginuser();
        ?>
        </form>
        <div class="imgs">
            <img src="views/img/image5.jpg" alt="">
            <img src="views/img/image6.jpg" alt="">
            <img src="views/img/image7.jpg" alt="">
            <img src="views/img/image8.jpg" alt="">

        </div>
        <div class="direction">
            <div>
                <p>Casa MINKA</p>
                <p>Calle Juan Matienzo No 650, zona Villa Tejada  <br>
                Rectangular. Fondo(591-2-22811645)
                </p>
            </div>
            <div>
                <p>Casa FRATERNIDAD <br>
                Calle Villa Dolores
                </p>
            </div>
        </div>

    </div>
</div>

<div class="footer">
    <p>Created by rocsodiaSystem</p>
</div>
