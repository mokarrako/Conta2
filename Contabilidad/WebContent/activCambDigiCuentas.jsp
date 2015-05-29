<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="CAMBIAR DIGITOS DE CUENTAS" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<h3>Modificación de los digitos de cuenta de la empresa en uso: (HAZ ANTES COPIA DE SEGURIDAD)</h3>
	<p>REALIZAR ESTA OPCIÓN DE CAMBIO AUTOMÁTICO DE LOS DIGITOS DE CUENTA SUPONE ACEPTAR LO SIGUIENTE:</p>
	<ol>
		<li>Si los nuevos dígitos son superiores a los actuales, se incrementaran en 0 (ceros) las cuentas a partir del quinto dígito inclusive.<br>
			Ejemplo: Si habia una cuenta 6817005 y se incrementa a 9, la nueva cuenta será: 681700005.
		</li>
		<li>Si los nuevos digitos son inferiores a los actuales, se restarán 0 (ceros) a partir del quinto dígito.<br>
			Ejemplo: Si habia una cuenta 681700005 y se reduce a 7, la nueva cuenta sería: 6817005. Si era 430001234, la nueva cuenta sería: 4300234. POR TANTO EL PROGRAMA AVISA ANTES DE SEGUIR CON LA OPERACIÓN.
		</li> 
	</ol>
	<div class="col-lg-6">
		<label for="id">Empresa:</label>
		<input type="text" name="id" id="id" readonly value="" class="form-control">
		<input type="text" name="empresa" id="empresa" value="" class="form-control">
		<label for="anio">Año:</label>
		<input type="text" name="año" id="anio" value="" class="form-control">
	</div>
	<div class="col-lg-6">
		<label>Digitos de cuenta actuales: <input type="text" name="actualDigit" id="actualDigit" value="" class="form-control"></label>
		<label>Nuevos dígitos de cuenta (7 a 10): <input type="text" name="nuevosDigit" id="nuevosDigit" value="9" class="form-control"></label>
		<input type="button" name="modifDigit" id="id" readonly value="MODIFICAR DIGITOS" class="form-control">
	</div>	


<%@include file="includes/footer.jsp"%>