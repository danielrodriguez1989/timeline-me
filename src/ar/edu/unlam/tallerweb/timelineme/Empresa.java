package ar.edu.unlam.tallerweb.timelineme;

public class Empresa {
	
	private Long id;
	private String razonSocial;
	
	public void darAltaAgente(String nombre, String password){
		
		Agente agente = new Agente(nombre,password,this.id);
		
	}
	

}
