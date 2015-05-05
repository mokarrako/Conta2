<%@page import="Contabilidad.Bean.Cuenta"%>
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
	Cuenta c = (Cuenta) request
			.getAttribute(Constantes.ATT_CUENTA);

	//inicializar variables para el formulario

	String buttonValue = "boton.crear";
	String op = Constantes.OP_ACTUALIZAR;
	boolean isNew = false;

	//nueva persona
	if (c == null) {
		//si la calificacion esta vacia, se crea una nueva
		c = new Cuenta();
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
					+ Constantes.CONTROLLER_CUENTA %>"
		method="post">


		<div class="form-group">
			<label>Cod.Cuenta</label> <input type="text" name="id" readonly
				value="<%=c.getIdCuenta() %>" class="form-control">
		</div>
		<div class="form-group">
			<label>Cuenta</label>			
			<input type="text" name="empresa" value="<%=c.getCuenta()%>"
				class="form-control">			
		</div>

		<div class="form-group">
			<label>Descripcion</label> <input type="text" name="anio"
				value="<%=c.getDescripcion() %>" class="form-control">
		</div>

		<div class="form-group">
			<label>Saldo</label> <input type="text" name="anio"
				value="<%=c.getSaldo() %>" class="form-control">
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
	action="<%= request.getContextPath() + "/"
						+ Constantes.CONTROLLER_CUENTA %>"
	method="post">
	<input type="hidden" name="id" value="<%= c.getIdCuenta() %>"> <input
		type="hidden" name="<%= Constantes.OP_KEY %>"
		value="<%= Constantes.OP_ELIMINAR %>"> <input type="submit"
		class="btn btn-outline btn-danger"
		value=<fmt:message key="boton.eliminar"></fmt:message>>
</form>
<%
	}
%>
<%@include file="../includes/footer.jsp"%>
