
<%@ page import="funcionarios.FuncionarioTitulacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'funcionarioTitulacao.label', default: 'FuncionarioTitulacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-funcionarioTitulacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-funcionarioTitulacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list funcionarioTitulacao">
			
				<g:if test="${funcionarioTitulacaoInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="funcionarioTitulacao.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${funcionarioTitulacaoInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioTitulacaoInstance?.funcionario}">
				<li class="fieldcontain">
					<span id="funcionario-label" class="property-label"><g:message code="funcionarioTitulacao.funcionario.label" default="Funcionario" /></span>
					
						<span class="property-value" aria-labelledby="funcionario-label"><g:link controller="funcionario" action="show" id="${funcionarioTitulacaoInstance?.funcionario?.id}">${funcionarioTitulacaoInstance?.funcionario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioTitulacaoInstance?.titulacao}">
				<li class="fieldcontain">
					<span id="titulacao-label" class="property-label"><g:message code="funcionarioTitulacao.titulacao.label" default="Titulacao" /></span>
					
						<span class="property-value" aria-labelledby="titulacao-label"><g:link controller="titulacao" action="show" id="${funcionarioTitulacaoInstance?.titulacao?.id}">${funcionarioTitulacaoInstance?.titulacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:funcionarioTitulacaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${funcionarioTitulacaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
