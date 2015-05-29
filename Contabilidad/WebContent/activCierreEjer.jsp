<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="ACTIVIDADES DE CIERRE DE EJERCICIO" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<h3>Orden en los procesos de cierre de fin de año:</h3>
	<ul>
		<li>Actualizar inventario (operación que se realiza en la opción correspondiente del inventario).</li>
		<li>Realizar el asiento de amortizaciones (punto 1- en esta página).</li>
		<li>Realizar el asiento de regularización de existencias (punto 2- en esta página).</li>
		<li>Realizar el asiento de impuestos antes de beneficios (manualmente en la introducción de asientos).</li>
		<li>Emitir listados de Balances y Cuenta de Resultados (Pérd. y Gan.) (en las opciones correspondientes).</li>
		<li>Ejecutar la opción de traspaso a Pérdidas y Ganancias (punto 3- en esta página).</li>
		<li>Ejecutar la opción de traspaso de saldos iniciales (punto 4- en esta página).</li>
		<li>Realizar el asiento de cierre (punto 5- de esta página).</li>
		<li>Emitir listados anuales de diarios y mayores.</li>
	</ul>
	<input type="button" value="Paso de asiento de cierre de la empresa en uso a asiento de apertura de la misma empresa del año siguiente" class="form-control"> 
	<p>(los asientos, facturas, etc, sólo podrán ser modificados, una vez realizado el cierre, si se ejecutan las opciones 7 y 6, en este orden, de esta página)</p>
	<div class="col-lg-6">
		<input type="radio" name="opCierre" value="op1" id="op1"><label for="op1" class="azul"> 1- Asiento de amortizaciones.</label><br>
		<input type="radio" name="opCierre" value="op2" id="op2"><label for="op2" class="azul"> 2- Asiento de regularización de exsitencias.</label><br>
		<input type="radio" name="opCierre" value="op3" id="op3"><label for="op3" class="granate"> 3- Asiento de traspaso a Pérdidas y Ganacias.</label><br>
		<input type="radio" name="opCierre" value="op4" id="op4"><label for="op4" class="granate"> 4- Traspaso de saldos iniciales.</label><br>
		<input type="radio" name="opCierre" value="op5" id="op5"><label for="op5" class="granate"> 5- Asiento de cierre.</label><br>
		<input type="radio" name="opCierre" value="op6" id="op6"><label for="op6" class="verde"> 6- Anular asiento de Pérdidas y Ganancias.</label><br>
		<input type="radio" name="opCierre" value="op7" id="op7"><label for="op7" class="verde"> 7- Anular asiento de cierre.</label><br>
	</div>
	<div class="col-lg-6">
		<h4>Empresa en uso sobre la que se realiza el proceso:</h4>
		<input type="text" class="form-control">
		<h4 class="rojo">REALIZAR ANTES COPIA DE SEGURIDAD</h4>
		<input type="button" value="EJECUTAR OPCION MARCADA EN LOS BOTONES" class="form-control">
	</div>

<%@include file="includes/footer.jsp"%>