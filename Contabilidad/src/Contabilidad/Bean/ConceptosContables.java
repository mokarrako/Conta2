package Contabilidad.Bean;

public class ConceptosContables {
	// Variables
		private int idConcepCont;
		private String descConcepCont = "";
				
		public ConceptosContables() {
			super();
		}

		public ConceptosContables(int idConcepCont, String descConcepCont) {
			super();
			this.idConcepCont = idConcepCont;
			this.descConcepCont = descConcepCont;
		}

		public int getIdConcepCont() {
			return idConcepCont;
		}

		public void setIdConcepCont(int idConcepCont) {
			this.idConcepCont = idConcepCont;
		}

		public String getDescConcepCont() {
			return descConcepCont;
		}

		public void setDescConcepCont(String descConcepCont) {
			this.descConcepCont = descConcepCont;
		}

}
