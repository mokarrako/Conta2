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
					<th>C�digo</th>
					<th>Descripci�n</th>
					<th>Fecha compra</th>
					<th>Fecha amortizaci�n</th>					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<a href="#">C�digo</a>
					</td>
					<td>
						<a href="#">Decripci�n</a>
					</td>
					<td>
						<a href="#">Fecha compra</a>
					</td>
					<td>
						<a href="#">Fecha amortizaci�n</a>
					</td>					
				</tr>
				
			</tbody>
		</table>
		
		<div class="col-lg-8">
			<label>C�digo<input type="text" class="form-control"></label>
			<label>Descripci�n<input type="text" class="form-control"></label>
		</div>
		<div class="col-lg-12">
			<label>Cuenta proveedor<input type="text" class="form-control"></label>
			<label>Cuenta activo<input type="text" class="form-control"></label>
			<label>Cuenta debe<input type="text" class="form-control"></label>
			<label>Fecha compra<input type="text" class="form-control"></label>
			<label>Fecha ini. amortizaci�n ejercicio<input type="text" class="form-control"></label>
			<label>Bien usado<input type="checkbox" class="form-control"></label>
			<label>Activo fijo nuevo<input type="text" class="form-control"></label>
			<label>Valor de compra<input type="text" class="form-control"></label>
			<label>Amortizaci�n acumulada<input type="text" class="form-control"></label>
			<label>Fecha baja<input type="text" class="form-control"></label>
			<label>% Amortizaci�n anual<input type="text" class="form-control"></label>
			<label>Amortizaci�n prevista<input type="text" class="form-control"></label>
			<label>Amortizaci�n realizada<input type="text" class="form-control"></label>
			<label>Valor residual<input type="text" class="form-control"></label>
			<label>Fecha amortizaci�n<input type="text" class="form-control"></label>
			<label>Dias<input type="text" class="form-control"></label>
			<label>Valor neto<input type="text" class="form-control"></label>
		</div>
		
		
		<input type="submit" value="a�adir" class="form-control">
		<input type="submit" value="eliminar" class="form-control">
		<input type="submit" value="actualizar" class="form-control">

<%@include file="includes/footer.jsp"%>