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
	<p>Comprobaci�n de d�gitos de contabilidad:</p>
	<h4 class="rojo">(HAZ ANTES COPIA DE SEGURIDAD)</h4>
	<p>Si existiera alguna cuenta con d�gitos diferentes, se modificar� para ajustarse a los d�gitos de la contabilidad en uso.</p>
	<label for="id">Empresa:</label>
	<input type="text" name="id" id="id" readonly value="" class="form-control">
	<input type="text" name="empresa" id="empresa" value="" class="form-control">
	<label for="anio">A�o:</label>
	<input type="text" name="a�o" id="anio" value="" class="form-control">
	<label for="digiCuenAct">D�gitos de cuenta actuales:</label>
	<input type="text" name="digiCuenAct" id="digiCuenAct" class="form-control">
	<input type="button" value="COMPROBACION DE D�GITOS" class="form-control">


<%@include file="includes/footer.jsp"%>