package funcionarios

class Funcionario {

	String nome
	String cpf
	Date dataNascimento
	String estadoCivil
	String naturalidade
	String sexo
	String pis
	String identidade
	String tituloEleitor
	Integer matricula
	String escolaridade
	String lattes
	Cargo cargo
	String regimeJuridico
	Departamento lotacao
	String jornadaTrabalho
	String situacao
	String funcaoGratificada
	String contaBancaria
	Integer banco
	String nomeBanco

	enum estadoCivil {
	    Solteiro,
	    Casado, 
	    Uniao,
	    Separado, 
	    Divorciado,
	    Viuvo
	}
	enum sexo{
		Masculino,
		Feminino
	}
	enum escolaridade{
		Basico,
		Medio,
		Tecnico,
		Superior,
		Especialista,
		Mestre,
		Doutor,
		PosDoc
	}
	enum regimeJuridico{
		Celetista,
		Estatutario
	}
	enum jornadaTrabalho{
		Vinte,
		Trinta,
		Quarenta
	}
	enum situacao{
		Ativo,
		Inativo,
		Licenciado,
		Aposentado
	}
	enum funcaoGratificada{
		Nenhuma,
		FG1,
		FG2,
		FG3,
		FG4,
		FG5,
		CD1,
		CD2,
		CD3,
		CD4
	}

	static belongsTo = [cargo:Cargo, lotacao:Departamento]
	static hasMany = [enderecos:Endereco, contatos:Contato, historicosFuncional:HistoricoFuncional, titulacoes:FuncionarioTitulacao, dependentes: Dependente]


    static constraints = {
    	nome (nullable:false, blank:false)
    	sexo (nullable:false, blank:false)
		cpf (nullable:false, blank:false)
		identidade (nullable:false, blank:false)
		naturalidade (nullable:false, blank:false)
		dataNascimento (nullable:false, blank:false)
		estadoCivil (nullable:false, blank:false)
		tituloEleitor (nullable:false, blank:false)
		pis (blank:true, nullable:true)
		escolaridade (nullable:false, blank:false)
		lattes (email: true, blank:true, nullable:true)
		matricula (nullable:false, blank:false)
		cargo (nullable:false, blank:false)
		regimeJuridico (nullable:false, blank:false)
		jornadaTrabalho (nullable:false, blank:false)
		lotacao (nullable:false, blank:false)
		situacao (nullable:false, blank:false)
		funcaoGratificada (blank:true, nullable:true)
		banco (nullable:false, blank:false)
		nomeBanco (nullable:false, blank:false)
		contaBancaria (nullable:false, blank:false)
		enderecos (display:false)
		contatos (display:false)
		historicosFuncional (display:false)
		titulacoes (display:false)
		dependentes (display:false)

    }
}
