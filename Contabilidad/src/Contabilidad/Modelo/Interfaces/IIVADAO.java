package Contabilidad.Modelo.Interfaces;

/**
 * Interfaz IActivarEmpresaDAO, este archivo define las operaciones de CRUD contra la
 * tabla ActivarEmpresa de la base de datos (MySQL). Si en el futuro se usase otro tipo
 * de base de datos habria que cambiar este archivo
 *
 * @author Aritz
 *
 */

import java.util.ArrayList;

import Contabilidad.Bean.ActivarEmpresa;
import Contabilidad.Bean.Iva;
import Contabilidad.Modelo.DAO.ModelException;

/**
 * Interfaz para definir las operaciones de CRUD contra la tabla ActivarEmpresa de la
 * BD, la cual luego deberemos implementar segun la BD que usemos
 *
 * @author Aritz
 *
 */
public interface IIVADAO {

	static final String TABLA = "iva";
	static final String COL_IDIVA = "idiva";
	static final String COL_IVA = "iva";
	static final String COL_DESCRIPCION = "descripcion";
	

	ArrayList<Iva> getAll() throws ModelException;

	Iva getById(Iva i) throws ModelException;

	int insert(Iva i) throws ModelException;

	boolean delete(Iva i) throws ModelException;

	boolean update(Iva i) throws ModelException;

}
