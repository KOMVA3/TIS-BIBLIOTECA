<%@page import="DAO.LibroDAO"%>
<%@page import="model.Libro"%>
<!DOCTYPE html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
  <title>User View</title>
  <link rel="stylesheet" type="text/css" href="css/bulma-0.8.0/css/bulma.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">

    <style type="text/css">
   
        #sidebar{
        position: fixed;
        width: 200px;
        height: 100%;
        background: #151719;
        left: -200px;
        transition: all 500ms linear;
        }
        #sidebar.active{
        left:0px;
        }
        #sidebar ul li{
        color: rgba(230,230,230,0.9);
        list-style: none;
        padding: 15px 10px;
        border-bottom: 1px solid rgba(100,100,100,0.3);
        }
        #sidebar .toggle-btn{
        position: absolute;
        left: 230px;
        top: 20px;
        }
        #sidebar .toggle-btn span{
        display: block;
        width: 30px;
        height: 5px;
        background: #151719;
        margin: 5px 0px;

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
        <section class="hero is-warning is-medium">
                <!-- Hero head: will stick at the top -->
                <div class="hero-head">
                    <nav class="navbar">
                        <div class="container">
                            <div class="navbar-brand">
                                <a class="navbar-item">
                                <img src="img/logo_biblioteca.png" alt="Logo">
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
                                
                                
                                <span class="navbar-item">
                                    <form action="LibroController" method="post">
                                                                                        
                                                                                        
                                                                                        <div class="form-group">
                                                                                            
                                                                                            <div class="col-sm-3">
                                                                                            <input type="text" name="palabra" value="" placeholder=""/>
                                                                                            
                                                                                            
                                                                                            </div>
                                                                                          
                                                                                            <div class="col-sm-12">
                                                                                            <button name="accion" class="btn btn-success" value="buscar" type="submit">
                                                                                            <i class="fa fa-save"></i>
                                                                                            Buscar
                                                                                            </button>    
                                                                                            
                                                                                            </div>
                                                                                            
                                                                                        
                                                                                        
                                                                                        </div> 
                                                                                        
                                                                     
                                                                                        
                                                                                            <div>
                                                                                                <%=(request.getAttribute("mensaje")!=null?request.getAttribute("mensaje"):"")%>
                                                                                                
                                                                                                </div>
                                                                                   
                                                                                        </form>    
										
                                    
                                </span>
                            </div>
                        </div>
                            
                            
                        </div>
                    </nav>
                </div>
        </section>  


    <div class="content">
        <div class="columns">
            <div class="column is-1">
                <div id="sidebar">
                    <div class="toggle-btn" onclick="toggleSidebar()">
                        <a>
                            <span></span>
                            <span></span>
                            <span></span>
                        </a>
                    </div>
                    <ul>
                        <li>Mi Cuenta</li>
                        <li>Material Bibliográfico</li>
                        <li>Historial</li>
                        <li>Ayuda</li>
                    </ul>
                </div>
            </div>
            
            
        </div>
    </div>
        
        <div>   									<table id="dynamic-table" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>ID</th>
														<th>Titulo</th>
														<th class="hidden-480">Autor</th>

                                                            							<th class="hidden-480">Tema</th>
                                                                                                                <th class="hidden-480">Ejemplares</th>
    
														<th></th>
													</tr>
												</thead>

												<tbody>
                                                                                                     <% for(Libro l:LibroDAO.listar(request.getParameter("palabra"))) { %>
													<tr>

														<td>
                                                                                                                    <%= l.getId()%>
														</td>
														<td class="hidden-480"><%= l.getTitulo()%></td>
														<td><%= l.getAutor()%></td>
                                                                                                                <td><%= l.getTema()%></td>
														<td><%= l.getEjemplares()%></td>
                                                                                                                

														
													</tr>
                                                                                                        
                                                                                                        <%}%>
													<div>
                                                                                                
                                                                                                
                                                                                                </div>
													</tbody>
												</table>
											</div>
        
        
        
        
    </div>        
        
        
        
        
        
        

    <footer class="jumbotron text-center" style="margin-bottom:0">
            <p>
                <strong>PROYECTO CON FINES EDUCATIVOS</strong> <br>Créditos del material a quien corresponda.
                <a href="http://opensource.org/licenses/mit-license.php">MIT</a>. The website content
                is licensed <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/">CC BY NC SA 4.0</a>.
            </p>
    </footer>

</body>
</html>