
<%@ page import="com.app.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-product" class="content scaffold-show" role="main">
			<h1 class="form-page-title"><g:message code="default.show.label" args="[entityName]" /></h1>
			<ol class="property-list product">
			
				<g:if test="${productInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="product.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label">
                            <g:formatDate format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}" date="${productInstance?.dateCreated}" />
                        </span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="product.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label">
                            <g:formatDate format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}" date="${productInstance?.lastUpdated}" />
                        </span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="product.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="product.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${productInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.purchaseDate}">
				<li class="fieldcontain">
					<span id="purchaseDate-label" class="property-label"><g:message code="product.purchaseDate.label" default="Purchase Date" /></span>
					
						<span class="property-value" aria-labelledby="purchaseDate-label"><g:formatDate date="${productInstance?.purchaseDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.session}">
				<li class="fieldcontain">
					<span id="session-label" class="property-label"><g:message code="product.session.label" default="Session" /></span>
					
						<span class="property-value" aria-labelledby="session-label"><g:link controller="session" action="show" id="${productInstance?.session?.id}">${productInstance?.session?.nickName}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="product.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${productInstance?.user?.id}">${productInstance?.user?.username}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>