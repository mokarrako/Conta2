<%@page import="Contabilidad.Bean.ActivarEmpresa"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="includes/head.jsp">
	<jsp:param value="NUEVA EMPRESA" name="titulo" />
</jsp:include>
<jsp:include page="includes/nav.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<%
	//recoger atributo empresa
	ActivarEmpresa e = (ActivarEmpresa) request
			.getAttribute(Constantes.ATT_EMPRESA);

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

<div class="col-lg-6">
	<form
		action="<%=request.getContextPath() + "/"
					+ Constantes.CONTROLLER_ACTEMPRESA %>"
		method="post">

		<div class="form-group">
			<label>Cod.Empresa</label> <input type="text" name="id" 
				value="<%=e.getIdEmpresa()%>" class="form-control">
		</div>
		<div class="form-group">
			<label>Empresa</label>			
			<input type="text" name="empresa" value="<%=e.getEmpresa()%>"
				class="form-control">			
		</div>

		<div class="form-group">
			<label>Año</label> <input type="text" name="anio"
				value="<%=e.getAnio()%>" class="form-control">
		</div>

		<input type="hidden" name="<%=Constantes.OP_KEY%>" value="<%=op%>">
		<input type="submit" class="btn btn-outline btn-primary"
			value="Guardar">

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
