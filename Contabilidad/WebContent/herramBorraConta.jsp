<%@page import="Contabilidad.Bean.Cuenta"%>
<%@page import="Contabilidad.Constantes.Constantes"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="includes/head.jsp">
	<jsp:param value="BORRADO DE UNA CONTABILIDAD" name="titulo" />
</jsp:include>
<jsp:include page="includes/navconta.jsp">
	<jsp:param value="false" name="esNuevo" />
</jsp:include>

	<h4>BORRADO DE UNA CONTABILIDAD COMPLETA</h4>
	<h4 class="rojo">(REALIZA ANTES COPIA DE SEGURIDAD)</h4>
	<p>LA CONTABILIDAD QUE DESEEMOS BORRAR NO DEBE ESTAR ABIERTA</p>
	<p>Esta opción destruye todos los ficheros de la contabilidad seleccionada para su borrado. Como se trata de un proceso irreversible, recomendamos al usuario que saque copias de seguridad antes de seguir adelante.</p>
	<label for="idBorra">Contabilidad que vamos a borrar <select class="form-control" class="form-control" id="idBorra"></select></label>
	<label for="anioBorra">Año: <input type="text" id="anioBorra" value="" class="form-control"></label>
	<input type="text" id="nombreBorra" value="" class="form-control">
	<input type="button" class="form-control" value="BORRADO DE CONTABILIDAD">


<%@include file="includes/footer.jsp"%>