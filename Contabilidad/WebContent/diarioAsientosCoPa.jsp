<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="ASIENTOS COBRO/PAGO" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>
	<form>
		<table id="asientosCoPa" class="table table-bordered table-hover data"
				width="100%" cellspacing="0">
				<thead>
					<tr>
						<th></th>
						<th>Nº Asiento</th>
						<th>Fecha</th>
						<th>Tipo asiento</th>
						<th>Cuenta Cli/Pro</th>
						<th>Descripción</th>
						<th>Cuenta Co/Pa</th>
						<th>Importe</th>					
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<input type="checkbox">
						</td>
						<td>
							Nº Asiento
						</td>
						<td>
							Fecha
						</td>
						<td>
							Tipo asiento
						</td>
						<td>
							Cuenta Cli/Pro
						</td>
						<td>
							Descripción
						</td>
						<td>
							Cuenta Co/Pa
						</td>
						<td>
							Importe
						</td>					
					</tr>
					
				</tbody>
		</table>
		
		<input type="submit" value="añadir" class="form-control">
		<input type="submit" value="eliminar" class="form-control">
		<input type="submit" value="Historico cuenta Cli/Pro" class="form-control">
		<input type="submit" value="Historico cuenta Co/Pa" class="form-control">
	</form>
		

<%@include file="includes/footer.jsp"%>