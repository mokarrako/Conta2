<%@page import="Contabilidad.Bean.ActivarEmpresa"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="EDITAR EMPRESA ACTIVA" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<%
	//recoger atributo empresa
	ActivarEmpresa e = (ActivarEmpresa) request
			.getAttribute(Constantes.ATT_EMPRESA);
	String op = Constantes.OP_ACTUALIZAR;
%>


<table>
	<thead>
		<tr>
			<th><label for="id">Cod.Empresa</label></th>
			<th colspan="3"><label for="empresa">Empresa</label></th>
			<th><label for="ano">Año</label></th>
			<th><label for="ancho">Ancho</label></th>
			<th><label for="cuenta">Cuenta</label></th>
			<th><label for="fehchaini">Fecha inicio</label></th>
			<th><label for="fechafin">Fecha fin</label></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
				<input type="text" name="id" id="id" readonly value="" class="form-control">
			</td>
			<td colspan="3">
				<input type="text" name="empresa" id="empresa" value="" class="form-control">
			</td>
			<td>
				<input type="text" name="ano" id="ano" value="" class="form-control">
			</td>
			<td>
				<input type="text" name="ancho" id="ancho" value="" class="form-control">
			</td>
			<td>
				<input type="text" name="cuenta" id="cuenta" value="" class="form-control">
			</td>
			<td>
				<input type="text" name="fechaini" id="fechaini" value="" class="form-control">
			</td>
			<td>
				<input type="text" name="fechafin" id="fechafin" value="" class="form-control">
			</td>
		</tr>
		<tr>
			<td><label>Tipo</label></td>
			<td><label><a href="<%= Constantes.JSP_NUEVOIVA %>">%IVA</a></label></td>
			<td colspan="3"><label>Cuenta</label></td>
			<td colspan="4"><label>Descripción</label></td>
		</tr>
		<tr>
			<td rowspan="2"><label>Normal</label></td>
			<td rowspan="2"><input type="text" name="normal" value="" class="form-control"></td>
			<td colspan="2"><label>Soportado</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td colspan="2"><label>Repercutido</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td rowspan="2"><label>Reducido</label></td>
			<td rowspan="2"><input type="text" name="normal" value="" class="form-control"></td>
			<td colspan="2"><label>Soportado</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td colspan="2"><label>Repercutido</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td rowspan="2"><label>Superreducido</label></td>
			<td rowspan="2"><input type="text" name="normal" value="" class="form-control"></td>
			<td colspan="2"><label>Soportado</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td colspan="2"><label>Repercutido</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td rowspan="2"><label>Exento</label></td>
			<td rowspan="2"><input type="text" name="normal" value="" class="form-control"></td>
			<td colspan="2"><label>Soportado</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td colspan="2"><label>Repercutido</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td rowspan="2"><label>Rec.Equiv.Normal</label></td>
			<td rowspan="2"><input type="text" name="normal" value="" class="form-control"></td>
			<td colspan="2"><label>Soportado</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td colspan="2"><label>Repercutido</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td rowspan="2"><label>Rev.Equiv.Reucido</label></td>
			<td rowspan="2"><input type="text" name="normal" value="" class="form-control"></td>
			<td colspan="2"><label>Soportado</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td colspan="2"><label>Repercutido</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td rowspan="2"><label>Rev.Equiv.Superreducido</label></td>
			<td rowspan="2"><input type="text" name="normal" value="" class="form-control"></td>
			<td colspan="2"><label>Soportado</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
		<tr>
			<td colspan="2"><label>Repercutido</label></td>
			<td><input type="text" name="tipo" value="" class="form-control"></td>
			<td colspan="4"><input type="text" name="descipcion" value="" class="form-control"></td>
		</tr>
			
		
	</tbody>
</table>
<div class="col-lg-6">
	<!--  <form
		action="< %=request.getContextPath() + "/"
					+ Constantes.CONTROLLER_CONTABILIDAD%>"
		method="post">
	-->
	<div class="form-group col-lg-2">
		<label>Cod.Empresa</label> <input type="text" name="id" readonly
			value="" class="form-control">
		<!-- 	
		value="< %=e.getIdEmpresa()%>"			
 		-->

	</div>
	<div class="form-group col-lg-2">
		<label>Empresa</label> <input type="text" name="empresa" value=""
			class="form-control">
	</div>
	<!-- 	
		value="< %=e.getEmpresa()%>"			
 		-->

	<div class="form-group col-lg-2">
		<label>Año</label> <input type="text" name="anio" value=""
			class="form-control">
	</div>
	<!-- 	
		value="< %=e.getAnio()%>"			
 		-->

	<div class="form-group col-lg-2">
		<label>Ancho cuenta</label> <input type="text" name="acuenta" value="9"
			class="form-control">
	</div>
	<div class="form-group col-lg-2">
		<label>Fecha inicio</label> <input type="text" name="fechaini" value=""
			class="form-control">
	</div>
	<div class="form-group col-lg-2">
		<label>Fecha fin</label> <input type="text" name="fechafin" value=""
			class="form-control">
	</div>
</div>
<div class="col-lg-12">
	<div class="form-group col-lg-2">
		<label>TIPO</label>
		<div class="form-group">
			<label>Normal</label>
		</div>
		<br><br><br>
		<div class="form-group">
			<label>Reducido</label>
		</div>
		<br><br><br>
		<div class="form-group">
			<label>Superreducido</label>
		</div>
		<br><br><br>
		<div class="form-group">
			<label>Exento</label>
		</div>
		<br><br><br>
		<div class="form-group">
			<label>Rec.Equiv.Normal</label>
		</div>
		<br><br>
		<div class="form-group">
			<label>Rec.Equiv.Reducido</label>
		</div>
		<br><br>
		<div class="form-group">
			<label>Rec.Equiv.Superred.</label>
		</div>
	</div>

	<div class="form-group col-lg-1">
		<label><a href="<%= Constantes.JSP_NUEVOIVA %>">%IVA</a></label>

		<div class="form-group">
			<input type="text" name="normal" value="" class="form-control">
		</div>
		<br><br>
		<div class="form-group">
			<input type="text" name="reducido" value="" class="form-control">
		</div>
		<br><br>
		<div class="form-group">
			<input type="text" name="superred" value="" class="form-control">
		</div>
		<br><br>
		<div class="form-group">
			<input type="text" name="exento" value="" class="form-control">
		</div>
		<br><br><br>
		<div class="form-group">
			<input type="text" name="receqnormal" value="" class="form-control">
		</div>
		<br><br>
		<div class="form-group">
			<input type="text" name="receqred" value="" class="form-control">
		</div>
		<br><br>
		<div class="form-group">
			<input type="text" name="receqsuperred" value="" class="form-control">
		</div>
	</div>


	<div class="form-group col-lg-1">
		<label>CUENTA</label>
		<%
			for (int i = 0; i < 7; i++) {
		%>

		<label>Soportado</label> <br></br> <label>Repercutido</label> <br></br>
		<%
			}
		%>
	</div>
	<div class="form-group col-lg-1">	
		<br>
		<%
			for (int i = 0; i < 7; i++) {
		%>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<%
			}
		%>
	</div>

	<div class="form-group col-lg-2">
		<label>DESCRIPCION</label>

		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
		<div class="form-group">
			<input type="text" name="anio" value="" class="form-control">
		</div>
	</div>
	<!-- 
		<input type="hidden" name="< %=Constantes.OP_KEY%>" value="< %=op%>">
		<input type="submit" class="btn btn-outline btn-primary"
			value="Guardar">

	</form>
 -->
</div>


<%@include file="includes/footer.jsp"%>