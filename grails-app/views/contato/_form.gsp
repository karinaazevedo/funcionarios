<%@ page import="funcionarios.Contato" %>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'funcionario', 'error')} required">
	<label for="funcionario">
		<g:message code="contato.funcionario.label" default="Funcionario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="funcionario" required="" value="${flash.message}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: contatoInstance, field: 'funcionario', 'error')} required">
	<label for="funcionario">
		<g:message code="contato.funcionario.label" default="Funcionario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="funcionario" name="funcionario.id" from="${funcionarios.Funcionario.list()}" optionKey="id" required="" value="${contatoInstance?.funcionario?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contatoInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="contato.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${funcionarios.Contato$tipo?.values()}" keys="${funcionarios.Contato$tipo.values()*.name()}" required="" value="${contatoInstance?.tipo}" />	

</div>

<div class="fieldcontain ${hasErrors(bean: contatoInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="contato.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="valor" required="" value="${contatoInstance?.valor}"/>

</div>

