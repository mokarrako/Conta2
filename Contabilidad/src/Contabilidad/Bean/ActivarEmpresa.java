package Contabilidad.Bean;

public class ActivarEmpresa {
	// Variables
		private int idEmpresa;
		private String empresa = "";
		private String anio = "";
		
		public ActivarEmpresa() {
			super();
		}

		public ActivarEmpresa(int idEmpresa, String empresa, String anio) {
			super();
			this.idEmpresa = idEmpresa;
			this.empresa = empresa;
			this.anio = anio;
		}

		public int getIdEmpresa() {
			return idEmpresa;
		}

		public void setIdEmpresa(int idEmpresa) {
			this.idEmpresa = idEmpresa;
		}

		public String getEmpresa() {
			return empresa;
		}

		public void setEmpresa(String empresa) {
			this.empresa = empresa;
		}

		public String getAnio() {
			return anio;
		}

		public void setAnio(String anio) {
			this.anio = anio;
		}

		@Override
		public String toString() {
			return "ActivarEmpresa [idEmpresa=" + idEmpresa + ", empresa="
					+ empresa + ", anio=" + anio + "]";
		}		
}
