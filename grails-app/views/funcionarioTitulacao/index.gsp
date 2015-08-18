
<%@ page import="funcionarios.FuncionarioTitulacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'funcionarioTitulacao.label', default: 'FuncionarioTitulacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-funcionarioTitulacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-funcionarioTitulacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="data" title="${message(code: 'funcionarioTitulacao.data.label', default: 'Data')}" />
					
						<th><g:message code="funcionarioTitulacao.funcionario.label" default="Funcionario" /></th>
					
						<th><g:message code="funcionarioTitulacao.titulacao.label" default="Titulacao" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${funcionarioTitulacaoInstanceList}" status="i" var="funcionarioTitulacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${funcionarioTitulacaoInstance.id}">${fieldValue(bean: funcionarioTitulacaoInstance, field: "data")}</g:link></td>
					
						<td>${fieldValue(bean: funcionarioTitulacaoInstance, field: "funcionario")}</td>
					
						<td>${fieldValue(bean: funcionarioTitulacaoInstance, field: "titulacao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${funcionarioTitulacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
