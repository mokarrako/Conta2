package Contabilidad.Modelo.MySql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Contabilidad.Bean.ConceptosContables;
import Contabilidad.Modelo.DAO.ModelException;
import Contabilidad.Modelo.DAO.MySqlDAOFactory;
import Contabilidad.Modelo.Interfaces.IConceptosContablesDAO;


public class ConceptosContablesMySqlDAO implements IConceptosContablesDAO {

	private Connection conexion = null;

	public final static String SQL_SELECT_ALL = "SELECT * FROM "
			+ IConceptosContablesDAO.TABLA;
	public final static String SQL_SELECT_BYID = "SELECT * FROM "
			+ IConceptosContablesDAO.TABLA + " WHERE " + IConceptosContablesDAO.COL_IDCONCEPTO + "=?";

	public final static String SQL_INSERT = "INSERT INTO "
			+ IConceptosContablesDAO.TABLA
			+ " (" + IConceptosContablesDAO.COL_DESCRIPCION +  ") VALUES ( ? )";

	public final static String SQL_DELETE = "DELETE FROM " + IConceptosContablesDAO.TABLA
			+ " WHERE " + IConceptosContablesDAO.COL_IDCONCEPTO + "=?";

	public final static String SQL_UPDATE = "UPDATE "
			+ IConceptosContablesDAO.TABLA
			+ " SET " + IConceptosContablesDAO.COL_IDCONCEPTO + "=?, " + IConceptosContablesDAO.COL_DESCRIPCION + "=? WHERE " + IConceptosContablesDAO.COL_IDCONCEPTO + "=?";

	@Override
	public ArrayList<ConceptosContables> getAll() throws ModelException {
		ArrayList<ConceptosContables> ConceptosContables = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			ConceptosContables = new ArrayList<ConceptosContables>();
			st = conexion.createStatement();
			rs = st.executeQuery(SQL_SELECT_ALL);
			ConceptosContables conceptos = null;
			while (rs.next()) {
				conceptos = new ConceptosContables(rs.getInt(IConceptosContablesDAO.COL_IDCONCEPTO),
						rs.getString(IConceptosContablesDAO.COL_DESCRIPCION));
				ConceptosContables.add(conceptos);
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
		return ConceptosContables;
	}

	@Override
	public synchronized ConceptosContables getById(ConceptosContables conceptos) {
		ConceptosContables concept = new ConceptosContables();
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			st = conexion.prepareStatement(SQL_SELECT_BYID);
			st.setInt(1, conceptos.getIdConcepCont());

			rs = st.executeQuery();

			concept.setIdConcepCont(rs.getInt(IConceptosContablesDAO.COL_IDCONCEPTO));
			concept.setDescConcepCont(rs.getString(IConceptosContablesDAO.COL_DESCRIPCION));
						
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
		return concept;
	}

	@Override
	public synchronized int insert(ConceptosContables conceptos) throws ModelException {
		int idNuevo = -1;
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			conexion = MySqlDAOFactory.getInstance().conectar();
			st = conexion.prepareStatement(SQL_INSERT,
					Statement.RETURN_GENERATED_KEYS);
			st.setString(1, conceptos.getDescConcepCont());
						
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
	public synchronized boolean delete(ConceptosContables conceptos) {
		boolean correcto = false;

		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			st = conexion.prepareStatement(SQL_DELETE);
			st.setInt(1, conceptos.getIdConcepCont());

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
	public synchronized boolean update(ConceptosContables conceptos) {
		boolean correcto = false;
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			conexion = MySqlDAOFactory.getInstance().conectar();

			st = conexion.prepareStatement(SQL_UPDATE);
			st.setString(1, conceptos.getDescConcepCont());
						
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
