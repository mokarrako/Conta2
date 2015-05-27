<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="LIQUDACION IVA" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

		
					
							<h3>Liquidación de IVA</h3>
							<div>
								<p>Trimestres</p>
								<input type="radio" name="trimes" value="prim" id="prim"><label for="prim"> 1º</label>
								<input type="radio" name="trimes" value="seg" id="seg"><label for="seg"> 2º</label>
								<input type="radio" name="trimes" value="ter" id="ter"><label for="ter"> 3º</label>
								<input type="radio" name="trimes" value="cuar" id="cuar"><label for="cuar"> 4º</label>
								<input type="radio" name="trimes" value="todos" id="todos"><label for="todos"> Todos</label><br>
								<label for="deFecha"> De fecha:</label><input type="text" name="deFecha" value="deFecha" id="deFecha"><br>
								<label for="aFecha"> Fecha:</label><input type="text" name="aFecha" value="aFecha" id="aFecha"><br>							
								<input type="button" name="listaLiqIVA" value="Listar" id="listaLiqIVA" class="btn-success btn btn-outline">
							</div>
			
			


		
		
		
<%@include file="includes/footer.jsp"%>