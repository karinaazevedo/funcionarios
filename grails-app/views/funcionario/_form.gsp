<%@ page import="funcionarios.Funcionario" %>



<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="funcionario.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${funcionarioInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="funcionario.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${funcionarios.Funcionario$sexo?.values()}" keys="${funcionarios.Funcionario$sexo.values()*.name()}" required="" value="${funcionarioInstance?.sexo}" />	

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="funcionario.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${funcionarioInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'identidade', 'error')} required">
	<label for="identidade">
		<g:message code="funcionario.identidade.label" default="Identidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identidade" required="" value="${funcionarioInstance?.identidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'naturalidade', 'error')} required">
	<label for="naturalidade">
		<g:message code="funcionario.naturalidade.label" default="Naturalidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="naturalidade" required="" value="${funcionarioInstance?.naturalidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="funcionario.dataNascimento.label" default="Data Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${funcionarioInstance?.dataNascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil">
		<g:message code="funcionario.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoCivil" from="${funcionarios.Funcionario$estadoCivil?.values()}" keys="${funcionarios.Funcionario$estadoCivil.values()*.name()}" required="" value="${funcionarioInstance?.estadoCivil}" />

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'tituloEleitor', 'error')} required">
	<label for="tituloEleitor">
		<g:message code="funcionario.tituloEleitor.label" default="Titulo Eleitor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tituloEleitor" required="" value="${funcionarioInstance?.tituloEleitor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'pis', 'error')} ">
	<label for="pis">
		<g:message code="funcionario.pis.label" default="Pis" />
		
	</label>
	<g:textField name="pis" value="${funcionarioInstance?.pis}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'escolaridade', 'error')} required">
	<label for="escolaridade">
		<g:message code="funcionario.escolaridade.label" default="Escolaridade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="escolaridade" from="${funcionarios.Funcionario$escolaridade?.values()}" keys="${funcionarios.Funcionario$escolaridade.values()*.name()}" required="" value="${funcionarioInstance?.escolaridade}" />

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'lattes', 'error')} ">
	<label for="lattes">
		<g:message code="funcionario.lattes.label" default="Lattes" />
		
	</label>
	<g:field type="email" name="lattes" value="${funcionarioInstance?.lattes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'matricula', 'error')} required">
	<label for="matricula">
		<g:message code="funcionario.matricula.label" default="Matricula" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="matricula" type="number" value="${funcionarioInstance.matricula}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'cargo', 'error')} required">
	<label for="cargo">
		<g:message code="funcionario.cargo.label" default="Cargo" />
	</label>
	<g:select id="cargo" name="cargo.id" from="${funcionarios.Cargo.list()}" optionKey="id" optionValue="nome" required="" value="${funcionarioInstance?.cargo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'regimeJuridico', 'error')} required">
	<label for="regimeJuridico">
		<g:message code="funcionario.regimeJuridico.label" default="Regime Juridico" />
	</label>
	<g:select name="regimeJuridico" from="${funcionarios.Funcionario$regimeJuridico?.values()}" keys="${funcionarios.Funcionario$regimeJuridico.values()*.name()}" required="" value="${funcionarioInstance?.regimeJuridico}" />

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'jornadaTrabalho', 'error')} required">
	<label for="jornadaTrabalho">
		<g:message code="funcionario.jornadaTrabalho.label" default="Jornada Trabalho" />
	</label>
	<g:select name="jornadaTrabalho" from="${funcionarios.Funcionario$jornadaTrabalho?.values()}" keys="${funcionarios.Funcionario$jornadaTrabalho.values()*.name()}" required="" value="${funcionarioInstance?.jornadaTrabalho}" />

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'lotacao', 'error')} required">
	<label for="lotacao">
		<g:message code="funcionario.lotacao.label" default="Lotacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="lotacao" name="lotacao.id" from="${funcionarios.Departamento.list()}" optionKey="id" optionValue="nome" required="" value="${funcionarioInstance?.lotacao?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="funcionario.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="situacao" from="${funcionarios.Funcionario$situacao?.values()}" keys="${funcionarios.Funcionario$situacao.values()*.name()}" required="" value="${funcionarioInstance?.situacao}" />

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'funcaoGratificada', 'error')} ">
	<label for="funcaoGratificada">
		<g:message code="funcionario.funcaoGratificada.label" default="Funcao Gratificada" />
		
	</label>
	<g:select name="funcaoGratificada" from="${funcionarios.Funcionario$funcaoGratificada?.values()}" keys="${funcionarios.Funcionario$funcaoGratificada.values()*.name()}" required="" value="${funcionarioInstance?.funcaoGratificada}" />

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'banco', 'error')} required">
	<label for="banco">
		<g:message code="funcionario.banco.label" default="Banco" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="banco" type="number" value="${funcionarioInstance.banco}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'nomeBanco', 'error')} required">
	<label for="nomeBanco">
		<g:message code="funcionario.nomeBanco.label" default="Nome Banco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeBanco" required="" value="${funcionarioInstance?.nomeBanco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'contaBancaria', 'error')} required">
	<label for="contaBancaria">
		<g:message code="funcionario.contaBancaria.label" default="Conta Bancaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contaBancaria" required="" value="${funcionarioInstance?.contaBancaria}"/>

</div>

