package Contabilidad.Bean;

import java.util.ArrayList;

/**
 * Clase Abstracta de PRUEBAS con una lista de Personas
 *
 * @author Jose
 *
 */
public class PruebasListaActivarEmpresa {
	private static PruebasListaActivarEmpresa pruebaPersona;
	private ArrayList<ActivarEmpresa> listaActivarEmpresa;

	public static PruebasListaActivarEmpresa getPruebaActivarEmpresa() {
		if (pruebaPersona == null) {
			pruebaPersona = new PruebasListaActivarEmpresa();
		}
		return pruebaPersona;
	}

	public ArrayList<ActivarEmpresa> listaNula() {
		listaActivarEmpresa = null;
		return listaActivarEmpresa;
	}

	public ArrayList<ActivarEmpresa> listaVacia() {
		listaActivarEmpresa = new ArrayList<ActivarEmpresa>();
		return listaActivarEmpresa;
	}

	public ArrayList<ActivarEmpresa> listaConUnaEmpresa() throws ActivarEmpresaException {
		listaActivarEmpresa = new ArrayList<ActivarEmpresa>();

		ActivarEmpresa ae = new ActivarEmpresa();
		ae.setEmpresa("Tiger");
		ae.setAnio("2015");
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);

		return listaActivarEmpresa;
	}

	public ArrayList<ActivarEmpresa> listaCompleta() throws ActivarEmpresaException {
		listaActivarEmpresa = new ArrayList<ActivarEmpresa>();

		ActivarEmpresa ae = new ActivarEmpresa();
		ae.setEmpresa("Tiger");
		ae.setAnio("2014");		
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);

		ae = new ActivarEmpresa();
		ae.setEmpresa("Garrett");
		ae.setAnio("2013");
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);

		ae = new ActivarEmpresa();
		ae.setEmpresa("Ashton");
		ae.setAnio("2012");
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);

		ae = new ActivarEmpresa();
		ae.setEmpresa("Cedric");
		ae.setAnio("2011");
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);

		ae = new ActivarEmpresa();
		ae.setEmpresa("Airi");
		ae.setAnio("2010");
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);

		ae = new ActivarEmpresa();
		ae.setEmpresa("Brielle");
		ae.setAnio("2009");
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);

		ae = new ActivarEmpresa();
		ae.setEmpresa("Herrod");
		ae.setAnio("2008");
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);

		ae = new ActivarEmpresa();
		ae.setEmpresa("Rhona");
		ae.setAnio("2007");
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);

		ae = new ActivarEmpresa();
		ae.setEmpresa("Colleen");
		ae.setAnio("2006");
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);

		ae = new ActivarEmpresa();
		ae.setEmpresa("Sonya");
		ae.setAnio("2005");
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);

		ae = new ActivarEmpresa();
		ae.setEmpresa("Colleen");
		ae.setAnio("2004");
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);

		ae = new ActivarEmpresa();
		ae.setEmpresa("Sonya");
		ae.setAnio("2003");
		ae.setIdEmpresa(listaActivarEmpresa.size());
		listaActivarEmpresa.add(ae);


		return listaActivarEmpresa;
	}

	/**
	 * Devuelve una persona de la lista 'listaCompleta' con la posicion indice
	 *
	 * @param indice
	 *            posicion de la lista
	 * @return Persona de la lista
	 * @throws PersonaException
	 */
	public ActivarEmpresa obtenerActivarEmpresaPorId(int indice) throws ActivarEmpresaException {
		ArrayList<ActivarEmpresa> vActivarEmpresa = listaCompleta();
		ActivarEmpresa p = vActivarEmpresa.get(indice);
		return p;
	}

}
