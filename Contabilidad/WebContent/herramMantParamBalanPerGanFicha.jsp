<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="FICHA MANTENIMIENTO DE PARAMETROS PARA INFORME BALANCE DE PÉRDIDAS Y GANANCIAS" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<ul class="nav nav-tabs">
    		<li><a href="herramMantParamBalanPerGanLista.jsp">LISTADO</a></li>
    		<li class="active">FICHA</li>
    </ul>
    <label>Código:<input type="text" class="form-control"></label>
    <label>Descripción:<Input type="text" class="form-control"></label>
    <h4 class="azul">Cuentas</h4>
    <table>
    	<tr>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    	</tr>
    	<tr>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    	</tr>
    	<tr>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    	</tr>
    	<tr>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    	</tr>
    	<tr>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    	</tr>
    	<tr>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    		<td><Input type="text" class="form-control">
    		</td>
    	</tr>
    </table>
    
<jsp:include page="herramMantParamBalanPerGanBotones.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>
    


<%@include file="includes/footer.jsp"%>