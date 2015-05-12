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

import Contabilidad.Bean.ConceptosContables;
import Contabilidad.Modelo.DAO.ModelException;

/**
 * Interfaz para definir las operaciones de CRUD contra la tabla ActivarEmpresa de la
 * BD, la cual luego deberemos implementar segun la BD que usemos
 *
 * @author Aritz
 *
 */
public interface IConceptosContablesDAO {

	static final String TABLA = "conceptos";
	static final String COL_IDCONCEPTO = "idconcepto";
	static final String COL_DESCRIPCION = "descripcion";
		

	ArrayList<ConceptosContables> getAll() throws ModelException;

	ConceptosContables getById(ConceptosContables concep) throws ModelException;

	int insert(ConceptosContables concep) throws ModelException;

	boolean delete(ConceptosContables concep) throws ModelException;

	boolean update(ConceptosContables concep) throws ModelException;

}
