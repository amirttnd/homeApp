
<%@ page import="com.app.Borrow" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'borrow.label', default: 'Borrow')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-borrow" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-borrow" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list borrow">
			
				<g:if test="${borrowInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="borrow.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${borrowInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${borrowInstance?.creditBy}">
				<li class="fieldcontain">
					<span id="creditBy-label" class="property-label"><g:message code="borrow.creditBy.label" default="Credit By" /></span>
					
						<span class="property-value" aria-labelledby="creditBy-label"><g:link controller="user" action="show" id="${borrowInstance?.creditBy?.id}">${borrowInstance?.creditBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${borrowInstance?.creditDate}">
				<li class="fieldcontain">
					<span id="creditDate-label" class="property-label"><g:message code="borrow.creditDate.label" default="Credit Date" /></span>
					
						<span class="property-value" aria-labelledby="creditDate-label"><g:formatDate date="${borrowInstance?.creditDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${borrowInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="borrow.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${borrowInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${borrowInstance?.debitBy}">
				<li class="fieldcontain">
					<span id="debitBy-label" class="property-label"><g:message code="borrow.debitBy.label" default="Debit By" /></span>
					
						<span class="property-value" aria-labelledby="debitBy-label"><g:link controller="user" action="show" id="${borrowInstance?.debitBy?.id}">${borrowInstance?.debitBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${borrowInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="borrow.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${borrowInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${borrowInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="borrow.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${borrowInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:borrowInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${borrowInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
