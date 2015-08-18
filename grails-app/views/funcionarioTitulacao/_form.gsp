<%@ page import="funcionarios.FuncionarioTitulacao" %>



<div class="fieldcontain ${hasErrors(bean: funcionarioTitulacaoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="funcionarioTitulacao.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${funcionarioTitulacaoInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioTitulacaoInstance, field: 'funcionario', 'error')} required">
	<label for="funcionario">
		<g:message code="funcionarioTitulacao.funcionario.label" default="Funcionario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="funcionario" name="funcionario.id" from="${funcionarios.Funcionario.list()}" optionKey="id" required="" value="${funcionarioTitulacaoInstance?.funcionario?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioTitulacaoInstance, field: 'titulacao', 'error')} required">
	<label for="titulacao">
		<g:message code="funcionarioTitulacao.titulacao.label" default="Titulacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="titulacao" name="titulacao.id" from="${funcionarios.Titulacao.list()}" optionKey="id" required="" value="${funcionarioTitulacaoInstance?.titulacao?.id}" class="many-to-one"/>

</div>

