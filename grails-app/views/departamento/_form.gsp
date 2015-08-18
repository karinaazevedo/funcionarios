<%@ page import="funcionarios.Departamento" %>



<div class="fieldcontain ${hasErrors(bean: departamentoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="departamento.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${departamentoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departamentoInstance, field: 'sigla', 'error')} required">
	<label for="sigla">
		<g:message code="departamento.sigla.label" default="Sigla" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sigla" required="" value="${departamentoInstance?.sigla}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departamentoInstance, field: 'ramal', 'error')} ">
	<label for="ramal">
		<g:message code="departamento.ramal.label" default="Ramal" />
		
	</label>
	<g:textField name="ramal" value="${departamentoInstance?.ramal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departamentoInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="departamento.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${departamentoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departamentoInstance, field: 'chefe', 'error')} ">
	<label for="chefe">
		<g:message code="departamento.chefe.label" default="Chefe" />
		
	</label>
	<g:select id="chefe" name="chefe.id" from="${funcionarios.Funcionario.list()}" optionKey="id" value="${departamentoInstance?.chefe?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

