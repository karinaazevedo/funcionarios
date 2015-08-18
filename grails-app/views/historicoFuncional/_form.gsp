<%@ page import="funcionarios.HistoricoFuncional" %>



<div class="fieldcontain ${hasErrors(bean: historicoFuncionalInstance, field: 'dataFim', 'error')} required">
	<label for="dataFim">
		<g:message code="historicoFuncional.dataFim.label" default="Data Fim" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataFim" precision="day"  value="${historicoFuncionalInstance?.dataFim}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: historicoFuncionalInstance, field: 'dataInicio', 'error')} required">
	<label for="dataInicio">
		<g:message code="historicoFuncional.dataInicio.label" default="Data Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataInicio" precision="day"  value="${historicoFuncionalInstance?.dataInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: historicoFuncionalInstance, field: 'departamento', 'error')} required">
	<label for="departamento">
		<g:message code="historicoFuncional.departamento.label" default="Departamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="departamento" name="departamento.id" from="${funcionarios.Departamento.list()}" optionKey="id" required="" value="${historicoFuncionalInstance?.departamento?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: historicoFuncionalInstance, field: 'funcaoGratificada', 'error')} required">
	<label for="funcaoGratificada">
		<g:message code="historicoFuncional.funcaoGratificada.label" default="Funcao Gratificada" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="funcaoGratificada" from="${FuncaoEnum?.values()}" keys="${FuncaoEnum.values()*.name()}" required="" value="${historicoFuncionalInstance?.funcaoGratificada?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: historicoFuncionalInstance, field: 'funcionario', 'error')} required">
	<label for="funcionario">
		<g:message code="historicoFuncional.funcionario.label" default="Funcionario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="funcionario" name="funcionario.id" from="${funcionarios.Funcionario.list()}" optionKey="id" required="" value="${historicoFuncionalInstance?.funcionario?.id}" class="many-to-one"/>

</div>

