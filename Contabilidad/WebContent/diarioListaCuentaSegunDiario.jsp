<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="LISTAR CUENTAS SEGÚN DIARIO" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<h3>Listar cuentas según diario</h3>
	<form>
		<div class="col-lg-4">
			<h4>Nivel de cuenta</h4>
				<label><input type="radio" name="nivelCuenta" value="1">1&nbsp;</label>&nbsp;&nbsp;
				<label><input type="radio" name="nivelCuenta" value="2">2&nbsp;</label>&nbsp;&nbsp;
				<label><input type="radio" name="nivelCuenta" value="3">3&nbsp;</label>&nbsp;&nbsp;
				<label><input type="radio" name="nivelCuenta" value="4">4&nbsp;</label>&nbsp;&nbsp;
				<label><input type="radio" name="nivelCuenta" value="9">9&nbsp;</label>
		</div>
		<div class="col-lg-4">
			<label>De fecha:<input type="text" class="form-control"></label>
			<label>A fecha:<input type="text" class="form-control"></label>
		</div>
		<div class="col-lg-4">
			<label>De grupo<input type="text" class="form-control"></label>
			<label>A grupo<input type="text" class="form-control"></label>
		</div>
		<div class="col-lg-4">
			<label>Imprimir fondo de línea alterna<input type="checkbox" class="form-control"></label>
		</div>
		<div class="col-lg-4">
			<input type="button" value="Listar" class="form-control">
		</div>
	</form>

<%@include file="includes/footer.jsp"%>