<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="FACTURAS RECIBIDAS" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>
<table id="idFacEmi" class="table table-bordered table-hover data"
			width="100%" cellspacing="0">
			<thead>
				<tr>
					<th>Cuenta cliente</th>
					<th>Fecha</th>
					<th>Descripción</th>
					<th>Asiento</th>
					<th>Base IVA 1</th>
					<th>Base IVA 2</th>
					<th>Base IVA 3</th>
					<th>Base exenta</th>
					<th>Importe</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<a href="#">Cuenta cliente</a>
					</td>
					<td>
						<a href="#">Fecha</a>
					</td>
					<td>
						<a href="#">Descripción</a>
					</td>
					<td>
						<a href="#">Asiento</a>
					</td>
					<td>
						<a href="#">Base IVA 1</a>
					</td>
					<td>
						<a href="#">Base IVA 2</a>
					</td>
					<td>
						<a href="#">Base IVA 3</a>
					</td>
					<td>
						<a href="#">Base exenta</a>
					</td>
					<td>
						<a href="#">Importe</a>
					</td>
					
				</tr>
				
			</tbody>
		</table>
		<div class="col-lg-8">
			<div class="panel panel-default">
							<div class="panel-heading">
								Listados
							</div>
					<div class="panel-body">
						<div class="col-lg-12">
							<p>Ordenados por:</p>
							<div class="col-lg-6">
								<input type="radio" name="ordenlist" value="cliente" id="cliente"><label for="cliente"> Cuenta cliente</label><br>
								<input type="radio" name="ordenlist" value="fecha" id="fecha"><label for="fecha"> Fecha</label><br>
							</div>
							<div class="col-lg-6">
								<input type="checkbox" name="desglosaIVA" value="desglosaIVA" id="desglosaIVA"><label for="desglosaIVA"> Desglose de IVA</label>
							</div>
							<div class="col-lg-6">
								<label for="deFecha"> De fecha</label><input type="text" name="deFecha" value="deFecha" id="deFecha"><br>
								<label for="aFecha"> A fecha</label><input type="text" name="aFecha" value="aFecha" id="aFecha"><br>
								<input type="button" name="listar" value="Listar" class="btn-success btn btn-outline" id="listar" href="#">
							</div>
							<div class="col-lg-6">
								<label for="deCuentaProv"> De cuenta prov:</label><input type="text" name="deCuentaProv" value="deCuentaProv" id="deCuentaProv"><br>
								<label for="aCuentaProv"> A cuenta prov:</label><input type="text" name="aCuentaProv" value="aCuentaProv" id="aCuentaProv">
							</div>
						</div>
					</div>
			</div>
		</div>
		<div class="col-lg-4">
			<div class="panel panel-default">
							<div class="panel-heading">
								Listado
							</div>
					<div class="panel-body">
						<div class="col-lg-14">
							<p>Por importe (+3000...)</p>
							<label for="listaFactImpMenor"> De importe:</label><input type="text" name="listaFactImpMenor" value="listaFactImpMenor" id="listaFactImpMenor"><br>
							<label for="listaFactImpMayor"> A importe:</label><input type="text" name="listaFactImpMayor" value="listaFactImpMayor" id="listaFactImpMayor"><br>
							<input type="button" name="listar" value="Listar" class="btn-success btn btn-outline" id="listar" href="#">
						</div>
					</div>
			</div>
			
		</div>
		
		
<%@include file="includes/footer.jsp"%>