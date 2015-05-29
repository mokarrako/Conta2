<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="COMPROBAR DIGITOS DE CONTABILIDAD" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>
	<p>Comprobación de dígitos de contabilidad:</p>
	<h4 class="rojo">(HAZ ANTES COPIA DE SEGURIDAD)</h4>
	<p>Si existiera alguna cuenta con dígitos diferentes, se modificará para ajustarse a los dígitos de la contabilidad en uso.</p>
	<label for="id">Empresa:</label>
	<input type="text" name="id" id="id" readonly value="" class="form-control">
	<input type="text" name="empresa" id="empresa" value="" class="form-control">
	<label for="anio">Año:</label>
	<input type="text" name="año" id="anio" value="" class="form-control">
	<label for="digiCuenAct">Dígitos de cuenta actuales:</label>
	<input type="text" name="digiCuenAct" id="digiCuenAct" class="form-control">
	<input type="button" value="COMPROBACION DE DÍGITOS" class="form-control">


<%@include file="includes/footer.jsp"%>