<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="LISTA MANTENIMIENTO DE PARAMETROS PARA INFORME BALANCE DE SITUACIÓN" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<ul class="nav nav-tabs">
    		<li class="active">LISTA</li>
    		<li><a href="herramMantParamBalanSituFicha.jsp">FICHA</a></li>
    </ul>
    <table id="paramBalanSitu" class="table table-bordered table-hover data"
				width="100%" cellspacing="0">
				<thead>
					<tr>
						<th></th>
						<th>Código</th>
						<th>Descripción</th>
						<th>Cuentas</th>				
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<input type="checkbox">
						</td>
						<td>
							Código
						</td>
						<td>
							Descripción
						</td>
						<td>
							Cuentas
						</td>				
					</tr>					
				</tbody>
		</table>
    
<jsp:include page="herramMantParamBalanSituBotones.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

<%@include file="includes/footer.jsp"%>