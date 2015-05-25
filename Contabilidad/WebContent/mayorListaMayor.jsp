<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="LISTADO DEL MAYOR" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<h3>Listado del mayor</h3>
	<form>
		<div class="col-lg-4">
			<label>De fecha:<input type="text" class="form-control"></label>
			<label>A fecha:<input type="text" class="form-control"></label>
		</div>
		<div class="col-lg-4">
			<label>De cuenta:<input type="text" class="form-control"></label>
			<label>A cuenta:<input type="text" class="form-control"></label>
		</div>
		<div class="col-lg-4">
			<label>Imprimir recuadros<input type="checkbox" class="form-control"></label>
			<label>Imprimir fondo de línea alterna<input type="checkbox" class="form-control"></label>
		</div>
		<div class="col-lg-4">
			<input type="button" value="Listar" class="form-control">
		</div>
	</form>

<%@include file="includes/footer.jsp"%>