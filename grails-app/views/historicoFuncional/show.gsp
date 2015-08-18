
<%@ page import="funcionarios.HistoricoFuncional" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'historicoFuncional.label', default: 'HistoricoFuncional')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-historicoFuncional" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-historicoFuncional" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list historicoFuncional">
			
				<g:if test="${historicoFuncionalInstance?.dataFim}">
				<li class="fieldcontain">
					<span id="dataFim-label" class="property-label"><g:message code="historicoFuncional.dataFim.label" default="Data Fim" /></span>
					
						<span class="property-value" aria-labelledby="dataFim-label"><g:formatDate date="${historicoFuncionalInstance?.dataFim}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${historicoFuncionalInstance?.dataInicio}">
				<li class="fieldcontain">
					<span id="dataInicio-label" class="property-label"><g:message code="historicoFuncional.dataInicio.label" default="Data Inicio" /></span>
					
						<span class="property-value" aria-labelledby="dataInicio-label"><g:formatDate date="${historicoFuncionalInstance?.dataInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${historicoFuncionalInstance?.departamento}">
				<li class="fieldcontain">
					<span id="departamento-label" class="property-label"><g:message code="historicoFuncional.departamento.label" default="Departamento" /></span>
					
						<span class="property-value" aria-labelledby="departamento-label"><g:link controller="departamento" action="show" id="${historicoFuncionalInstance?.departamento?.id}">${historicoFuncionalInstance?.departamento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${historicoFuncionalInstance?.funcaoGratificada}">
				<li class="fieldcontain">
					<span id="funcaoGratificada-label" class="property-label"><g:message code="historicoFuncional.funcaoGratificada.label" default="Funcao Gratificada" /></span>
					
						<span class="property-value" aria-labelledby="funcaoGratificada-label"><g:fieldValue bean="${historicoFuncionalInstance}" field="funcaoGratificada"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historicoFuncionalInstance?.funcionario}">
				<li class="fieldcontain">
					<span id="funcionario-label" class="property-label"><g:message code="historicoFuncional.funcionario.label" default="Funcionario" /></span>
					
						<span class="property-value" aria-labelledby="funcionario-label"><g:link controller="funcionario" action="show" id="${historicoFuncionalInstance?.funcionario?.id}">${historicoFuncionalInstance?.funcionario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:historicoFuncionalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${historicoFuncionalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
