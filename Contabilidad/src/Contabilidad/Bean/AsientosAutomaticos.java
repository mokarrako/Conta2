package Contabilidad.Bean;

public class AsientosAutomaticos {
	// Variables
		private int idAsiento;
		private String codigoAsiento = "";
		private String descAsiento = "";
				
		public AsientosAutomaticos() {
			super();
		}

		public AsientosAutomaticos(int idAsiento, String codigoAsiento,
				String descAsiento) {
			super();
			this.idAsiento = idAsiento;
			this.codigoAsiento = codigoAsiento;
			this.descAsiento = descAsiento;
		}

		public int getIdAsiento() {
			return idAsiento;
		}

		public void setIdAsiento(int idAsiento) {
			this.idAsiento = idAsiento;
		}

		public String getCodigoAsiento() {
			return codigoAsiento;
		}

		public void setCodigoAsiento(String codigoAsiento) {
			this.codigoAsiento = codigoAsiento;
		}

		public String getDescAsiento() {
			return descAsiento;
		}

		public void setDescAsiento(String descAsiento) {
			this.descAsiento = descAsiento;
		}

}
