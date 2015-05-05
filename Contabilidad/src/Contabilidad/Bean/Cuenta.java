package Contabilidad.Bean;

public class Cuenta {
	private int idCuenta;
	private String cuenta="";
	private String descripcion = "";
	private String saldo="";
	
	public Cuenta() {
		super();		
	}

	public Cuenta(int idCuenta, String cuenta, String descripcion, String saldo) {
		super();
		this.idCuenta = idCuenta;
		this.cuenta = cuenta;
		this.descripcion = descripcion;
		this.saldo = saldo;
	}

	public int getIdCuenta() {
		return idCuenta;
	}

	public void setIdCuenta(int idCuenta) {
		this.idCuenta = idCuenta;
	}

	public String getCuenta() {
		return cuenta;
	}

	public void setCuenta(String cuenta) {
		this.cuenta = cuenta;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getSaldo() {
		return saldo;
	}

	public void setSaldo(String saldo) {
		this.saldo = saldo;
	}
	
	
}
