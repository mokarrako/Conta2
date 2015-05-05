package Contabilidad.Modelo.MySql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Contabilidad.Bean.Cuenta;
import Contabilidad.Modelo.DAO.ModelException;
import Contabilidad.Modelo.DAO.MySqlDAOFactory;
import Contabilidad.Modelo.Interfaces.ICuentaDAO;


public class CuentaMySqlDAO implements ICuentaDAO {

	private Connection conexion = null;

	public final static String SQL_SELECT_ALL = "SELECT * FROM "
			+ ICuentaDAO.TABLA;
	public final static String SQL_SELECT_BYID = "SELECT * FROM "
			+ ICuentaDAO.TABLA + " WHERE " + ICuentaDAO.COL_IDCUENTA + "=?";

	public final static String SQL_INSERT = "INSERT INTO "
			+ ICuentaDAO.TABLA
			+ " (" + ICuentaDAO.COL_CUENTA + ", " + ICuentaDAO.COL_DESCRIPCION + ", " + ICuentaDAO.COL_SALDO + ") VALUES ( ? , ? , ?)";

	public final static String SQL_DELETE = "DELETE FROM " + ICuentaDAO.TABLA
			+ " WHERE " + ICuentaDAO.COL_IDCUENTA + "=?";

	public final static String SQL_UPDATE = "UPDATE "
			+ ICuentaDAO.TABLA
			+ " SET " + ICuentaDAO.COL_CUENTA + "=?, " + ICuentaDAO.COL_DESCRIPCION + "=?," + ICuentaDAO.COL_DESCRIPCION + "=?, WHERE " + ICuentaDAO.COL_IDCUENTA + "=?";

	@Override
	public ArrayList<Cuenta> getAll() throws ModelException {
		ArrayList<Cuenta> cuenta = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			cuenta = new ArrayList<Cuenta>();
			st = conexion.createStatement();
			rs = st.executeQuery(SQL_SELECT_ALL);
			Cuenta c = null;
			while (rs.next()) {
				c = new Cuenta(rs.getInt(ICuentaDAO.COL_IDCUENTA),
						rs.getString(ICuentaDAO.COL_CUENTA), rs.getString(ICuentaDAO.COL_DESCRIPCION), rs.getString(ICuentaDAO.COL_SALDO));
				cuenta.add(c);
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
		return cuenta;
	}

	@Override
	public synchronized Cuenta getById(Cuenta c) {
		Cuenta cuent = new Cuenta();
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			st = conexion.prepareStatement(SQL_SELECT_BYID);
			st.setInt(1, c.getIdCuenta());

			rs = st.executeQuery();

			cuent.setIdCuenta(rs.getInt(ICuentaDAO.COL_IDCUENTA));
			cuent.setCuenta(rs.getString(ICuentaDAO.COL_CUENTA));
			cuent.setDescripcion(rs.getString(ICuentaDAO.COL_DESCRIPCION));
			cuent.setSaldo(rs.getString(ICuentaDAO.COL_SALDO));
			
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
		return cuent;
	}

	@Override
	public synchronized int insert(Cuenta c) throws ModelException {
		int idNuevo = -1;
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			conexion = MySqlDAOFactory.getInstance().conectar();
			st = conexion.prepareStatement(SQL_INSERT,
					Statement.RETURN_GENERATED_KEYS);
			st.setString(1, c.getCuenta());
			st.setString(2, c.getDescripcion());
			st.setString(3, c.getSaldo());
			
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
	public synchronized boolean delete(Cuenta c) {
		boolean correcto = false;

		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			st = conexion.prepareStatement(SQL_DELETE);
			st.setInt(1, c.getIdCuenta());

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
	public synchronized boolean update(Cuenta c) {
		boolean correcto = false;
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			st = conexion.prepareStatement(SQL_UPDATE);
			st.setString(1, c.getCuenta());
			st.setString(2, c.getDescripcion());
			st.setString(3, c.getSaldo());
			
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
