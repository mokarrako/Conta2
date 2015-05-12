<%@page import="Contabilidad.Constantes.Constantes"%>
      <ul class="nav nav-tabs">
    		<li><a href="index.jsp">Contabilidad</a></li>
    		<li><a href="indexgestion.jsp">Gestion</a></li>
    		<li class="active"><a class="oscurodos" href="indexnominas.jsp">Nominas</a></li>
    	</ul>
      <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                         <!--<li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div> 
                            
                        </li>-->
                       
	                    <li>
		                            <a href="#"><i class="glyphicon glyphicon-folder-close"></i> Ficheros<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
			                        		<a href="<%= Constantes.CONTROLLER_ACTEMPRESA %>">Bases de cotización</a>
			                            </li>
			                            <li>
			                        		<a href="EditarEmpresa.jsp">Tipos de cotización</a>
			                            </li>
			                            <li>
			                        		<a href="<%= Constantes.CONTROLLER_CUENTA %>">Ocupaciones</a>
			                            </li>
			                            <li>
			                        		<a href="<%= Constantes.JSP_CONCEPTOSCONT %>">Tipos de contrato</a>
			                            </li>
			                            <li>
			                        		<a href="flot.html">Bonificaciones</a>
			                            </li>
			                            <li>
			                        		<a href="flot.html">Definición de convenios</a>
			                            </li>
			                             <li>
			                        		<a href="flot.html">Parámetros</a>
			                            </li>
			                             <li>
			                        		<a href="flot.html">Código de actividades</a>
			                            </li>
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-list-alt"></i> Empresa<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
		                            		<a href="flot.html">Activar empresa</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Altas y modificaciones de empresa</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Conceptos retribuidos de la empresa en uso</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Definición de pagas de la empresa en uso</a>
		                                </li>		                                
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-th-list"></i> Trabajador<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
		                            		<a href="flot.html">Altas y modificación de fichas de la empresa en uso</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Listados</a>
		                                </li>		                                
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-star"></i> Salarios<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
		                            		<a href="flot.html">Incidencias</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Confección de salarios</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Visualización de nóminas</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Impresión de nóminas</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Listado de salarios 1</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Listado de salarios 2</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Listado de incidencias</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Impresión de pagas extras</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Carta de finiquito</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Coste de empresa</a>
		                                </li>     
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-font"></i> Utilidades<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
		                            		<a href="flot.html">Borrado de nóminas/incidencias</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Emisión de talones</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Ordenación de ficheros</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Copia de seguridad</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Visualizar impresos</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Calculadora</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Cambios</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Visualizar el Histórico</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Pasar datos a Excel</a>
		                                </li>     
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-wrench"></i> Impresos S.Social<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
			                           		<a href="flot.html">Sistema R.E.D.</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Complementaria por vacaciones </a>
			                            </li>			                            
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-wrench"></i> Impresos Hacienda<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
			                           		<a href="flot.html">Modelo 110</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Modelo 190</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Carátula 190</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Relación nominal 190</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Modelo T10</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Preparación modelo foral</a>
			                            </li>			                            
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                  	</ul>
	                    <!--  Fin menu nomminas -->
                    	
                    
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>


<div id="page-wrapper">
          <div class="container-fluid">
              <div class="row">
                  <div class="col-lg-12">