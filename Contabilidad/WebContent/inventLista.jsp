<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="LISTADO DE INVENTARIO" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<div class="col-lg-6">
	<label>De cuenta <input type="text" class="form-control"></label>
	<label>A cuenta <input type="text" class="form-control"></label>
	<input type="submit" value="listar" class="form-control">

</div>

<%@include file="includes/footer.jsp"%>