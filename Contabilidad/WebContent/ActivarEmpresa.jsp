<%@page import="Contabilidad.Bean.ActivarEmpresa"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="includes/head.jsp">
	<jsp:param value="EMPRESAS ACTIVAS" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<%	
	ArrayList<ActivarEmpresa> vEmpresa = (ArrayList<ActivarEmpresa>) request.getAttribute(Constantes.ATT_EMPRESAS);
	int tamanio = vEmpresa.size();
%>

<!-- Page Content -->
<div class="container">
	<h1>Activar Empresa</h1>
	<!--   mensajes de alerta
	<div class="alert alert-success" role="alert">Se han eliminado
		con exito los registros</div>
	-->
	<div class="row">
		<div class="col-lg-12 ">
			<h4 class="resultados">
				Numero de registros encontrados:<%= vEmpresa.size() %></h4>
		</div>
		<%
			if (vEmpresa.isEmpty()) {
		%>
		<h2>
			No existe niguna Empresa, por favor cree una Empresa <a
				href="<%= Constantes.JSP_ACTEMPFORM %>" title="nuevo registro">nueva</a>
		</h2>
		<%
			} else {
		%>
		<table id="idEmpresa" class="table table-bordered table-hover"
			width="100%" cellspacing="0">
			<thead>
				<tr>
					<th></th>

					<th>Cod.Empresa</th>
					<th>Empresa</th>
					<th>Año</th>
				</tr>
			</thead>
			<tbody>
				<%
					ActivarEmpresa ae = null;
						for (int iEmpresa = 0; iEmpresa < vEmpresa.size(); iEmpresa++) {
							ae = vEmpresa.get(iEmpresa);
				%>

				<tr>
					<td>
						<a href="<%= Constantes.CONTROLLER_ACTEMPRESA + "?id="
							+ ae.getIdEmpresa() %>">
							<span class="glyphicon glyphicon-eye-open"></span>
						</a>
					</td>
					<td>
						<a href="<%= Constantes.CONTROLLER_ACTEMPRESA + "?id="+ ae.getIdEmpresa() %>"><%= ae.getIdEmpresa() %></a>
					</td>
					<td>
						<a href="<%= Constantes.CONTROLLER_ACTEMPRESA + "?id="+ ae.getIdEmpresa() %>"><%= ae.getEmpresa() %></a>
					</td>
					<td><%= ae.getAnio() %></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		<%
			}
		%>
	</div>
	<!-- /.row -->
</div>
<!-- /.container -->

<%@include file="includes/footer.jsp" %> 