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
	<p>Esta opci�n renumera todos los asientos, de tal forma que el n�mero de asiento guarda un orden cronol�gico con respecto a la fecha.</p>
	<input type="button" value="REGENERAR ASIENTOS" class="form-control">


<%@include file="includes/footer.jsp"%>