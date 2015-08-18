
<%@ page import="funcionarios.Departamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'departamento.label', default: 'Departamento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-departamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-departamento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list departamento">
			
				<g:if test="${departamentoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="departamento.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${departamentoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${departamentoInstance?.sigla}">
				<li class="fieldcontain">
					<span id="sigla-label" class="property-label"><g:message code="departamento.sigla.label" default="Sigla" /></span>
					
						<span class="property-value" aria-labelledby="sigla-label"><g:fieldValue bean="${departamentoInstance}" field="sigla"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${departamentoInstance?.ramal}">
				<li class="fieldcontain">
					<span id="ramal-label" class="property-label"><g:message code="departamento.ramal.label" default="Ramal" /></span>
					
						<span class="property-value" aria-labelledby="ramal-label"><g:fieldValue bean="${departamentoInstance}" field="ramal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${departamentoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="departamento.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${departamentoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${departamentoInstance?.chefe}">
				<li class="fieldcontain">
					<span id="chefe-label" class="property-label"><g:message code="departamento.chefe.label" default="Chefe" /></span>
					
						<span class="property-value" aria-labelledby="chefe-label"><g:link controller="funcionario" action="show" id="${departamentoInstance?.chefe?.id}">${departamentoInstance?.chefe?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:departamentoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${departamentoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
