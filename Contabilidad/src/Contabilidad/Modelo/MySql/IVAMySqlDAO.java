package Contabilidad.Modelo.MySql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Contabilidad.Bean.ActivarEmpresa;
import Contabilidad.Bean.Iva;
import Contabilidad.Modelo.DAO.ModelException;
import Contabilidad.Modelo.DAO.MySqlDAOFactory;
import Contabilidad.Modelo.Interfaces.IIVADAO;


public class IVAMySqlDAO implements IIVADAO {

	private Connection conexion = null;

	public final static String SQL_SELECT_ALL = "SELECT * FROM "
			+ IIVADAO.TABLA;
	public final static String SQL_SELECT_BYID = "SELECT * FROM "
			+ IIVADAO.TABLA + " WHERE " + IIVADAO.COL_IDIVA + "=?";

	public final static String SQL_INSERT = "INSERT INTO "
			+ IIVADAO.TABLA
			+ " (" + IIVADAO.COL_IVA + ", " + IIVADAO.COL_DESCRIPCION + ") VALUES ( ? , ?)";

	public final static String SQL_DELETE = "DELETE FROM " + IIVADAO.TABLA
			+ " WHERE " + IIVADAO.COL_IDIVA + "=?";

	public final static String SQL_UPDATE = "UPDATE "
			+ IIVADAO.TABLA
			+ " SET " + IIVADAO.COL_IVA + "=?, " + IIVADAO.COL_DESCRIPCION + "=?, WHERE " + IIVADAO.COL_IDIVA + "=?";

	@Override
	public ArrayList<Iva> getAll() throws ModelException {
		ArrayList<Iva> Iva  = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			Iva  = new ArrayList<Iva>();
			st = conexion.createStatement();
			rs = st.executeQuery(SQL_SELECT_ALL);
			Iva i = null;
			while (rs.next()) {
				i = new Iva(rs.getInt(IIVADAO.COL_IDIVA),
						rs.getString(IIVADAO.COL_IVA), rs.getString(IIVADAO.COL_DESCRIPCION));
				Iva.add(i);
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
		return Iva;
	}

	@Override
	public synchronized Iva getById(Iva i) {
		Iva iva = new Iva();
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			st = conexion.prepareStatement(SQL_SELECT_BYID);
			st.setInt(1, iva.getIdIva());

			rs = st.executeQuery();

			iva.setIdIva(rs.getInt(IIVADAO.COL_IDIVA));
			iva.setIva(rs.getString(IIVADAO.COL_IVA));
			iva.setDescripcion(rs.getString(IIVADAO.COL_DESCRIPCION));
			
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
		return iva;
	}

	@Override
	public synchronized int insert(Iva i) throws ModelException {
		int idNuevo = -1;
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			conexion = MySqlDAOFactory.getInstance().conectar();
			st = conexion.prepareStatement(SQL_INSERT,
					Statement.RETURN_GENERATED_KEYS);
			st.setString(1, i.getIva());
			st.setString(2, i.getDescripcion());
			
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
	public synchronized boolean delete(Iva i) {
		boolean correcto = false;

		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			st = conexion.prepareStatement(SQL_DELETE);
			st.setInt(1, i.getIdIva());

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
	public synchronized boolean update(Iva i) {
		boolean correcto = false;
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			st = conexion.prepareStatement(SQL_UPDATE);
			st.setString(1, i.getIva());
			st.setString(2, i.getDescripcion());
			
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
