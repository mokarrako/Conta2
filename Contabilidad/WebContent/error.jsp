<%@page import="Contabilidad.Bean.PruebasListaActivarEmpresa"%>
<%@page import="Contabilidad.Modelo.DAO.DAOFactory"%>
<%@page import="Contabilidad.Modelo.Interfaces.IActivarEmpresaDAO"%>
<%@page import="Contabilidad.Bean.ActivarEmpresa"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="includes/head.jsp">
	<jsp:param value="Error" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>


<div class="panel-body">
	<div class="panel panel-default">
		<div class="panel-heading">Error</div>
		<div class="panel-body">
			<p>Vaya, parece que hay algun problema. Lo sentimos.</p>
		</div>
		<!-- /.panel-body -->
	</div>
	<!-- /.panel -->
</div>
<!-- /.panel-body -->

<%@include file="includes/footer.jsp"%>