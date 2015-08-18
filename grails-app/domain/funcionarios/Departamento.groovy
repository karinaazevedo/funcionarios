package funcionarios

class Departamento {
	String nome
	String sigla
	String ramal
	String email
	Funcionario chefe

	static hasMany = [historicos:HistoricoFuncional, funcionarios:Funcionario]

	String toString(){
		this.nome
	}
	
    static constraints = {
    	nome (nullable:false, blank:false)
		sigla (nullable:false, blank:false)
		ramal (nullable:true, blank:true)
		email (nullable:true, blank:true)
    	chefe (nullable:true, blank:true)
    	historicos (display:false)
    	funcionarios (display:false)
    }
}
