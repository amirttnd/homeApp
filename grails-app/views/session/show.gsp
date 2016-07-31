<%@ page import="com.app.constants.Constants; com.app.Session" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'session.label', default: 'Session')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-session" class="content scaffold-show" role="main">
    <h1 class="form-page-title"><g:message code="default.show.label" args="[entityName]"/></h1>
    <ol class="property-list session">

        <g:if test="${sessionInstance?.nickName}">
            <li class="fieldcontain">
                <span id="nickName-label" class="property-label"><g:message code="session.nickName.label"
                                                                            default="Nick Name"/></span>

                <span class="property-value" aria-labelledby="nickName-label"><g:fieldValue bean="${sessionInstance}"
                                                                                            field="nickName"/></span>

            </li>
        </g:if>

        <g:if test="${sessionInstance?.dateCreated}">
            <li class="fieldcontain">
                <span id="dateCreated-label" class="property-label"><g:message code="session.dateCreated.label"
                                                                               default="Date Created"/></span>

                <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                        format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}"
                        date="${sessionInstance?.dateCreated}"/></span>

            </li>
        </g:if>

        <g:if test="${sessionInstance?.endDate}">
            <li class="fieldcontain">
                <span id="endDate-label" class="property-label"><g:message code="session.endDate.label"
                                                                           default="End Date"/></span>

                <span class="property-value" aria-labelledby="endDate-label"><g:formatDate
                        format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}"
                        date="${sessionInstance?.endDate}"/></span>

            </li>
        </g:if>

        <g:if test="${sessionInstance?.lastUpdated}">
            <li class="fieldcontain">
                <span id="lastUpdated-label" class="property-label"><g:message code="session.lastUpdated.label"
                                                                               default="Last Updated"/></span>

                <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate
                        format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}"
                        date="${sessionInstance?.lastUpdated}"/></span>

            </li>
        </g:if>

        <g:if test="${sessionInstance?.products}">
            <li class="fieldcontain">
                <span id="products-label" class="property-label"><g:message code="session.products.label"
                                                                            default="Products"/></span>

                <g:each in="${sessionInstance.products}" var="p">
                    <span class="property-value" aria-labelledby="products-label">
                        <g:link controller="product" action="show" id="${p.id}">
                            ${p?.name}
                        </g:link>
                        <span class="form-footer-link font-sm">(${p?.user?.username})</span>
                    </span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${sessionInstance?.startDate}">
            <li class="fieldcontain">
                <span id="startDate-label" class="property-label"><g:message code="session.startDate.label"
                                                                             default="Start Date"/></span>

                <span class="property-value" aria-labelledby="startDate-label"><g:formatDate
                        format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}"
                        date="${sessionInstance?.startDate}"/></span>

            </li>
        </g:if>

        <g:if test="${sessionInstance?.status}">
            <li class="fieldcontain">
                <span id="status-label" class="property-label"><g:message code="session.status.label"
                                                                          default="Status"/></span>

                <span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${sessionInstance}"
                                                                                          field="status.value"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: sessionInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${sessionInstance}"><g:message code="default.button.edit.label"
                                                                                        default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
