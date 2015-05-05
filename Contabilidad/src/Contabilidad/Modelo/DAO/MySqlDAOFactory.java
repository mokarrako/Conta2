package Contabilidad.Modelo.DAO;

import java.sql.Connection;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import Contabilidad.Modelo.Interfaces.IActivarEmpresaDAO;
import Contabilidad.Modelo.Interfaces.ICuentaDAO;
import Contabilidad.Modelo.Interfaces.IIVADAO;
import Contabilidad.Modelo.MySql.ActivarEmpresaMySqlDAO;
import Contabilidad.Modelo.MySql.CuentaMySqlDAO;
import Contabilidad.Modelo.MySql.IVAMySqlDAO;

public class MySqlDAOFactory extends DAOFactory {
	// patron singleton para esta clase, @see:
	// http://es.wikipedia.org/wiki/Singleton#Java

	private static MySqlDAOFactory INSTANCE = null;
	private static Connection con = null;
	private static final String DATA_SOURCE = "java:comp/env/jdbc/Contabilidad";

	// constructor privado
	private MySqlDAOFactory() {
	}

	// creador sincronizado para protegerse de posibles problemas multi-hilo
	// otra prueba para evitar instanciación múltiple
	private synchronized static void createInstance() {
		if (INSTANCE == null) {
			INSTANCE = new MySqlDAOFactory();
		}
	}

	public static MySqlDAOFactory getInstance() {
		if (INSTANCE == null)
			createInstance();
		return INSTANCE;
	}

	public Connection conectar() throws ModelException {

		if (con == null) {
			try {
				
				InitialContext ctx = new InitialContext();
				DataSource ds = (DataSource) ctx.lookup(DATA_SOURCE);
				con = ds.getConnection();

			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("La conexión a la BD, ha fallado");
				throw new ModelException("La conexión a la BD, ha fallado");
			}
		}
		return con;
	}

	public void desconectar() {

		if (con != null) {
			try {
				con.close();
				con = null;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public IActivarEmpresaDAO getActivarEmpresaDAO() {
		return new ActivarEmpresaMySqlDAO();
	}

	@Override
	public IIVADAO getIvaDAO() {		
		return new IVAMySqlDAO();
	}

	@Override
	public ICuentaDAO getCuentaDAO() {
		return new CuentaMySqlDAO();
	}
}