<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="ACTUALIZAR INVENTARIO" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<div class="col-lg-8">
	<h3>ACTUALIZAR INVENTARIO ANTES DE LA REALIZACIÓN DEL ASIENTO DE AMORTIZACIÓN</h3>
	<p>En esta operación se actualizan los siguientes campos:</p>
	<p>-Fecha inicio de amortización de la contabilidad en uso (Se pondrá vacía si ya está amortizado)<br>
	   -Días de amortización para ese año
	   -Valor neto (si era 0, se restará VALOR COMPRA-AMORTIZACIÓN ACUMULADA)
	   -Amotización prevista (fundamental para el asiento de amortización):
	   	(VALOR COMPRA - VALOR RESIDUAL)*PORC.AMOR./100/365*DIAS</p>
	<h4>Es recomendable realizar una cópia de seguridad</h4>
	<input type="submit" class="form-control">	   		
</div>



<%@include file="includes/footer.jsp"%>