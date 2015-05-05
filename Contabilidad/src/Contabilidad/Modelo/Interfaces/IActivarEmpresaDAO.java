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
import Contabilidad.Modelo.DAO.ModelException;

/**
 * Interfaz para definir las operaciones de CRUD contra la tabla ActivarEmpresa de la
 * BD, la cual luego deberemos implementar segun la BD que usemos
 *
 * @author Aritz
 *
 */
public interface IActivarEmpresaDAO {

	static final String TABLA = "activarempresa";
	static final String COL_IDEMPRESA = "idempresa";
	static final String COL_EMPRESA = "empresa";
	static final String COL_ANIO = "anio";
	

	ArrayList<ActivarEmpresa> getAll() throws ModelException;

	ActivarEmpresa getById(ActivarEmpresa e) throws ModelException;

	int insert(ActivarEmpresa e) throws ModelException;

	boolean delete(ActivarEmpresa e) throws ModelException;

	boolean update(ActivarEmpresa e) throws ModelException;

}
