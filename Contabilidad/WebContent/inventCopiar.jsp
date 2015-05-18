<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="COPIAR INVENTARIO DE OTRA EMPRESA" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>
<div class="col-lg-8">
	<label>Empresa de la que desea copiar el inventario a la empresa activa:
		<select name="emprelist" form="emprelist" class="form-control">
  			<option value="empresa(i)">Empresa(i)</option>
  		</select>
  	</label>
  	<input type="text" name="empresa" class="form-control">
  	<label>Año<input type="text" class="form-control"></label>
  	<input type="submit" name="copiar" value="copiar" class="form-control"> 

</div>

<%@include file="includes/footer.jsp"%>