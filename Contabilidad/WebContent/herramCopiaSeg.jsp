<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="COPIA DE SEGURIDAD" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<label for="unid"> Unidad:<input type="text" class="form-control" id="unid"></label>
	<p>Consultar:</p><input type="button" value="unidades" class="form-control"><input type="button" value="Tipo de unidades" class="form-control">
	<input type="button" value="Realizar copia de seguridad" class="form-control" >
	<p>Paso de un fichero .DBF (escribir sin extensi�n) de contabilidad a EXCEL</p>
	<p>Los ficheros que se copian estar�n en la carpeta \contak\data</p>
	<label for="fich"> Fichero:<input type="text" class="form-control" id="fich"></label>
	<p>Los ficheros .XLS se copian en la carpeta \contak\fichexls. Si no exista se crea autom�ticamente</p>
	


<%@include file="includes/footer.jsp"%>