package Contabilidad.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Contabilidad.Bean.ConceptosContables;
import Contabilidad.Constantes.Constantes;
import Contabilidad.Modelo.DAO.DAOFactory;
import Contabilidad.Modelo.DAO.ModelException;
import Contabilidad.Modelo.Interfaces.IConceptosContablesDAO;

/**
 * Servlet implementation class ConceptosContablesServlet
 */
public class ConceptosContablesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final int CERO = 0;

	DAOFactory factoria = null;
	IConceptosContablesDAO daoConcepCont = null;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");

			factoria = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
			daoConcepCont = factoria.getConceptosContablesDAO();

			if (request.getParameter("id") == null) {
				ArrayList<ConceptosContables> ConceptosContables = daoConcepCont
						.getAll();

				request.setAttribute(Constantes.ATT_EMPRESAS, ConceptosContables);
				// forward a jsp de busqueda
				request.getRequestDispatcher(Constantes.JSP_ACTEMP).forward(
						request, response);

			} else {
				ConceptosContables concepConta = new ConceptosContables();
				concepConta.setIdConcepCont(Integer.parseInt(request.getParameter("id")));
				ConceptosContables conceptos = daoConcepCont.getById(concepConta);

				request.setAttribute(Constantes.ATT_CONCEPTOSCONTABLES, conceptos);
				// forward a jsp de busqueda
				request.getRequestDispatcher(Constantes.JSP_CONCEPTOSFORM)
						.forward(request, response);
			}

		} catch (ModelException e) {
			request.getRequestDispatcher("errorModelo.jsp").forward(request,
					response);

		} catch (Exception e) {
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			String idcontacto = "";
			if (factoria == null) {
				factoria = DAOFactory.getDAOFactory(DAOFactory.MYSQL);				
				daoConcepCont = factoria.getConceptosContablesDAO();
			}
			String op = request.getParameter("acc");
			ConceptosContables cc = null;

			if (op.equals(Constantes.OP_CREAR)) {

				cc = new ConceptosContables(CERO, request.getParameter("descripcion"));

				int idnuevo = daoConcepCont.insert(cc);

				if (idnuevo >= CERO) {
					System.out.println(idnuevo);
					System.out.println("bien insertada");
				} else {
					System.out.println("mal insertada");
				}

				request.setAttribute(Constantes.ATT_CONCEPTOS, cc);

			} else if (op.equals(Constantes.OP_ACTUALIZAR)) {
				idcontacto = request.getParameter("idcontacto");

				cc = requestToConceptCont(request);

				if (daoConcepCont.update(cc)) {
					System.out.println("bien actualizado");
				} else {
					System.out.println("mal actualizado");
				}

				request.setAttribute(Constantes.ATT_EMPRESA, cc);

			} else if (op.equals(Constantes.OP_ELIMINAR)) {
				idcontacto = request.getParameter("idEliminar");

				String[] idEliminar = idcontacto.split(";");

				ConceptosContables ccEliminar = new ConceptosContables();
				for (int i = 0; i < idEliminar.length; i++) {

					ccEliminar.setIdConcepCont(Integer.parseInt(idEliminar[i]));

					if (daoConcepCont.delete(ccEliminar)) {
						System.out.println("bien borrado");
					} else {
						System.out.println("mal borrado");
					}
				}

				// Listar todas las empresas
				// doGet(request, response);
				// request.getRequestDispatcher(Constantes.JSP_LISTADO).forward(
				// request, response);
			}
			doGet(request, response);
		} catch (ModelException e) {
			request.getRequestDispatcher("errorModelo.jsp").forward(request,
					response);
		} catch (Exception e) {
			e.printStackTrace();
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		}

	}

	/**
	 * Recoger los parametros de la request y crear <code>ActivarEmpresa</code>.
	 * Tambien gestiona los mensajes para el usuario
	 *
	 * @param request
	 * @return <code>ActivarEmpresa</code> inicializada con los parametros de la
	 *         request, en caso de fallo null
	 */
	ConceptosContables requestToConceptCont(HttpServletRequest request) {
		ConceptosContables cc = new ConceptosContables();

		// TODO alternativa para el constructor de insertar nuevo o
		// eliminar/editar
		try {

			String descripcion = request.getParameter("descripcion");
			
			cc.setDescConcepCont(descripcion);
			
		} catch (Exception e) {
			cc = null;
			e.printStackTrace();
		}
		return cc;
	}
}
