<%@page import="Contabilidad.Bean.AsientosAutomaticos"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="PARAMETROS ASIENTOS AUTOMATICOS" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<script>$(document).ready(function() {
        $('#idDefinicion').DataTable();
    } );</script>

<%	
AsientosAutomaticos vAsientosAutomaticos = (AsientosAutomaticos) request.getAttribute(Constantes.ATT_ASIENTOS);
	
	//inicializar variables para el formulario
	String buttonValue = "boton.crear";
	String op = Constantes.OP_ACTUALIZAR;
	boolean isNew = false;

	//nueva empresa
	if (vAsientosAutomaticos == null) {
		//si la lista esta vacia, se crea una nueva
		vAsientosAutomaticos = new AsientosAutomaticos();
		isNew = true;
		op = Constantes.OP_CREAR;
	}
	//modificar persona
	else {

		buttonValue = "boton.modificar";
	}
%>

<form>
		<table id="idDefinicion" class="table table-bordered table-hover data"
			width="100%" cellspacing="0">
			<thead>
				<tr>
					<th>Código</th>
					<th>Descripcion</th>					
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
				</tr>
				
			</tbody>
		</table>
		<input type="submit" value="añadir" class="form-control">
</form>
<div class="col-lg-3">
	<label>Código:</label>
	<input type="text" name="" class="form-control">
</div>
<div class="col-lg-3">
	<label>Descripción:</label>
	<input type="text" name="" class="form-control">
</div>

<table width="100%" cellspacing="0">
	<thead>
		<tr>
			<th colspan="2"><label>Cuenta</label></th>
			<th colspan="2"><label>Descripcion</label></th>
			<th><label>% Debe</label></th>
			<th><label>% Haber</label></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td width="10%">
				<input type="text" name="idCuentaParam" id="idCuentaParam" readonly value="<%= vAsientosAutomaticos.getIdAsiento() %>" class="form-control">
			</td>
			<td width="20%">
				<input type="text" name="nomCuentaParam" id="nomCuentaParam" value="<%= vAsientosAutomaticos.getCodigoAsiento() %>" class="form-control">
			</td>
			<td colspan="2" width="50%">
				<input type="text" name="descCuentaParam" id="descCuentaParam" value="<%= vAsientosAutomaticos.getDescAsiento() %>" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenDebe" id="porcenDebe" value="" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenHaber" id="porcenHaber" value="" class="form-control">
			</td>
		</tr>
		<tr>
			<td width="10%">
				<input type="text" name="idCuentaParam" id="idCuentaParam" readonly value="<%= vAsientosAutomaticos.getIdAsiento() %>" class="form-control">
			</td>
			<td width="20%">
				<input type="text" name="nomCuentaParam" id="nomCuentaParam" value="<%= vAsientosAutomaticos.getCodigoAsiento() %>" class="form-control">
			</td>
			<td colspan="2" width="50%">
				<input type="text" name="descCuentaParam" id="descCuentaParam" value="<%= vAsientosAutomaticos.getDescAsiento() %>" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenDebe" id="porcenDebe" value="" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenHaber" id="porcenHaber" value="" class="form-control">
			</td>
		</tr>
		<tr>
			<td width="10%">
				<input type="text" name="idCuentaParam" id="idCuentaParam" readonly value="<%= vAsientosAutomaticos.getIdAsiento() %>" class="form-control">
			</td>
			<td width="20%">
				<input type="text" name="nomCuentaParam" id="nomCuentaParam" value="<%= vAsientosAutomaticos.getCodigoAsiento() %>" class="form-control">
			</td>
			<td colspan="2" width="50%">
				<input type="text" name="descCuentaParam" id="descCuentaParam" value="<%= vAsientosAutomaticos.getDescAsiento() %>" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenDebe" id="porcenDebe" value="" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenHaber" id="porcenHaber" value="" class="form-control">
			</td>
		</tr>
		<tr>
			<td width="10%">
				<input type="text" name="idCuentaParam" id="idCuentaParam" readonly value="<%= vAsientosAutomaticos.getIdAsiento() %>" class="form-control">
			</td>
			<td width="20%">
				<input type="text" name="nomCuentaParam" id="nomCuentaParam" value="<%= vAsientosAutomaticos.getCodigoAsiento() %>" class="form-control">
			</td>
			<td colspan="2" width="50%">
				<input type="text" name="descCuentaParam" id="descCuentaParam" value="<%= vAsientosAutomaticos.getDescAsiento() %>" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenDebe" id="porcenDebe" value="" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenHaber" id="porcenHaber" value="" class="form-control">
			</td>
		</tr>
		<tr>
			<td width="10%">
				<input type="text" name="idCuentaParam" id="idCuentaParam" readonly value="<%= vAsientosAutomaticos.getIdAsiento() %>" class="form-control">
			</td>
			<td width="20%">
				<input type="text" name="nomCuentaParam" id="nomCuentaParam" value="<%= vAsientosAutomaticos.getCodigoAsiento() %>" class="form-control">
			</td>
			<td colspan="2" width="50%">
				<input type="text" name="descCuentaParam" id="descCuentaParam" value="<%= vAsientosAutomaticos.getDescAsiento() %>" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenDebe" id="porcenDebe" value="" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenHaber" id="porcenHaber" value="" class="form-control">
			</td>
		</tr>
		<tr>
			<td width="10%">
				<input type="text" name="idCuentaParam" id="idCuentaParam" readonly value="<%= vAsientosAutomaticos.getIdAsiento() %>" class="form-control">
			</td>
			<td width="20%">
				<input type="text" name="nomCuentaParam" id="nomCuentaParam" value="<%= vAsientosAutomaticos.getCodigoAsiento() %>" class="form-control">
			</td>
			<td colspan="2" width="50%">
				<input type="text" name="descCuentaParam" id="descCuentaParam" value="<%= vAsientosAutomaticos.getDescAsiento() %>" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenDebe" id="porcenDebe" value="" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenHaber" id="porcenHaber" value="" class="form-control">
			</td>
		</tr>
		<tr>
			<td width="10%">
				<input type="text" name="idCuentaParam" id="idCuentaParam" readonly value="<%= vAsientosAutomaticos.getIdAsiento() %>" class="form-control">
			</td>
			<td width="20%">
				<input type="text" name="nomCuentaParam" id="nomCuentaParam" value="<%= vAsientosAutomaticos.getCodigoAsiento() %>" class="form-control">
			</td>
			<td colspan="2" width="50%">
				<input type="text" name="descCuentaParam" id="descCuentaParam" value="<%= vAsientosAutomaticos.getDescAsiento() %>" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenDebe" id="porcenDebe" value="" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenHaber" id="porcenHaber" value="" class="form-control">
			</td>
		</tr>
		<tr>
			<td width="10%">
				<input type="text" name="idCuentaParam" id="idCuentaParam" readonly value="<%= vAsientosAutomaticos.getIdAsiento() %>" class="form-control">
			</td>
			<td width="20%">
				<input type="text" name="nomCuentaParam" id="nomCuentaParam" value="<%= vAsientosAutomaticos.getCodigoAsiento() %>" class="form-control">
			</td>
			<td colspan="2" width="50%">
				<input type="text" name="descCuentaParam" id="descCuentaParam" value="<%= vAsientosAutomaticos.getDescAsiento() %>" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenDebe" id="porcenDebe" value="" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenHaber" id="porcenHaber" value="" class="form-control">
			</td>
		</tr>
		<tr>
			<td width="10%">
				<input type="text" name="idCuentaParam" id="idCuentaParam" readonly value="<%= vAsientosAutomaticos.getIdAsiento() %>" class="form-control">
			</td>
			<td width="20%">
				<input type="text" name="nomCuentaParam" id="nomCuentaParam" value="<%= vAsientosAutomaticos.getCodigoAsiento() %>" class="form-control">
			</td>
			<td colspan="2" width="50%">
				<input type="text" name="descCuentaParam" id="descCuentaParam" value="<%= vAsientosAutomaticos.getDescAsiento() %>" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenDebe" id="porcenDebe" value="" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenHaber" id="porcenHaber" value="" class="form-control">
			</td>
		</tr>
		<tr>
			<td width="10%">
				<input type="text" name="idCuentaParam" id="idCuentaParam" readonly value="<%= vAsientosAutomaticos.getIdAsiento() %>" class="form-control">
			</td>
			<td width="20%">
				<input type="text" name="nomCuentaParam" id="nomCuentaParam" value="<%= vAsientosAutomaticos.getCodigoAsiento() %>" class="form-control">
			</td>
			<td colspan="2" width="50%">
				<input type="text" name="descCuentaParam" id="descCuentaParam" value="<%= vAsientosAutomaticos.getDescAsiento() %>" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenDebe" id="porcenDebe" value="" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenHaber" id="porcenHaber" value="" class="form-control">
			</td>
		</tr>
	</tbody>
</table>
			

<!--  tabla metida en un for



 ArrayList<AsientosAutomaticos> vAsientosAutomaticos = (ArrayList<AsientosAutomaticos>) request.getAttribute(Constantes.ATT_ASIENTOS);
	int tamanio = vAsientosAutomaticos.size();
	
	//inicializar variables para el formulario

	String buttonValue = "boton.crear";
	String op = Constantes.OP_ACTUALIZAR;
	boolean isNew = false;

	//nueva empresa
	if (vAsientosAutomaticos == null) {
		//si la lista esta vacia, se crea una nueva
		vAsientosAutomaticos = new ArrayList<AsientosAutomaticos>();
		isNew = true;
		op = Constantes.OP_CREAR;
	}
	//modificar persona
	else {

		buttonValue = "boton.modificar";
	}
%>



<form>
		<table id="idDefinicion" class="table table-bordered table-hover data"
			width="100%" cellspacing="0">
			<thead>
				<tr>
					<th>Código</th>
					<th>Descripcion</th>					
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
				</tr>
				
			</tbody>
		</table>
		<input type="submit" value="añadir" class="form-control">
</form>
<div class="col-lg-3">
	<label>Código:</label>
	<input type="text" name="" class="form-control">
</div>
<div class="col-lg-3">
	<label>Descripción:</label>
	<input type="text" name="" class="form-control">
</div>

<table width="100%" cellspacing="0">
	<thead>
		<tr>
			<th colspan="2"><label>Cuenta</label></th>
			<th colspan="2"><label>Descripcion</label></th>
			<th><label>% Debe</label></th>
			<th><label>% Haber</label></th>
		</tr>
	</thead>
	<tbody>
	
	< %
	
	AsientosAutomaticos AsientoAuto = null;
	
	for(int i=0; i<tamanio; i++) {
		AsientoAuto = vAsientosAutomaticos.get(tamanio);
	
	%>
	
		<tr>
			<td width="10%">
				<input type="text" name="idCuentaParam" id="idCuentaParam" readonly value="< %= AsientoAuto.getIdAsiento() %>" class="form-control">
			</td>
			<td width="20%">
				<input type="text" name="nomCuentaParam" id="nomCuentaParam" value="< %= AsientoAuto.getCodigoAsiento() %>" class="form-control">
			</td>
			<td colspan="2" width="50%">
				<input type="text" name="descCuentaParam" id="descCuentaParam" value="< %= AsientoAuto.getDescAsiento() %>" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenDebe" id="porcenDebe" value="" class="form-control">
			</td>
			<td width="10%">
				<input type="text" name="porcenHaber" id="porcenHaber" value="" class="form-control">
			</td>
		</tr>
	< % 
		}
	%> -->

<%@include file="includes/footer.jsp"%>