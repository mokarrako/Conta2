package Contabilidad.Modelo.MySql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Contabilidad.Bean.ActivarEmpresa;
import Contabilidad.Modelo.DAO.ModelException;
import Contabilidad.Modelo.DAO.MySqlDAOFactory;
import Contabilidad.Modelo.Interfaces.IActivarEmpresaDAO;


public class ActivarEmpresaMySqlDAO implements IActivarEmpresaDAO {

	private Connection conexion = null;

	public final static String SQL_SELECT_ALL = "SELECT * FROM "
			+ IActivarEmpresaDAO.TABLA + " order by " + IActivarEmpresaDAO.COL_ANIO + " desc";
	public final static String SQL_SELECT_BYID = "SELECT * FROM "
			+ IActivarEmpresaDAO.TABLA + " WHERE " + IActivarEmpresaDAO.COL_IDEMPRESA + "=?";

	public final static String SQL_INSERT = "INSERT INTO "
			+ IActivarEmpresaDAO.TABLA
			+ " (" + IActivarEmpresaDAO.COL_EMPRESA + ", " + IActivarEmpresaDAO.COL_ANIO + ") VALUES ( ? , ?)";

	public final static String SQL_DELETE = "DELETE FROM " + IActivarEmpresaDAO.TABLA
			+ " WHERE " + IActivarEmpresaDAO.COL_IDEMPRESA + "=?";

	public final static String SQL_UPDATE = "UPDATE "
			+ IActivarEmpresaDAO.TABLA
			+ " SET " + IActivarEmpresaDAO.COL_EMPRESA + "=?, " + IActivarEmpresaDAO.COL_ANIO + "=?, WHERE " + IActivarEmpresaDAO.COL_IDEMPRESA + "=?";

	@Override
	public ArrayList<ActivarEmpresa> getAll() throws ModelException {
		ArrayList<ActivarEmpresa> ActivarEmpresa = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			ActivarEmpresa = new ArrayList<ActivarEmpresa>();
			st = conexion.createStatement();
			rs = st.executeQuery(SQL_SELECT_ALL);
			ActivarEmpresa ae = null;
			while (rs.next()) {
				ae = new ActivarEmpresa(rs.getInt(IActivarEmpresaDAO.COL_IDEMPRESA),
						rs.getString(IActivarEmpresaDAO.COL_EMPRESA), rs.getString(IActivarEmpresaDAO.COL_ANIO));
				ActivarEmpresa.add(ae);
			}

		} catch (Exception e) {

			e.printStackTrace();
			throw new ModelException(e.getMessage());

		} finally {

			// cerrar todos los objetos creados para el acceso de BBDD
			// cerrar ResultSet
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			// cerrar statements
			if (st != null) {
				try {
					st.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			// cerrar conexion
			MySqlDAOFactory.getInstance().desconectar();
		}
		return ActivarEmpresa;
	}

	@Override
	public synchronized ActivarEmpresa getById(ActivarEmpresa ae) {
		ActivarEmpresa actEm = new ActivarEmpresa();
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			st = conexion.prepareStatement(SQL_SELECT_BYID);
			st.setInt(1, ae.getIdEmpresa());

			rs = st.executeQuery();

			actEm.setIdEmpresa(rs.getInt(IActivarEmpresaDAO.COL_IDEMPRESA));
			actEm.setEmpresa(rs.getString(IActivarEmpresaDAO.COL_EMPRESA));
			actEm.setAnio(rs.getString(IActivarEmpresaDAO.COL_ANIO));
			
		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			// cerrar todos los objetos creados para el acceso de BBDD
			// cerrar ResultSet
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			// cerrar statements
			if (st != null) {
				try {
					st.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			// cerrar conexion
			MySqlDAOFactory.getInstance().desconectar();
		}
		return actEm;
	}

	@Override
	public synchronized int insert(ActivarEmpresa ae) throws ModelException {
		int idNuevo = -1;
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			conexion = MySqlDAOFactory.getInstance().conectar();
			st = conexion.prepareStatement(SQL_INSERT,
					Statement.RETURN_GENERATED_KEYS);
			st.setString(1, ae.getEmpresa());
			st.setString(2, ae.getAnio());
			
			int affectedRows = st.executeUpdate();
			if (affectedRows == 0) {
				throw new SQLException(
						"Creating user failed, no rows affected.");
			}

			try (ResultSet generatedKeys = st.getGeneratedKeys()) {
				if (generatedKeys.next()) {
					idNuevo = generatedKeys.getInt(1);
				} else {
					throw new SQLException(
							"Creating user failed, no ID obtained.");
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw new ModelException(e.getMessage());

		} finally {

			// cerrar todos los objetos creados para el acceso de BBDD
			// cerrar ResultSet
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			// cerrar statements
			if (st != null) {
				try {
					st.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			// cerrar conexion
			MySqlDAOFactory.getInstance().desconectar();
		}
		return idNuevo;
	}

	@Override
	public synchronized boolean delete(ActivarEmpresa ae) {
		boolean correcto = false;

		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			st = conexion.prepareStatement(SQL_DELETE);
			st.setInt(1, ae.getIdEmpresa());

			st.executeUpdate();
			correcto = true;

		} catch (Exception e) {

			e.printStackTrace();
		} finally {

			// cerrar todos los objetos creados para el acceso de BBDD
			// cerrar ResultSet
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			// cerrar statements
			if (st != null) {
				try {
					st.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			// cerrar conexion
			MySqlDAOFactory.getInstance().desconectar();
		}
		return correcto;
	}

	@Override
	public synchronized boolean update(ActivarEmpresa ae) {
		boolean correcto = false;
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			st = conexion.prepareStatement(SQL_UPDATE);
			st.setString(1, ae.getEmpresa());
			st.setString(2, ae.getAnio());
			
			st.executeUpdate();
			correcto = true;

		} catch (Exception e) {

			e.printStackTrace();

		} finally { // cerrar todos los objetos creados para el acceso de BBDD
			// cerrar ResultSet
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			// cerrar statements
			if (st != null) {
				try {
					st.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			// cerrar conexion
			MySqlDAOFactory.getInstance().desconectar();
		}
		return correcto;
	}

}
