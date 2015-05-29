<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="REGENERAR NUMERO DE ASIENTOS" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>
	<h4 class="rojo">REALIZA ANTES COPIA DE SEGURIDAD</h4>
	<p>Esta opción renumera todos los asientos, de tal forma que el número de asiento guarda un orden cronológico con respecto a la fecha.</p>
	<input type="button" value="REGENERAR ASIENTOS" class="form-control">


<%@include file="includes/footer.jsp"%>