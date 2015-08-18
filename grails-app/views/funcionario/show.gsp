
<%@ page import="funcionarios.Funcionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'funcionario.label', default: 'Funcionario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-funcionario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-funcionario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list funcionario">
			
				<g:if test="${funcionarioInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="funcionario.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${funcionarioInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="funcionario.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${funcionarioInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="funcionario.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${funcionarioInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.identidade}">
				<li class="fieldcontain">
					<span id="identidade-label" class="property-label"><g:message code="funcionario.identidade.label" default="Identidade" /></span>
					
						<span class="property-value" aria-labelledby="identidade-label"><g:fieldValue bean="${funcionarioInstance}" field="identidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.naturalidade}">
				<li class="fieldcontain">
					<span id="naturalidade-label" class="property-label"><g:message code="funcionario.naturalidade.label" default="Naturalidade" /></span>
					
						<span class="property-value" aria-labelledby="naturalidade-label"><g:fieldValue bean="${funcionarioInstance}" field="naturalidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.dataNascimento}">
				<li class="fieldcontain">
					<span id="dataNascimento-label" class="property-label"><g:message code="funcionario.dataNascimento.label" default="Data Nascimento" /></span>
					
						<span class="property-value" aria-labelledby="dataNascimento-label"><g:formatDate format="dd/MM/yyyy" date="${funcionarioInstance?.dataNascimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.estadoCivil}">
				<li class="fieldcontain">
					<span id="estadoCivil-label" class="property-label"><g:message code="funcionario.estadoCivil.label" default="Estado Civil" /></span>
					
						<span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${funcionarioInstance}" field="estadoCivil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.tituloEleitor}">
				<li class="fieldcontain">
					<span id="tituloEleitor-label" class="property-label"><g:message code="funcionario.tituloEleitor.label" default="Titulo Eleitor" /></span>
					
						<span class="property-value" aria-labelledby="tituloEleitor-label"><g:fieldValue bean="${funcionarioInstance}" field="tituloEleitor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.pis}">
				<li class="fieldcontain">
					<span id="pis-label" class="property-label"><g:message code="funcionario.pis.label" default="Pis" /></span>
					
						<span class="property-value" aria-labelledby="pis-label"><g:fieldValue bean="${funcionarioInstance}" field="pis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.escolaridade}">
				<li class="fieldcontain">
					<span id="escolaridade-label" class="property-label"><g:message code="funcionario.escolaridade.label" default="Escolaridade" /></span>
					
						<span class="property-value" aria-labelledby="escolaridade-label"><g:fieldValue bean="${funcionarioInstance}" field="escolaridade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.lattes}">
				<li class="fieldcontain">
					<span id="lattes-label" class="property-label"><g:message code="funcionario.lattes.label" default="Lattes" /></span>
					
						<span class="property-value" aria-labelledby="lattes-label"><g:fieldValue bean="${funcionarioInstance}" field="lattes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.matricula}">
				<li class="fieldcontain">
					<span id="matricula-label" class="property-label"><g:message code="funcionario.matricula.label" default="Matricula" /></span>
					
						<span class="property-value" aria-labelledby="matricula-label"><g:fieldValue bean="${funcionarioInstance}" field="matricula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.cargo}">
				<li class="fieldcontain">
					<span id="cargo-label" class="property-label"><g:message code="funcionario.cargo.label" default="Cargo" /></span>
					
						<span class="property-value" aria-labelledby="cargo-label"><g:link controller="cargo" action="show" id="${funcionarioInstance?.cargo?.id}">${funcionarioInstance?.cargo?.nome}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.regimeJuridico}">
				<li class="fieldcontain">
					<span id="regimeJuridico-label" class="property-label"><g:message code="funcionario.regimeJuridico.label" default="Regime Juridico" /></span>
					
						<span class="property-value" aria-labelledby="regimeJuridico-label"><g:fieldValue bean="${funcionarioInstance}" field="regimeJuridico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.jornadaTrabalho}">
				<li class="fieldcontain">
					<span id="jornadaTrabalho-label" class="property-label"><g:message code="funcionario.jornadaTrabalho.label" default="Jornada Trabalho" /></span>
					
						<span class="property-value" aria-labelledby="jornadaTrabalho-label"><g:fieldValue bean="${funcionarioInstance}" field="jornadaTrabalho"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.lotacao}">
				<li class="fieldcontain">
					<span id="lotacao-label" class="property-label"><g:message code="funcionario.lotacao.label" default="Lotacao" /></span>
					
						<span class="property-value" aria-labelledby="lotacao-label"><g:link controller="departamento" action="show" id="${funcionarioInstance?.lotacao?.id}">${funcionarioInstance?.lotacao?.nome}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.situacao}">
				<li class="fieldcontain">
					<span id="situacao-label" class="property-label"><g:message code="funcionario.situacao.label" default="Situacao" /></span>
					
						<span class="property-value" aria-labelledby="situacao-label"><g:fieldValue bean="${funcionarioInstance}" field="situacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.funcaoGratificada}">
				<li class="fieldcontain">
					<span id="funcaoGratificada-label" class="property-label"><g:message code="funcionario.funcaoGratificada.label" default="Funcao Gratificada" /></span>
					
						<span class="property-value" aria-labelledby="funcaoGratificada-label"><g:fieldValue bean="${funcionarioInstance}" field="funcaoGratificada"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.banco}">
				<li class="fieldcontain">
					<span id="banco-label" class="property-label"><g:message code="funcionario.banco.label" default="Banco" /></span>
					
						<span class="property-value" aria-labelledby="banco-label"><g:fieldValue bean="${funcionarioInstance}" field="banco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.nomeBanco}">
				<li class="fieldcontain">
					<span id="nomeBanco-label" class="property-label"><g:message code="funcionario.nomeBanco.label" default="Nome Banco" /></span>
					
						<span class="property-value" aria-labelledby="nomeBanco-label"><g:fieldValue bean="${funcionarioInstance}" field="nomeBanco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.contaBancaria}">
				<li class="fieldcontain">
					<span id="contaBancaria-label" class="property-label"><g:message code="funcionario.contaBancaria.label" default="Conta Bancaria" /></span>
					
						<span class="property-value" aria-labelledby="contaBancaria-label"><g:fieldValue bean="${funcionarioInstance}" field="contaBancaria"/></span>
					
				</li>
				</g:if>
				<g:if test="${funcionarioInstance?.enderecos}">
				<li class="fieldcontain">
					<span id="enderecos-label" class="property-label"><g:message code="funcionario.enderecos.label" default="Enderecos" /></span>
					
						<g:each in="${funcionarioInstance.enderecos}" var="e">
						<span class="property-value" aria-labelledby="enderecos-label"><g:link controller="endereco" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:funcionarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${funcionarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
