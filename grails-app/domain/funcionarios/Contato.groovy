package funcionarios

class Contato {
	String tipo
	String valor

	enum tipo {
	    Telefone,
	    Celular,
	    Email
	}

	static belongsTo = [funcionario:Funcionario]

    static constraints = {
    }
}
