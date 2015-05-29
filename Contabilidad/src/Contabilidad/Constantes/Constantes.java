package Contabilidad.Constantes;

/**
 * Contiene Constantes a utilizar en la agenda
 * <ul>
 * <li>Acciones a Ejecutar</li>
 * <li>Nombre de las columnas de la vista de la agenda</li>
 * </ul>
 *
 * @author Curso
 *
 */
public class Constantes {
	
	// Listado de posibles acciones a ejecutar
	public static final String OP_KEY = "acc";
	public static final String OP_BUSCAR = "f";
	public static final String OP_ELIMINAR = "d";
	public static final String OP_ACTUALIZAR = "u";
	public static final String OP_CREAR = "c";

	// Servlet
	public static final String CONTROLLER_ACTEMPRESA = "ActEmpresaServlet";
	public static final String CONTROLLER_IVA = "IvaServlet";	
	public static final String CONTROLLER_CUENTA = "CuentaServlet";
	public static final String CONTROLLER_CONCEPCONTAB = "ConceptosContablesServlet";
	
	// JSPs
	public static final String JSP_ACTEMP = "ActivarEmpresa.jsp";
	public static final String JSP_ACTEMPFORM = "ActEmpresaForm.jsp";
	public static final String JSP_EDITEMP = "EditarEmpresa.jsp";
	public static final String JSP_NUEVOIVA = "NuevoIva.jsp";
	public static final String JSP_DEFPLANCONT = "DefPlanContable.jsp";
	public static final String JSP_CUENTAFORM = "CuentaForm.jsp";
	public static final String JSP_CONCEPTOSCONT = "ConceptConta.jsp";
	public static final String JSP_CONCEPTOSFORM = "ConceptosForm.jsp";

	// Atrinuttos
	public static final String ATT_EMPRESAS = "empresas";
	public static final String ATT_EMPRESA = "empresa";
	
	public static final String ATT_IVAS = "ivas";
	public static final String ATT_IVA = "iva";
	
	public static final String ATT_CUENTAS = "cuentas";
	public static final String ATT_CUENTA = "cuenta";
	
	public static final String ATT_CONCEPTOSCONTABLES = "conceptoscontables";
	public static final String ATT_CONCEPTOS = "conceptos";

	public static final String ATT_ASIENTOSAUTOMATICOS = "asientosautomaticos";
	public static final String ATT_ASIENTOS = "asientos";
}
