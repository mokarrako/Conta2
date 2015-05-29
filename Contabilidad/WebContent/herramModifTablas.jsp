<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="MODIFICAR TABLAS Y OTRAS HERRAMIENTAS" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<div class="col-lg-8">
		<label>Tabla<input type="text" class="form-control"></label>
		<label>Campo<input type="text" class="form-control"></label>
		<label>Tipo<input type="text" class="form-control"></label>
		<label>Ancho<input type="text" class="form-control"></label>
		<label>Decim<input type="text" class="form-control"></label>
		<input type="button" value="Modificar Campo" class="form-control">
		<input type="button" value="Añadir Campo" class="form-control">
	
	</div>
	<div class="col-lg-4">
		<label>Clave de entrada para cualquier operación:<input type="text" class="form-control"></label>
	</div>
	<div class="col-lg-6">
		<label>Browse de la tabla que se indique:<input type="text" class="form-control"></label>
		<label>Modificar:<input type="text" class="form-control"></label>		
	</div>
	<div class="col-lg-6">
		<input type="button" value="Crear cuentas a partir de CLIFAC y PROFAC: Ejemplo de DIRECCIÓN: c:\KEFACTUR\DATA" class="form-control">
		<label>Dirección:<input type="text" class="form-control"></label>
	</div>
	<div class="col-lg-8">
		<label>ZAP DE LA TABLA QUE DESEE (Poner toda la dirección)<input type="text" class="form-control"></label>
	</div>
	


<%@include file="includes/footer.jsp"%>