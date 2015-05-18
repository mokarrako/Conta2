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
	<h3>ACTUALIZAR INVENTARIO ANTES DE LA REALIZACI�N DEL ASIENTO DE AMORTIZACI�N</h3>
	<p>En esta operaci�n se actualizan los siguientes campos:</p>
	<p>-Fecha inicio de amortizaci�n de la contabilidad en uso (Se pondr� vac�a si ya est� amortizado)<br>
	   -D�as de amortizaci�n para ese a�o
	   -Valor neto (si era 0, se restar� VALOR COMPRA-AMORTIZACI�N ACUMULADA)
	   -Amotizaci�n prevista (fundamental para el asiento de amortizaci�n):
	   	(VALOR COMPRA - VALOR RESIDUAL)*PORC.AMOR./100/365*DIAS</p>
	<h4>Es recomendable realizar una c�pia de seguridad</h4>
	<input type="submit" class="form-control">	   		
</div>



<%@include file="includes/footer.jsp"%>