<%@page import="Contabilidad.Bean.ConceptosContables"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="includes/head.jsp">
	<jsp:param value="CONCEPTOS CONTABLES" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>
<%	
	ArrayList<ConceptosContables> vConceptosContables = (ArrayList<ConceptosContables>) request.getAttribute(Constantes.ATT_CONCEPTOS);
	int tamanio = vConceptosContables.size();
%>



<!-- Page Content -->
<div class="container">

		<div class="row">
		<div class="col-lg-12 ">
			<h4 class="resultados">
				Numero de registros encontrados:<%= vConceptosContables.size() %></h4>
		</div>
		<%
			if (vConceptosContables.isEmpty()) {
		%>
		<h2>
			No existe nigun concepto, por favor cree uno <a
				href="<%= Constantes.JSP_CONCEPTOSFORM %>" title="nuevo registro">nuevo</a>
		</h2>
		<%
			} else {
		%>
		<table id="idConceptosCont" class="table table-bordered table-hover"
			width="100%" cellspacing="0">
			<thead>
				<tr>
					<th></th>
					<th>Nº</th>
					<th>Descripcion</th>
				</tr>
			</thead>

			<tbody>
				<%
				ConceptosContables c = null;
						for (int iconcept = 0; iconcept < vConceptosContables.size(); iconcept++) {
							c = vConceptosContables.get(iconcept);
				%>

				<tr>
					<td>
						<a href="<%= Constantes.CONTROLLER_CUENTA + "?id="
							+ c.getIdConcepCont() %>">
							<span class="glyphicon glyphicon-eye-open"></span>
					</a></td>

					<td><%= c.getIdConcepCont() %></td>
					<td class="desaparecer"><%= c.getDescConcepCont() %></td>
										
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