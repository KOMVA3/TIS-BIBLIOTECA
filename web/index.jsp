<!DOCTYPE html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
  <title>Biblioteca FIIS</title>

  <link rel="stylesheet" type="text/css" href="css/bulma-0.8.0/css/bulma.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>


  <style>
        body, html {
          height: 70%;
          margin: 0;
          font: 400 15px/1.8 "Lato", sans-serif;
          
        }
        
        .bgimg-1, .bgimg-2, .bgimg-3 {
          position: relative;
          opacity: 0.75;
          background-position: center; 
          background-repeat: no-repeat;
          background-size: cover;
        
        }
        .bgimg-1 {
          background-image: url("img/prueba.png");
          height: 75%;
         
        }
        
        .caption {
          position: absolute;
          left: 0;
          top: 50%;
          width: 100%;
          text-align: center;
          color: #000;
          border: none;
        }
        
        .caption span.border {
          background-color: #000000;
          color: #ffffff;
          padding: 18px;
          font-size: 25px;
          letter-spacing: 10px;
          border: none;
        }

        .caption span{
            color: :#000;
        }
        
        h3 {
          letter-spacing: 5px;
          text-transform: uppercase;
          font: 20px "Lato", sans-serif;
          color: #111;
        }

        /*  **********   */

        .rowa {
        display: flex;
        flex-wrap: wrap;
        padding: 0 4px;
        }

        /* Create four equal columns that sits next to each other */
        .columna {
        flex: 25%;
        max-width: 50%;
        padding: 0 4px;
        }

        .columna img {
        margin-top: 8px;
        vertical-align: middle;
        width: 100%;
        }

        /* Responsive layout - makes a two column-layout instead of four columns */
        @media screen and (max-width: 800px) {
        .columna {
            flex: 50%;
            max-width: 50%;
        }
        }

        /* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
        @media screen and (max-width: 600px) {
        .columna {
            flex: 100%;
            max-width: 100%;
        }
    }

  </style>

    <script type="text/javascript">
        function toggleSidebar(){
        document.getElementById("sidebar").classList.toggle('active');
        }
    </script>

</head>

<html>

<body>
    <div>
        <nav class="navbar is-warning is-fixed-top " role="navigation" aria-label="main navigation "> 
            <div class="container">
                <div class="navbar-brand">
                    <a class="navbar-item">
                        <img src="img/logo_biblioteca.png" height="28">
                    </a>
                    <span class="navbar-burger burger" data-target="navbarMenuHeroA">
                    <span></span>
                    <span></span>
                    <span></span>
                    </span>
                </div>
                <div id="navbarMenuHeroA" class="navbar-menu">
                    <div class="navbar-end">
                    <!--a class="navbar-item is-active"></a-->
                    <a class="navbar-item" href="https://www.orce.uni.edu.pe/">
                        ORCE
                    </a>
                    <a class="navbar-item" href="https://www.academico.uni.edu.pe/">
                        Intranet UNI
                    </a>
                    <a class="navbar-item" href="https://bulma.io/2017/11/01/fixed-navbar/">
                        FAQ                            
                    </a>
                    <span class="navbar-item">
                        <a class="button is-info is-inverted" href="login.jsp">
                            <span>LOGU�ATE</span>
                        </a>
                    </span>
                    <span class="navbar-item">
                        <a class="button is-info is-inverted" href="login.jsp">
                            <span>CREA UNA CUENTA</span>
                        </a>
                    </span>
                </div>
            </div>
            </div>
        </nav>
   </div>
   
    <div class="bgimg-1">
        <div class="caption">
            <span class="border">BIBLIOTECA FIIS A TU SERVICIO</span>
        </div>
    </div>

    <div class="container" style="margin-top:30px">
    
    <div class="columns" style="margin-top:30px">
        <!--div class="column is-1">
        </div-->    
            
        <div class="column is-3 " style="margin-left:2%; border-radius: 10px ; border: solid orange; background-color:whitesmoke;">
            <!--div class="col-sm-3"-->
                <h2>�Por qu� existimos?</h2>
                
                <p style="text-align: justify">Al hacer uso de los servicios de la biblioteca en nuestra facultad (FIIS-UNI), 
                    encontramos diversas dificultades.<br><br>
                    Se observa que se usan papeles de una manera ineficiente, generando gastos innecesarios de recursos.  <br><br>
                    Adem�s, el servicio de pr�stamo, al ser atendido por alguna persona, genera demoras que podr�an evitarse. <br><br>
                </p>
                
                <h3> <br> </h3>
                <h3>Some Links</h3>
                    <ul class="nav nav-pills flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="http://www.bibliotecacentral.uni.edu.pe/">Biblioteca Central</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://www.uni.edu.pe/">UNI Oficial</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://www.facebook.com/UNIoficial.pe/">Facebook UNI</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://twitter.com/UNIoficial">Twitter UNI</a>
                    </li>
                    </ul>
                <hr class="d-sm-none">
            <!--/div-->
        </div>  
        
        <!--div class="column is-1">
        </div--> 

        <div class="column is-6" style="margin-left:2%; border-right: inset orange">
            <h2>TITLE HEADING</h2>
            <h5>Title description, Nov 13, 2019</h5>
            <p>Some text..</p>
            <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
            <br>
            
            <h2>IM�GENES</h2>
            <div class="rowa">
                <div class="columna">
                    <img src="img/fiis_1.jpg">
                    <img src="img/Biblioteca_FIIS.jpg">
                </div>
                <div class="columna">
                    
                    <img src="img/logo_biblioteca.png">
                    <img src="img/FIIS_LOGO1.png">
                    <img src="img/prueba.png">
                </div>
            </div>
        </div>

        <div class="column is-2 text-center" style="margin-left:2%">
            <img src="img/logo.png" > <br><br>
            <h2>SERVICIOS</h2>
            <p>Consulta en sala</p>
            <a href="user_view_biblio.jsp"><p>Pr�stamo a domicilio</p></a>
            <p>Acceso a cat�logo</p>
            <p>B�squeda Online</p>
            <p>Acceso a biblioteca virtual</p><br><br>
            <h2><b>�Accede con tu cuenta!</b></h2>
        </div>
                
    </div> 
    
        
        
        
        
        
</div> 
    
    <div><br><br></div> 

    <div class="columns text-center" style="background-color: skyblue">
    
        <div class="column text-center" style="margin-left:2%"">
            <!-- Facebook>-->
            <iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FUNIoficial.pe%2Fposts%2F1182647355278144&width=500" width="500" height="662" style="border:none;overflow:hidden; background-color: white" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
        </div>
        <div class="column text-center" >
            <!-- Twitter>-->
            <blockquote class="twitter-tweet" data-lang="es"><p lang="es" dir="ltr">El viernes 08 de noviembre se llev� a cabo la segunda edici�n del &quot;TEDxUNI 2019, Ideas que transforman&quot; en el Gran Teatro de la <a href="https://twitter.com/UNIoficial?ref_src=twsrc%5Etfw">@UNIoficial</a>. Este es un evento sin fines de lucro para generar conciencia en la sociedad con presentaciones de ponentes invitados y n�meros art�sticos. <a href="https://t.co/MNnk5KmEQ0">pic.twitter.com/MNnk5KmEQ0</a></p>&mdash; UNI (@UNIoficial) <a href="https://twitter.com/UNIoficial/status/1194383769349894145?ref_src=twsrc%5Etfw">12 de noviembre de 2019</a></blockquote>
            <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
        </div>
    
    </div>  
    <footer class="jumbotron text-center" style="margin-bottom:0">
            <p>
                <strong>PROYECTO CON FINES EDUCATIVOS</strong> <br>Cr�ditos del material a quien corresponda.
                <a href="http://opensource.org/licenses/mit-license.php">MIT</a>. The website content
                is licensed <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/">CC BY NC SA 4.0</a>.
            </p>
    </footer> 


</body>
</html>