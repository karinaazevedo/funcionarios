package funcionarios

class Dependente {
	String nome
	Date dataNascimento
	String identidade
	String cpf

	static belongsTo = [funcionario:Funcionario]

    static constraints = {
    }
}
