<%@ page import="funcionarios.Cargo" %>



<div class="fieldcontain ${hasErrors(bean: cargoInstance, field: 'classe', 'error')} required">
	<label for="classe">
		<g:message code="cargo.classe.label" default="Classe" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="classe" required="" value="${cargoInstance?.classe}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: cargoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cargo.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${cargoInstance?.nome}"/>

</div>

