package Contabilidad.Bean;

public class Iva {
	
	private int idIva;
	private String iva="";
	private String descripcion = "";
	
	public Iva() {
		super();		
	}

	public Iva(int idIva, String iva, String descripcion) {
		super();
		this.idIva = idIva;
		this.iva = iva;
		this.descripcion = descripcion;
	}

	public int getIdIva() {
		return idIva;
	}

	public void setIdIva(int idIva) {
		this.idIva = idIva;
	}

	public String getIva() {
		return iva;
	}

	public void setIva(String iva) {
		this.iva = iva;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
}
