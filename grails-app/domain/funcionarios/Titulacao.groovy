package funcionarios

class Titulacao {
	String descricao
	GrauEnum grau
	Integer cargaHoraria
	String instituicao

	static hasMany = [funcionarios:FuncionarioTitulacao]

    static constraints = {
    	descricao (blank:false, maxSize:200)
    	grau (blank:false)
		cargaHoraria (blank:false)
		instituicao (blank:false)
    }
}
