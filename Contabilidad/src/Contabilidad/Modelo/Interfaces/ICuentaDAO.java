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
import Contabilidad.Bean.Cuenta;
import Contabilidad.Modelo.DAO.ModelException;

/**
 * Interfaz para definir las operaciones de CRUD contra la tabla ActivarEmpresa de la
 * BD, la cual luego deberemos implementar segun la BD que usemos
 *
 * @author Aritz
 *
 */
public interface ICuentaDAO {

	static final String TABLA = "cuenta";
	static final String COL_IDCUENTA = "idcuenta";
	static final String COL_CUENTA = "cuenta";
	static final String COL_DESCRIPCION = "descripcion";
	static final String COL_SALDO = "saldo";
	

	ArrayList<Cuenta> getAll() throws ModelException;

	Cuenta getById(Cuenta c) throws ModelException;

	int insert(Cuenta c) throws ModelException;

	boolean delete(Cuenta c) throws ModelException;

	boolean update(Cuenta c) throws ModelException;

}
