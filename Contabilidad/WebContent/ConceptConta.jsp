<%@page import="Contabilidad.Bean.ActivarEmpresa"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="CONCEPTOS CONTABLES" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<div class="col-lg-10">
	<form
		<!-- action="<%//= request.getContextPath() + "/"
					//+ Constantes.CONTROLLER_IVA %>"
		method="post">  -->


		<div class="col-lg-2 form-group">
			<label for="numconcep">Número</label> <input type="text" name="id" readonly
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


<%@include file="includes/footer.jsp"%>