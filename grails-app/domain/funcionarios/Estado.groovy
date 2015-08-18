package funcionarios

class Estado {
	String nome
	String sigla

	static hasMany = [cidades:Cidade, enderecos:Endereco]

    String toString(){
		this.nome
	}
	
	static constraints = {
    }
}
