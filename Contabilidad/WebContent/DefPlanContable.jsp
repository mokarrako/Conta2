<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="includes/head.jsp">
	<jsp:param value="EMPRESAS ACTIVAS" name="titulo" />
</jsp:include>
<jsp:include page="includes/nav.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<%
	ArrayList<Cuenta> vCuenta = (ArrayList<Cuenta>) request.getAttribute(Constantes.ATT_CUENTA);
	int tamanio = vCuenta.size();
%>



<!-- Page Content -->
<div class="container">

		<div class="row">
		<div class="col-lg-12 ">
			<h4 class="resultados">
				Numero de contactos encontrados:<%=vCuenta.size()%></h4>
		</div>
		<%
			if (vCuenta.isEmpty()) {
		%>
		<h2>
			No existe niguna cuenta, por favor cree una cuenta <a
				href="<%=Constantes.JSP_CUENTAFORM%>" title="nueva cuenta">nueva</a>
		</h2>
		<%
			} else {
		%>
		<table id="idCuentas" class="table table-bordered table-hover"
			width="100%" cellspacing="0">
			<thead>
				<tr>
					<th></th>

					<th>Cuenta</th>
					<th>Descripcion</th>
					<th>Saldo</th>
				</tr>
			</thead>
			<tbody>
				<%
					Cuenta c = null;
						for (int iCuenta = 0; iCuenta < vCuenta.size(); iCuenta++) {
							c = vCuenta.get(iCuenta);
				%>

				<tr>
					<td>
						<a href="<%= Constantes.CONTROLLER_CUENTA + "?id="
							+ c.getIdCuenta() %>">
							<span class="glyphicon glyphicon-eye-open"></span>
						</a>
					</td>					
					<td>
						<a href="<%= Constantes.CONTROLLER_CUENTA + "?id="+ c.getIdCuenta() %>"><%= c.getCuenta() %></a>
					</td>
					<td><%= c.getDescripcion() %></td>
					<td><%= c.getSaldo() %></td>
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


<%@include file="includes/footer.jsp"%>