<%@page import="Contabilidad.Bean.ActivarEmpresa"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="includes/head.jsp">
	<jsp:param value="NUEVA EMPRESA" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<script>$(document).ready(function() {
        $('#actempresa').DataTable();
    } );</script>
    

<%
	//recoger atributo empresa
	ActivarEmpresa e = (ActivarEmpresa) request.getAttribute(Constantes.ATT_EMPRESA);

	//inicializar variables para el formulario

	String buttonValue = "boton.crear";
	String op = Constantes.OP_ACTUALIZAR;
	boolean isNew = false;

	//nueva empresa
	if (e == null) {
		//si la lista esta vacia, se crea una nueva
		e = new ActivarEmpresa();
		isNew = true;
		op = Constantes.OP_CREAR;
	}
	//modificar persona
	else {

		buttonValue = "boton.modificar";
	}
%>

<div class="col-lg-10">
	<form
		action="<%=request.getContextPath() + "/"
					+ Constantes.CONTROLLER_ACTEMPRESA %>"
		method="post">
		<table id="actempresa" class="display" cellspacing="0" width="100%">
			<thead>
	            <tr>
	                <th>Cod. Empresa</th>
	                <th>Empresa</th>
	                <th>Año</th>
	            </tr>
	        </thead>
	        <tfoot>
	            <tr>
	                <th>Cod. Empresa</th>
	                <th>Empresa</th>
	                <th>Año</th>
	                <th>Selección</th>
	            </tr>
	        </tfoot>
	        <tbody>
				<tr>
					<td>
						<input type="text" name="id" value="<%=e.getIdEmpresa()%>" class="form-control">
					</td>
					<td>			
						<input type="text" name="empresa" value="<%=e.getEmpresa()%>" class="form-control">		
					</td>
					<td>
						<input type="text" name="anio" value="<%=e.getAnio()%>" class="form-control">
					</td>
					<td>
						<input type="checkbox" name="sele" class="form-control">
					</td>		
	        </tbody>
		</table>
		<input type="hidden" name="<%=Constantes.OP_KEY%>" value="<%=op%>">
		<input type="submit" class="btn btn-outline btn-primary botonbajo"
				value="Aceptar">

	</form>
</div>
<%
	if (!isNew) {
%>


<form
	action="<%=request.getContextPath() + "/"
						+ Constantes.CONTROLLER_ACTEMPRESA %>"
	method="post">
	<input type="hidden" name="id" value="<%=e.getIdEmpresa()%>"> <input
		type="hidden" name="<%=Constantes.OP_KEY%>"
		value="<%=Constantes.OP_ELIMINAR%>"> <input type="submit"
		class="btn btn-outline btn-danger"
		value=<fmt:message key="boton.eliminar"></fmt:message>>
</form>
<%
	}
%>
<%@include file="../includes/footer.jsp"%>
