<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="BALANCE DE SITUACIÓN NUEVO PLA GENERAL CONTABLE" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<h3>Balance de situación N.P.G.C.</h3>
	<form>
		<div class="col-lg-4">
			<label>Al mes:<input type="text" class="form-control"></label>
			<label><input type="button" value="listar con modelo N.P.G.C." class="form-control"></label>
		</div>
		<div class="col-lg-4">
			<label>Listar previamente las cuentas (para comprovar)<input type="checkbox" class="form-control"></label>
			<label>Referencia ejercicio anterior (solo último balance de ejercicio)<input type="checkbox" class="form-control"></label>
		</div>
		<div class="col-lg-4">
			<input type="button" value="Listar" class="form-control">
		</div>
	</form>

<%@include file="includes/footer.jsp"%>