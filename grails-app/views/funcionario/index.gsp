
<%@ page import="funcionarios.Funcionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'funcionario.label', default: 'Funcionario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-funcionario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-funcionario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'funcionario.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="sexo" title="${message(code: 'funcionario.sexo.label', default: 'Sexo')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'funcionario.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="identidade" title="${message(code: 'funcionario.identidade.label', default: 'Identidade')}" />
					
						<g:sortableColumn property="naturalidade" title="${message(code: 'funcionario.naturalidade.label', default: 'Naturalidade')}" />
					
						<g:sortableColumn property="dataNascimento" title="${message(code: 'funcionario.dataNascimento.label', default: 'Data Nascimento')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${funcionarioInstanceList}" status="i" var="funcionarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${funcionarioInstance.id}">${fieldValue(bean: funcionarioInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: funcionarioInstance, field: "sexo")}</td>
					
						<td>${fieldValue(bean: funcionarioInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: funcionarioInstance, field: "identidade")}</td>
					
						<td>${fieldValue(bean: funcionarioInstance, field: "naturalidade")}</td>
					
						<td><g:formatDate date="${funcionarioInstance.dataNascimento}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${funcionarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
