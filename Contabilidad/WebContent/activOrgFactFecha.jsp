<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="ORGANIZAR N� FACTURA POR FECHA" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<p>Esta opci�n renumera todas las facturas de tal forma que el n�mero de factura guarda un orden cronol�gico con respecto a la fecha</p>
	<form>
		<input type="submit" class="form-control" value="Organizar facturas">
	</form>


<%@include file="includes/footer.jsp"%>