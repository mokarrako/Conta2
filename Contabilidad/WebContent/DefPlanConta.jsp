<%@page import="Contabilidad.Bean.ActivarEmpresa"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="DEFINICION PLAN CONTABLE" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<form>
		<div class="col-lg-3">
			<div class="panel panel-default">
						<div class="panel-heading">
							Visualizar
						</div>
				<div class="panel-body">
					<div class="col-lg-14">
						<input type="radio" name="formalist" value="todas" id="todas"><label for="todas"> Todas las cuentas</label><br>
						<input type="radio" name="formalist" value="subcuentas" id="subcuentas"><label for="subcuentas"> Sólo subcuentas</label><br>
					</div>
				</div>
			</div>
			<input type="button" name="nuevacuenta" value="Nueva" class="btn-success btn btn-outline" id="nuevacuenta" href="#">
			<input type="button" name="eliminarcuenta" value="Eliminar" class="btn-danger btn btn-outline" id="eliminarcuenta" href="#">
		</div>
		
		<div class="col-lg-6">	
				<div class="panel panel-default">
					<div class="panel-heading">
						Listados
					</div>
					<div class="panel-body">
						<div class="col-lg-4">
							<input type="radio" name="tipolist" value="cuentas" id="cuentas"><label for="cuentas"> De cuentas</label><br>
							<input type="radio" name="tipolist" value="saldos" id="saldos"><label for="saldos"> De saldos</label><br>
							<input type="radio" name="tipolist" value="meses" id="meses"><label for="meses"> De cuentas por meses</label><br>
							<input type="radio" name="tipolist" value="nivel" id="nivel"><label for="nivel"> Por nivel</label>
						</div>
						<div class="col-lg-4">
							<input type="checkbox" name="incsaldo" value="incsaldo" id="incsaldo"><label for="incsaldo"> Incluir saldos</label><br>
							<input type="checkbox" name="consaldo" value="consaldo" id="consaldo"><label for="consaldo"> Solo cuentas con saldo</label><br>
							<label for="nivel">Nivel: </label><input type="text" name="nivel" id="nivel" class="form-control">
						</div>
						<div class="col-lg-4">
							<input type="radio" name="ordenlist" value="xcuenta" id="xcuenta"><label for="xcuenta"> Por cuenta</label><br>
							<input type="radio" name="ordenlist" value="xalfabe" id="xalfabe"><label for="xalfabe"> Por orden alfabético</label>
							<input type="submit" value="Listar" onclick="msg()" class="btn btn-outline btn-primary botonbajodos"> 
						</div>
											
					</div>						
				</div>
		</div>
		<div class="col-lg-3 especial">
			<div class="panel panel-default">
						<div class="panel-heading">
							Buscar
						</div>
				<div class="panel-body">
					<div class="col-lg-14">
						<label for="scuenta"> Por cuenta</label><input type="text" name="scuenta" id="scuenta" class="form-control"><br>
						<label for="descr"> Por descripción</label><input type="text" name="descr" id="descr" class="form-control">
						<input type="submit" value="Buscar" onclick="msg()" class="btn btn-outline btn-primary">
					</div>
				</div>
			</div>
		</div>
		
		<table class="total">
		  <thead>
			  <tr class="oscurodos">
			    <th class="col-lg-2"><label for="cuenta">Cuenta</label></th>
			    <th class="col-lg-8"><label for="descr">Descripción</label></th>
			    <th class="col-lg-2"><label for="saldo">Saldo</label></th>
			  </tr>
		  </thead>
		  <tbody>
			  <tr>
			    <td class="col-lg-2"><input type="text" name="cuenta" id="cuenta" readonly value="" class="form-control"></td>
				<td class="col-lg-8"><input type="text" id="descr" name="descr" value="" class="form-control"></td>
				<td class="col-lg-2"><input type="text" id="saldo" name="saldo" value="" class="form-control"></td>
			  </tr>
		 
		  
		  </tbody>
		  
		</table>
</form>

<%@include file="includes/footer.jsp"%>