<%@page import="Contabilidad.Constantes.Constantes"%>

 <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Contabilidad</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                    
                        <!--  buscador ----    comentada 
                        
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>   
                            <!-- /input-group -->
                            
                            
                        <!-- </li>-->
                        <!-- end buscador-->
                        
                        
                        <li >
                            <a  href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Contabilidad<span class="fa"></span></a>
                            <ul class="nav nav-second-level">
                                <li class="dropdown">
                                     <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="glyphicon glyphicon-folder-close"></i> Ficheros<span class="fa arrow"></span></a>
                                    <ol class="dropdown-menu" role="menu">
                                		<li>
                                    		<a href="<%= Constantes.CONTROLLER_ACTEMPRESA %>">Actibar empresa</a>
                                        </li>
                                        <li>
                                    		<a href="EditarEmpresa.jsp">Editar empresa activa</a>
                                        </li>
                                        <li>
                                    		<a href="<%= Constantes.CONTROLLER_CUENTA %>">Definicion plan contable</a>
                                        </li>
                                        <li>
                                    		<a href="<%= Constantes.JSP_CONCEPTOSCONT %>">Conceptos contables</a>
                                        </li>
                                        <li>
                                    		<a href="flot.html">Parametros de asientos automaticos</a>
                                        </li>
                                        <li>
                                    		<a href="flot.html">Inventarios</a>
                                        </li>
                                    </ol>
                                </li>
                                <li class="dropdown">
                                     <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="glyphicon glyphicon-list-alt"></i> Diario<span class="fa arrow"></span></a>
                                    <ol class="dropdown-menu" role="menu">
                                		<li>
                                    		<a href="flot.html">Asientos</a>
                                        </li>
                                        <li>
                                    		<a href="flot.html">Asientos cobro/pago</a>
                                        </li>
                                        <li>
                                    		<a href="flot.html">Listar diario por numero de asinto</a>
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
                                    </ol>
                                </li>
                                <li class="dropdown">
                                     <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="glyphicon glyphicon-th-list"></i> Mayor<span class="fa arrow"></span></a>
                                    <ol class="dropdown-menu" role="menu">
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
                                    </ol>
                                </li>
                                <li class="dropdown">
                                     <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="glyphicon glyphicon-star"></i> Tratamientos<span class="fa arrow"></span></a>
                                    <ol class="dropdown-menu" role="menu">
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
                                    </ol>
                                </li>
                                <li class="dropdown">
                                     <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="glyphicon glyphicon-font"></i> Actividades<span class="fa arrow"></span></a>
                                    <ol class="dropdown-menu" role="menu">
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
                                    </ol>
                                </li>                      
                                <li class="dropdown">
                                     <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="glyphicon glyphicon-wrench"></i> Herramientas<span class="fa arrow"></span></a>
                                    <ol class="dropdown-menu" role="menu">
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
                                    		<a href="flot.html">Mantenimientos</a>
                                        </li>
                                        <li>
                                    		<a href="flot.html">Configuracion de impresora</a>
                                        </li>
                                        <li>
                                    		<a href="flot.html">Calculadora</a>
                                        </li>
                                        <li>
                                    		<a href="flot.html">Copia de seguridad</a>
                                        </li>
                                        <li>
                                    		<a href="flot.html">Modificar tablas y otras herramientas</a>
                                        </li>
                                    </ol>
                                </li>                                        
                            <!-- /.nav-second-level -->
                            </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">                        