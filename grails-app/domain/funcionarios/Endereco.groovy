package funcionarios

class Endereco {
	String rua
	Integer numero
	String complemento
	String bairro
	Estado estado
	String cep
	Funcionario funcionario

	static belongsTo = [funcionario:Funcionario, cidade:Cidade]

    static constraints = {
    	rua (nullable:false, blank:false)
		numero (nullable:true, blank:true)
		complemento (nullable:true, blank:true)
		bairro (nullable:false, blank:false)
		cidade (nullable:false, blank:false)
		estado (nullable:false, blank:false)
		cep(nullable:false, blank:false)
		funcionario (display:false, nullable:true, blank:true)
    }
}
