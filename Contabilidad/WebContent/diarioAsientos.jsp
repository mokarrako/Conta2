<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="PARAMETROS ASIENTOS AUTOMATICOS" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>
<div class="col-lg-6">
	<label>Asiento <input type="text" name="asiento" class="form-control"></label>
	<label>Fecha <input type="text" name="fechaAsiento" class="form-control"></label>
	<label>Tipo asiento <input type="text" name="tipoAsiento" class="form-control"></label>
</div>
<div class="col-lg-6">
	<label>Suma debe <input type="text" name="sumaDebe" class="form-control"></label>
	<label>Suma haber <input type="text" name="sumaHaber" class="form-control"></label>
	<label>Descuadre <input type="text" name="tipoAsiento" class="form-control"></label>
</div>
<form>
	<table id="diarioAsiento" class="table table-bordered table-hover data"
			width="100%" cellspacing="0">
			<thead>
				<tr>
					<th>Cuenta</th>
					<th>Denominación</th>
					<th>Descripción</th>
					<th>Debe</th>
					<th>Haber</th>					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<a href="#">Cuenta</a>
					</td>
					<td>
						<a href="#">Denominación</a>
					</td>
					<td>
						<a href="#">Decripción</a>
					</td>
					<td>
						<a href="#">Debe</a>
					</td>
					<td>
						<a href="#">Haber</a>
					</td>					
				</tr>
				
			</tbody>
		</table>
		<input type="submit" value="añadir" class="form-control">
		<input type="submit" value="eliminar" class="form-control">
		<input type="submit" value="historico cuenta" class="form-control">
</form>

<%@include file="includes/footer.jsp"%>