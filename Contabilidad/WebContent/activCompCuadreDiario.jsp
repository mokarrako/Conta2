<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="COMPROBAR CUADRE DIARIO" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<p>Esta opción comprueba el cuadre del diario y hace un listado, en caso de que hubiera algún asiento descuadrado.</p>
	<input type="button" value="COMPROBAR CUADRE DEL DIARIO" class="form-control">


<%@include file="includes/footer.jsp"%>