<%@ page import="funcionarios.Endereco" %>


<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'id', 'error')} required">
	<label for="funcionario">
		<g:message code="funcionario.id.label" default="funcionario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="funcionario" controller="funcionario" required="" value="${flash.message}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'rua', 'error')} required">
	<label for="rua">
		<g:message code="endereco.rua.label" default="Rua" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rua" required="" value="${enderecoInstance?.rua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="endereco.numero.label" default="Numero" />
		
	</label>
	<g:field name="numero" type="number" value="${enderecoInstance.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'complemento', 'error')} ">
	<label for="complemento">
		<g:message code="endereco.complemento.label" default="Complemento" />
		
	</label>
	<g:textField name="complemento" value="${enderecoInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="endereco.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" required="" value="${enderecoInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="endereco.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cidade" name="cidade.id" from="${funcionarios.Cidade.list()}" optionKey="id" optionValue="nome" required="" value="${enderecoInstance?.cidade?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="endereco.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estado" name="estado.id" from="${funcionarios.Estado.list()}" optionKey="id" optionValue="sigla" required="" value="${enderecoInstance?.estado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'cep', 'error')} required">
	<label for="cep">
		<g:message code="endereco.cep.label" default="Cep" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cep" required="" value="${enderecoInstance?.cep}"/>

</div>

