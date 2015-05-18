<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="MANTENIMIENTO INVENTARIO" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

		<table id="diarioAsiento" class="table table-bordered table-hover data"
			width="100%" cellspacing="0">
			<thead>
				<tr>
					<th>Código</th>
					<th>Descripción</th>
					<th>Fecha compra</th>
					<th>Fecha amortización</th>					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<a href="#">Código</a>
					</td>
					<td>
						<a href="#">Decripción</a>
					</td>
					<td>
						<a href="#">Fecha compra</a>
					</td>
					<td>
						<a href="#">Fecha amortización</a>
					</td>					
				</tr>
				
			</tbody>
		</table>
		
		<div class="col-lg-8">
			<label>Código<input type="text" class="form-control"></label>
			<label>Descripción<input type="text" class="form-control"></label>
		</div>
		<div class="col-lg-12">
			<label>Cuenta proveedor<input type="text" class="form-control"></label>
			<label>Cuenta activo<input type="text" class="form-control"></label>
			<label>Cuenta debe<input type="text" class="form-control"></label>
			<label>Fecha compra<input type="text" class="form-control"></label>
			<label>Fecha ini. amortización ejercicio<input type="text" class="form-control"></label>
			<label>Bien usado<input type="checkbox" class="form-control"></label>
			<label>Activo fijo nuevo<input type="text" class="form-control"></label>
			<label>Valor de compra<input type="text" class="form-control"></label>
			<label>Amortización acumulada<input type="text" class="form-control"></label>
			<label>Fecha baja<input type="text" class="form-control"></label>
			<label>% Amortización anual<input type="text" class="form-control"></label>
			<label>Amortización prevista<input type="text" class="form-control"></label>
			<label>Amortización realizada<input type="text" class="form-control"></label>
			<label>Valor residual<input type="text" class="form-control"></label>
			<label>Fecha amortización<input type="text" class="form-control"></label>
			<label>Dias<input type="text" class="form-control"></label>
			<label>Valor neto<input type="text" class="form-control"></label>
		</div>
		
		
		<input type="submit" value="añadir" class="form-control">
		<input type="submit" value="eliminar" class="form-control">
		<input type="submit" value="actualizar" class="form-control">

<%@include file="includes/footer.jsp"%>