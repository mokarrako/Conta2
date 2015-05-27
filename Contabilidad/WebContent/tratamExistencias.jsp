<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="INTROCUCCION DE EXISTENCIAS" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<h3>En esta opción se introduce el valor de existencias de cada mes, a los efectos de ser utilizado en la cuenta de explotación, como existencias finales. Si no se introduce ningún valor en un mes, se tomará como existencia final el último saldo contable de la cuenta de existencias (Grupo 3)</h3>
	
		<label>Empresa<input type="text" class="form-control"></label>
		<label>Año<input type="text" class="form-control"></label>
		<label>Apertura<input type="text" class="form-control"></label>
		<label>Nombre<input type="text" class="form-control"></label>
	<div class="col-lg-8">
		<label>Enero<input type="text" class="form-control"></label>
		<label>Febrero<input type="text" class="form-control"></label>
		<label>Marzo<input type="text" class="form-control"></label>
		<label>Abril<input type="text" class="form-control"></label>
		<label>Mayo<input type="text" class="form-control"></label>
		<label>Junio<input type="text" class="form-control"></label>
		<label>Julio<input type="text" class="form-control"></label>
		<label>Agosto<input type="text" class="form-control"></label>
		<label>Septiembre<input type="text" class="form-control"></label>
		<label>Octubre<input type="text" class="form-control"></label>
		<label>Noviembre<input type="text" class="form-control"></label>
		<label>Diciembre<input type="text" class="form-control"></label>
		
	</div>
	
	<div class="col-lg-6">
		<input type="button" name="Guardar" value="Guardar" class="form-control">
	</div>

<%@include file="includes/footer.jsp"%>