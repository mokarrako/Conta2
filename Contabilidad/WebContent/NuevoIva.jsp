<%@page import="Contabilidad.Bean.Iva"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="includes/head.jsp">
	<jsp:param value="NUEVO IVA" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<%
	//recoger atributo iva
	Iva i = (Iva) request
			.getAttribute(Constantes.ATT_IVA);

	//inicializar variables para el formulario

	String buttonValue = "boton.crear";
	String op = Constantes.OP_CREAR;
	boolean isNew = false;

	//nuevo iva
	if (i == null) {
		//si el iva esta vacio, se crea uno nuevo
		i = new Iva();
		isNew = true;		
	}
	
%>

<div class="col-lg-10">
	<form
		action="<%= request.getContextPath() + "/"
					+ Constantes.CONTROLLER_IVA %>"
		method="post">


		<div class="col-lg-2 form-group">
			<label for="id">Cod.Iva</label> <input type="text" name="id" readonly
				value="<%= i.getIdIva() %>" class="form-control">
		</div>
		<div class="col-lg-2 form-group">
			<label for="iva">Iva</label>			
			<input type="text" name="iva" id="iva" value="<%= i.getIva() %>"
				class="form-control">			
		</div>

		<div class="col-lg-6 form-group">
			<label for="descripcion">Descripcion</label> <input type="text" id="descripcion" name="descripcion"
				value="<%= i.getDescripcion() %>" class="form-control">
		</div>


		<div class="col-lg-1 form-group">
			<input type="hidden" name="<%= Constantes.OP_KEY %>" value="<%= op %>">
			<input type="submit" class="btn btn-outline btn-primary botonbajo"
				value="Guardar">
		</div>

	</form>
</div>

<%@include file="../includes/footer.jsp"%>
