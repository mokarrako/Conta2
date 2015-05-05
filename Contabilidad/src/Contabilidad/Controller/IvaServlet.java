package Contabilidad.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Contabilidad.Bean.Iva;
import Contabilidad.Constantes.Constantes;
import Contabilidad.Modelo.DAO.DAOFactory;
import Contabilidad.Modelo.DAO.ModelException;
import Contabilidad.Modelo.Interfaces.IIVADAO;

/**
 * Servlet implementation class IvaServlet
 */
public class IvaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final int CERO = 0;

	DAOFactory factoria = null;
	IIVADAO daoIva = null;

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
			daoIva = factoria.getIvaDAO();

			if (request.getParameter("id") == null) {
				ArrayList<Iva> iva = daoIva
						.getAll();

				request.setAttribute(Constantes.ATT_IVAS, iva);
				// forward a jsp de busqueda
				request.getRequestDispatcher(Constantes.JSP_EDITEMP).forward(
						request, response);

			} else {
				Iva i = new Iva();
				i.setIdIva(Integer.parseInt(request.getParameter("id")));
				Iva iva = daoIva.getById(i);

				request.setAttribute(Constantes.ATT_IVAS, iva);
				// forward a jsp de busqueda
				request.getRequestDispatcher(Constantes.JSP_EDITEMP)
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
				daoIva = factoria.getIvaDAO();
			}
			String op = request.getParameter("acc");
			Iva i = null;

			if (op.equals(Constantes.OP_CREAR)) {

				i = new Iva(CERO,request.getParameter("iva"),
						request.getParameter("descripcion"));

				int idnuevo = daoIva.insert(i);

				if (idnuevo >= CERO) {
					System.out.println(idnuevo);
					System.out.println("bien insertada");
				} else {
					System.out.println("mal insertada");
				}

				request.setAttribute(Constantes.ATT_IVA, i);

			} else if (op.equals(Constantes.OP_ACTUALIZAR)) {
				idcontacto = request.getParameter("idcontacto");

				i = requestToIva(request);

				if (daoIva.update(i)) {
					System.out.println("bien actualizado");
				} else {
					System.out.println("mal actualizado");
				}

				request.setAttribute(Constantes.ATT_IVA, i);

			} else if (op.equals(Constantes.OP_ELIMINAR)) {
				idcontacto = request.getParameter("idEliminar");

				String[] idEliminar = idcontacto.split(";");

				Iva ivaEliminar = new Iva();
				for (int j = 0; j < idEliminar.length; j++) {

					ivaEliminar.setIdIva(Integer.parseInt(idEliminar[j]));

					if (daoIva.delete(ivaEliminar)) {
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
	Iva requestToIva(HttpServletRequest request) {
		Iva i = new Iva();

		// TODO alternativa para el constructor de insertar nuevo o
		// eliminar/editar
		try {

			String iva = request.getParameter("iva");
			String desc = request.getParameter("descripcion");

			i.setIva(iva);
			i.setDescripcion(desc);

		} catch (Exception e) {
			i = null;
			e.printStackTrace();
		}
		return i;
	}
}
