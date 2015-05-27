<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="MANTENIMIENTO DE PREVISIONES DE COBROS Y PAGOS" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<form>
		
				
		
		<table id="idMantCoPa" class="table table-bordered table-hover data"
			width="100%" cellspacing="0">
			<thead>
				<tr>
					<th>Cuenta</th>
					<th>Fecha</th>
					<th>Concepto</th>
					<th>Fecha vencim.</th>
					<th>Importe</th>
					<th>(P)ago/(C)obro</th>
					<th>NºFac</th>
					<th>Asiento</th>
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<a href="#">Cuenta</a>
					</td>
					<td>
						<a href="#">Fecha</a>
					</td>
					<td>
						<a href="#">Concepto</a>
					</td>
					<td>
						<a href="#">Fecha vencim.</a>
					</td>
					<td>
						<a href="#">Importe</a>
					</td>
					<td>
						<a href="#">(P)ago/(C)obro</a>
					</td>
					<td>
						<a href="#">NºFac</a>
					</td>
					<td>
						<a href="#">Asiento</a>
					</td>					
				</tr>
				
			</tbody>
		</table>
		<div class="col-lg-3">
			<h3>Ordenados por:</h3>
			<input type="radio" name="ordPor" value="fechVen" id="fechVen"><label for="fechVen"> Fecha vencimiento</label><br>
			<input type="radio" name="ordPor" value="asien" id="asien"><label for="asien"> Asiento</label><br>
			<input type="radio" name="ordPor" value="cuen" id="cuen"><label for="cuen"> Cuenta</label>

		</div>
		<div class="col-lg-3">
			<input type="radio" name="ordPor2" value="todos" id="todos"><label for="todos"> Todos</label><br>
			<input type="radio" name="ordPor2" value="solPa" id="solPa"><label for="solPa"> Sólo pagos</label><br>
			<input type="radio" name="ordPor2" value="solCo" id="solCo"><label for="solCo"> Sólo cobros</label>
		</div>
		<div class="col-lg-2">
			<input type="button" value="buscar" name="buscar">
		</div>
		<div class="col-lg-2">
			<input type="button" value="Eliminar" name="Eliminar">
			<input type="radio" name="elimPor" value="Individual" id="Individual"><label for="Individual"> Individual</label><br>
			<input type="radio" name="elimPor" value="PorFechasV" id="PorFechasV"><label for="PorFechasV"> Por fechas v.</label>
		</div>
		<div class="col-lg-2">
			<input type="button" value="Modificar" name="Modificar">			
		</div>		
		<label><input type="checkbox" value="listaRefDesc" name="listaRefDesc"> Listado con referencia a descripción de cuenta</label>
		<input type="button" value="Listar" name="Listar">		
		<div class="col-lg-4">
			<label>De fecha venc.:<input type="text" class="form-control"></label>
			<label>A fecha venc.:<input type="text" class="form-control"></label>
		</div>
		<div class="col-lg-4">
			<label>De cuenta<input type="text" class="form-control"></label>
			<label>A cuenta<input type="text" class="form-control"></label>
		</div>
		
</form>

<%@include file="includes/footer.jsp"%>