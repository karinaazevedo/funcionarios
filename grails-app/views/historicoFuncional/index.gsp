
<%@ page import="funcionarios.HistoricoFuncional" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'historicoFuncional.label', default: 'HistoricoFuncional')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-historicoFuncional" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-historicoFuncional" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dataFim" title="${message(code: 'historicoFuncional.dataFim.label', default: 'Data Fim')}" />
					
						<g:sortableColumn property="dataInicio" title="${message(code: 'historicoFuncional.dataInicio.label', default: 'Data Inicio')}" />
					
						<th><g:message code="historicoFuncional.departamento.label" default="Departamento" /></th>
					
						<g:sortableColumn property="funcaoGratificada" title="${message(code: 'historicoFuncional.funcaoGratificada.label', default: 'Funcao Gratificada')}" />
					
						<th><g:message code="historicoFuncional.funcionario.label" default="Funcionario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${historicoFuncionalInstanceList}" status="i" var="historicoFuncionalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${historicoFuncionalInstance.id}">${fieldValue(bean: historicoFuncionalInstance, field: "dataFim")}</g:link></td>
					
						<td><g:formatDate date="${historicoFuncionalInstance.dataInicio}" /></td>
					
						<td>${fieldValue(bean: historicoFuncionalInstance, field: "departamento")}</td>
					
						<td>${fieldValue(bean: historicoFuncionalInstance, field: "funcaoGratificada")}</td>
					
						<td>${fieldValue(bean: historicoFuncionalInstance, field: "funcionario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${historicoFuncionalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
