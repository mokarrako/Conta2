<%@page import="Contabilidad.Constantes.Constantes"%>
      <ul class="nav nav-tabs">
    		<li><a href="index.jsp">Contabilidad</a></li>
    		<li class="active"><a href="indexgestion.jsp" class="oscurodos">Gestion</a></li>
    		<li><a href="indexnominas.jsp">Nominas</a></li>
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
			                        		<a href="<%= Constantes.CONTROLLER_ACTEMPRESA %>">Clientes</a>
			                            </li>
			                            <li>
			                        		<a href="EditarEmpresa.jsp">Proveedores</a>
			                            </li>
			                            <li>
			                        		<a href="<%= Constantes.CONTROLLER_CUENTA %>">Agentes</a>
			                            </li>
			                            <li>
			                        		<a href="<%= Constantes.JSP_CONCEPTOSCONT %>">Transportistas</a>
			                            </li>
			                            <li>
			                        		<a href="flot.html">Articulos y operaciones</a>
			                            </li>
			                            <li>
			                        		<a href="flot.html">Articulos varios proveedores</a>
			                            </li>
			                            <li>
			                        		<a href="flot.html">Tablas generales<span class="fa arrow"></span></a>
			                        		<ul class="nav nav-third-level">
					                            <li>
					                        		<a href="<%= Constantes.CONTROLLER_ACTEMPRESA %>">Formas de pago</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Bancos</a>
					                            </li>
					                            <li>
					                        		<a href="<%= Constantes.CONTROLLER_CUENTA %>">Provincias</a>
					                            </li>
					                            <li>
					                        		<a href="<%= Constantes.JSP_CONCEPTOSCONT %>">Parámetros</a>
					                            </li>
					                            <li>
					                        		<a href="<%= Constantes.CONTROLLER_CUENTA %>">Direcciones de entrega</a>
					                            </li>
					                            <li>
					                        		<a href="<%= Constantes.JSP_CONCEPTOSCONT %>">Datos de la empresa</a>
					                            </li>
					                        </ul>
			                            </li>
			                            <li>
			                        		<a href="flot.html">Informes<span class="fa arrow"></span></a>
			                        		<ul class="nav nav-third-level">
					                            <li>
					                        		<a href="<%= Constantes.CONTROLLER_ACTEMPRESA %>">Clientes</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Proveedores</a>
					                            </li>
					                            <li>
					                        		<a href="<%= Constantes.CONTROLLER_CUENTA %>">Agentes</a>
					                            </li>
					                            <li>
					                        		<a href="<%= Constantes.JSP_CONCEPTOSCONT %>">Transportistas</a>
					                            </li>
					                            <li>
					                        		<a href="<%= Constantes.CONTROLLER_CUENTA %>">Articulos</a>
					                            </li>
					                            <li>
					                        		<a href="<%= Constantes.JSP_CONCEPTOSCONT %>">Bancos</a>
					                            </li>
					                            <li>
					                        		<a href="<%= Constantes.JSP_CONCEPTOSCONT %>">Etiquetas clientes<span class="fa arrow"></span></a>
					                        		<ul class="nav nav-fourth-level">
							                            <li>
							                        		<a href="<%= Constantes.CONTROLLER_ACTEMPRESA %>">Por nº clientes</a>
							                            </li>
							                            <li>
							                        		<a href="EditarEmpresa.jsp">Por selección clientes</a>
							                            </li>
							                        </ul>
					                            </li>
					                            <li>
					                        		<a href="<%= Constantes.JSP_CONCEPTOSCONT %>">Etiquetas proveedor<span class="fa arrow"></span></a>
					                        		<ul class="nav nav-fourth-level">
							                            <li>
							                        		<a href="<%= Constantes.CONTROLLER_ACTEMPRESA %>">Por nº proveedor</a>
							                            </li>
							                            <li>
							                        		<a href="EditarEmpresa.jsp">Por selección</a>
							                            </li>
							                        </ul>
					                            </li>
					                        </ul>
			                            </li>
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-list-alt"></i> Presupuestos/Pedidos/Órdenes/Albaranes<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
		                            		<a href="flot.html">Presupuestos/Ofertas</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Cuadro de presupuestos/Ofertas</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Pedidos</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Órdenes</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Albaranes</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Informes<span class="fa arrow"></span></a>
		                            		<ul class="nav nav-third-level">
					                            <li>
					                        		<a href="<%= Constantes.CONTROLLER_ACTEMPRESA %>">Presupuestos</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Pedidos</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Órdenes</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Albaranes</a>
					                            </li>
					                        </ul>
		                                </li>
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-th-list"></i> Facturas clientes<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
		                          		<li>
		                            		<a href="flot.html">Facturas</a>
		                                </li>
			                            <li>
		                            		<a href="flot.html">Crear factura desde presupuesto</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Cobro de facturas</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Abonos</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Recibos y cobros recibos<span class="fa arrow"></span></a>
		                            		<ul class="nav nav-third-level">
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Modificación de recibos</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Generación de remesas</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Pendientes de cobrar y marcar situación</a>
					                            </li>
					                        </ul>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Anotaciones de clientes<span class="fa arrow"></span></a>
		                            		<ul class="nav nav-third-level">
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Anotaciones de clientes</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Listado de anotaciones</a>
					                            </li>
					                        </ul>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Informes<span class="fa arrow"></span></a>
		                            		<ul class="nav nav-third-level">
					                            <li>
					                        		<a href="<%= Constantes.CONTROLLER_ACTEMPRESA %>">Facturas</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Abonos</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Recibos</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Vencimientos</a>
					                            </li>
					                        </ul>
		                                </li>
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-star"></i> Pedidos/Facturas proveedor<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
		                            		<a href="flot.html">Pedidos a proveedor</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Entradas</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Facturas a proveedor</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Vencimientos proveedor<span class="fa arrow"></span></a>
		                            		<ul class="nav nav-third-level">
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Modificacion de vencimientos</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Situación de vencimientos y listar pendientes de pago</a>
					                            </li>
					                        </ul>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Anotaciones de proveedores<span class="fa arrow"></span></a>
		                            		<ul class="nav nav-third-level">
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Anotaciones de proveedores</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Listado de anotaciones</a>
					                            </li>
					                        </ul>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Informes<span class="fa arrow"></span></a>
		                            		<ul class="nav nav-third-level">
					                            <li>
					                        		<a href="EditarEmpresa.jsp">De pedidos a proveedores</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">De facturas a proveedor</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">De pagos de vencimientos</a>
					                            </li>
					                        </ul>
		                                </li>          
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-font"></i> Fabricación<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
		                            		<a href="flot.html">Ficheros<span class="fa arrow"></span></a>
		                            		<ul class="nav nav-third-level">
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Operarios</a>
					                            </li>
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Máquinas</a>
					                            </li>
					                        </ul>
		                            		
		                                </li>
		                                <li>
		                            		<a href="flot.html">Partes de personal</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Pedidos en curso de fabricación</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Desviaciones y ratios en órdenes</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Informes de ficheros<span class="fa arrow"></span></a>
		                            		<ul class="nav nav-third-level">
					                            <li>
					                        		<a href="EditarEmpresa.jsp">Operarios</a>
					                            </li>
					                        </ul>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Informes de partes de personal</a>
		                                </li>		                                   
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-wrench"></i> Utilidades<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
			                           		<a href="flot.html">Ordenacion de ficheros y cópias de seguridad</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Pasar facturas emitidas a contabilidad</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Pasar facturas recibidas a contabilidad</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Herramientas de cambios de datos, etc. (entrada restringida)</a>
			                            </li>			                            
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-wrench"></i> Consultas<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
			                           		<a href="flot.html">Consultas de clientes</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Consultas de proveedores</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Consultas de articulos</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Calculadora de Windows</a>
			                            </li>			                            
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                  	</ul>	                        
	                   
	                    <!-- Fin menu gestion -->
	                    
                    	
                    
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>


<div id="page-wrapper">
          <div class="container-fluid">
              <div class="row">
                  <div class="col-lg-12">