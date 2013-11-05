package ar.edu.unlam.tallerweb.timelineme;

public class Agente {
	
	private String nombre;
	private String password;
	private Long id;
	private Long miEmpresa;
	//private <List> empresaQueSigo;
	
	public Agente(String nombre,String password,Long miEmpresa){
		
		this.nombre=nombre;
		this.password=password;
		this.miEmpresa=miEmpresa;
		
	}

}
