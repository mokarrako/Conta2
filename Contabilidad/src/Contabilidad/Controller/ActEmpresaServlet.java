package Contabilidad.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Contabilidad.Bean.ActivarEmpresa;
import Contabilidad.Bean.Iva;
import Contabilidad.Constantes.Constantes;
import Contabilidad.Modelo.DAO.DAOFactory;
import Contabilidad.Modelo.DAO.ModelException;
import Contabilidad.Modelo.Interfaces.IActivarEmpresaDAO;
import Contabilidad.Modelo.Interfaces.IIVADAO;

/**
 * Servlet implementation class ContabilidadServlet
 */
public class ActEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final int CERO = 0;

	DAOFactory factoria = null;
	IActivarEmpresaDAO daoActEmpresa = null;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		try {
			request.setCharacterEncoding("UTF-8");

			factoria = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
			daoActEmpresa = factoria.getActivarEmpresaDAO();

			if (request.getParameter("id") == null) {
				ArrayList<ActivarEmpresa> ActivarEmpresa = daoActEmpresa
						.getAll();

				request.setAttribute(Constantes.ATT_EMPRESAS, ActivarEmpresa);
				// forward a jsp de busqueda
				request.getRequestDispatcher(Constantes.JSP_ACTEMP).forward(
						request, response);

			} else {
				ActivarEmpresa ae = new ActivarEmpresa();
				ae.setIdEmpresa(Integer.parseInt(request.getParameter("id")));
				ActivarEmpresa actEm = daoActEmpresa.getById(ae);

				request.setAttribute(Constantes.ATT_EMPRESAS, actEm);
				// forward a jsp de busqueda
				request.getRequestDispatcher(Constantes.JSP_ACTEMPFORM)
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		try {
			request.setCharacterEncoding("UTF-8");
			String idcontacto = "";
			if (factoria == null) {
				factoria = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
				daoActEmpresa = factoria.getActivarEmpresaDAO();
			}
			String op = request.getParameter("acc");
			ActivarEmpresa ae = null;

			if (op.equals(Constantes.OP_CREAR)) {

				ae = new ActivarEmpresa(CERO, request.getParameter("empresa"),
						request.getParameter("anio"));

				int idnuevo = daoActEmpresa.insert(ae);

				if (idnuevo >= CERO) {
					System.out.println(idnuevo);
					System.out.println("bien insertada");
				} else {
					System.out.println("mal insertada");
				}

				request.setAttribute(Constantes.ATT_EMPRESA, ae);

			} else if (op.equals(Constantes.OP_ACTUALIZAR)) {
				idcontacto = request.getParameter("idcontacto");

				ae = requestToActEmpresa(request);

				if (daoActEmpresa.update(ae)) {
					System.out.println("bien actualizado");
				} else {
					System.out.println("mal actualizado");
				}

				request.setAttribute(Constantes.ATT_EMPRESA, ae);

			} else if (op.equals(Constantes.OP_ELIMINAR)) {
				idcontacto = request.getParameter("idEliminar");

				String[] idEliminar = idcontacto.split(";");

				ActivarEmpresa aeEliminar = new ActivarEmpresa();
				for (int i = 0; i < idEliminar.length; i++) {

					aeEliminar.setIdEmpresa(Integer.parseInt(idEliminar[i]));

					if (daoActEmpresa.delete(aeEliminar)) {
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
	ActivarEmpresa requestToActEmpresa(HttpServletRequest request) {
		ActivarEmpresa ae = new ActivarEmpresa();

		// TODO alternativa para el constructor de insertar nuevo o
		// eliminar/editar
		try {

			String nombre = request.getParameter("empresa");
			String anio = request.getParameter("anio");

			ae.setEmpresa(nombre);
			ae.setAnio(anio);

		} catch (Exception e) {
			ae = null;
			e.printStackTrace();
		}
		return ae;
	}
}
