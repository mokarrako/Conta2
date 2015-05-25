<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="COMPROBACIÓN DE MOVIMIENTOS MENSUALES" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<h3>Comprobación de movimientos mensuales</h3>
	<form>	
		<div class="col-lg-4">
			<label>Al mes:<input type="text" class="form-control"></label>
		</div>
		<div class="col-lg-4">
			<label><input type="radio" name="grupoCuenta" value="grupo">Grupo</label><br>
			<label><input type="radio" name="grupoCuenta" value="subgrupo">Subgrupo</label><br>
			<label><input type="radio" name="grupoCuenta" value="cuenta">Cuenta</label><br>
			<label><input type="radio" name="grupoCuenta" value="subcuenta">Subcuenta</label><br>
		</div>
		<div class="col-lg-4">
			<input type="button" value="Listar" class="form-control">
			<input type="button" value="Pasar a PDF" class="form-control">
		</div>
	</form>

<%@include file="includes/footer.jsp"%>