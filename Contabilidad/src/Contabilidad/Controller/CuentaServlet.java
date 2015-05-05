package Contabilidad.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Contabilidad.Bean.Cuenta;
import Contabilidad.Constantes.Constantes;
import Contabilidad.Modelo.DAO.DAOFactory;
import Contabilidad.Modelo.DAO.ModelException;
import Contabilidad.Modelo.Interfaces.ICuentaDAO;

/**
 * Servlet implementation class CuentaServlet
 */
public class CuentaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final int CERO = 0;

	DAOFactory factoria = null;
	ICuentaDAO daoCuenta = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CuentaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");

			factoria = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
			daoCuenta = factoria.getCuentaDAO();

			if (request.getParameter("id") == null) {
				ArrayList<Cuenta> cuenta = daoCuenta.getAll();

				request.setAttribute(Constantes.ATT_CUENTAS, cuenta);
				// forward a jsp de busqueda
				request.getRequestDispatcher(Constantes.JSP_DEFPLANCONT).forward(
						request, response);

			} else {
				Cuenta c = new Cuenta();
				c.setIdCuenta(Integer.parseInt(request.getParameter("id")));
				Cuenta cuent = daoCuenta.getById(c);

				request.setAttribute(Constantes.ATT_CUENTAS, cuent);
				// forward a jsp de busqueda
				request.getRequestDispatcher(Constantes.JSP_CUENTAFORM)
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
				daoCuenta = factoria.getCuentaDAO();
			}
			String op = request.getParameter("acc");
			Cuenta c = null;

			if (op.equals(Constantes.OP_CREAR)) {

				c = new Cuenta(CERO, request.getParameter("cuenta"),
						request.getParameter("descripcion"), request.getParameter("saldo"));

				int idnuevo = daoCuenta.insert(c);

				if (idnuevo >= CERO) {
					System.out.println(idnuevo);
					System.out.println("bien insertada");
				} else {
					System.out.println("mal insertada");
				}

				request.setAttribute(Constantes.ATT_CUENTA, c);

			} else if (op.equals(Constantes.OP_ACTUALIZAR)) {
				idcontacto = request.getParameter("idcontacto");

				c = requestToCuenta(request);

				if (daoCuenta.update(c)) {
					System.out.println("bien actualizado");
				} else {
					System.out.println("mal actualizado");
				}

				request.setAttribute(Constantes.ATT_CUENTA, c);

			} else if (op.equals(Constantes.OP_ELIMINAR)) {
				idcontacto = request.getParameter("idEliminar");

				String[] idEliminar = idcontacto.split(";");

				Cuenta cuentaEliminar = new Cuenta();
				for (int i = 0; i < idEliminar.length; i++) {

					cuentaEliminar.setIdCuenta(Integer.parseInt(idEliminar[i]));

					if (daoCuenta.delete(cuentaEliminar)) {
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
	 * Recoger los parametros de la request y crear <code>Cuenta</code>.
	 * Tambien gestiona los mensajes para el usuario
	 *
	 * @param request
	 * @return <code>Cuenta</code> inicializada con los parametros de la
	 *         request, en caso de fallo null
	 */
	Cuenta requestToCuenta(HttpServletRequest request) {
		Cuenta c = new Cuenta();

		// TODO alternativa para el constructor de insertar nuevo o
		// eliminar/editar
		try {

			String cuenta = request.getParameter("cuenta");
			String descripcion = request.getParameter("descripcion");
			String saldo = request.getParameter("saldo");

			c.setCuenta(cuenta);
			c.setDescripcion(descripcion);
			c.setSaldo(saldo);
			
		} catch (Exception e) {
			c = null;
			e.printStackTrace();
		}
		return c;
	}

}
