<%@page import="Contabilidad.Constantes.Constantes"%>
      <ul class="nav nav-tabs">
    		<li class="active"><a href="index.jsp" class="oscurodos">Contabilidad</a></li>
    		<li><a href="indexgestion.jsp">Gestion</a></li>
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
			                        		<a href=" <%= Constantes.CONTROLLER_ACTEMPRESA %>">Actibar empresa</a>
			                            </li>
			                            <li>
			                        		<a href="EditarEmpresa.jsp">Editar empresa activa</a>
			                            </li>
			                            <li>
			                        		<a href="DefPlanConta.jsp<%//= Constantes.CONTROLLER_CUENTA %>">Definición plan contable</a>
			                            </li>
			                            <li>
			                        		<a href="<%= Constantes.JSP_CONCEPTOSCONT %>">Conceptos contables</a>
			                            </li>
			                            <li>
			                        		<a href="ParamAsienAuto.jsp">Parametros de asientos automaticos</a>
			                            </li>
			                            <li>
			                        		<a href="Inven.html">Inventarios<span class="fa arrow"></span></a>
			                        		<ul class="nav nav-third-level">
					                            <li>
				                            		<a href="inventMantenimiento.jsp">Mantenimiento de inventario</a>
				                                </li>
				                                <li>
				                            		<a href="inventLista.jsp">Listado de inventario</a>
				                                </li>
				                                <li>
				                            		<a href="inventCopiar.jsp">Copiar inventario de otra empresa</a>
				                                </li>
				                                <li>
				                            		<a href="inventActualizar.jsp">Actualizar inventario para asiento de amortización</a>
				                                </li>
				                            </ul>
			                            </li>
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-list"></i> Diario<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
		                            		<a href="diarioAsientos.jsp">Asientos</a>
		                                </li>
		                                <li>
		                            		<a href="diarioAsientosCoPa.jsp">Asientos cobro/pago</a>
		                                </li>
		                                <li>
		                            		<a href="diarioListaNumAsiento.jsp">Listar diario por numero de asiento</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Listar diario por tipo de asiento</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Visualizacion de asientos</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Listar cuentas segun diario</a>
		                                </li>
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-th-list"></i> Mayor<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
		                            		<a href="flot.html">Listado de mayor</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Saldos por meses</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Balance de sumas y saldos</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Balance de situacion</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Cuentas de perdidas y ganancias</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Movimientos mensuales</a>
		                                </li>
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-star"></i> Tratamientos<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
		                            		<a href="flot.html">Previsiones de cobros y pagos</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Existencias</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Facturas emitidas</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Facturas recividas</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Liquidacion de IVA</a>
		                                </li>     
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-font"></i> Actividades<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
		                            		<a href="flot.html">Recalcular saldos</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Regenerar numero de asientos</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Comprobar cuadre del diario</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Cambiar digitos de cuentas</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Organizar numero de factura por fechas</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Actividades de cierre</a>
		                                </li>
		                                <li>
		                            		<a href="flot.html">Nueva empresa</a>
		                                </li>      
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="glyphicon glyphicon-wrench"></i> Herramientas<span class="fa arrow"></span></a>
		                          	<ul class="nav nav-second-level">
			                            <li>
			                           		<a href="flot.html">Ordenacion de ficheros por empresa</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Comprobar digitos de contabilidad</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Borrar contabilidad</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Mantenimientos<span class="fa arrow"></span></a>
			                        		<ul class="nav nav-third-level">
					                            <li>
				                            		<a href="flot.html">Mantenimiento de parámetros para infórme balance de situación</a>
				                                </li>
				                                <li>
				                            		<a href="flot.html">Mantenimiento de parámetros para informe de pérdidas y ganacias</a>
				                                </li>
				                            </ul>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Configuracion de impresora</a>
			                            </li>
			                            <li>
			                           		<a href="#">Calculadora</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Copia de seguridad</a>
			                            </li>
			                            <li>
			                           		<a href="flot.html">Modificar tablas y otras herramientas</a>
			                            </li>
			                            <!-- /.nav-second-level -->
			                         </ul>
		                        </li>
		                  	</ul>	                        
	                    
	                    <!-- Fin menu Contabilidad -->
	                   
                    	
                   
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>


<div id="page-wrapper">
          <div class="container-fluid">
              <div class="row">
                  <div class="col-lg-12">