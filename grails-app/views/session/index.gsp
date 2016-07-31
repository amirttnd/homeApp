<%@ page import="com.app.Session" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'session.label', default: 'Session')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li>
            <g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
        </li>
    </ul>
</div>

<div id="list-session" class="content scaffold-list" role="main">
    <h1 class="form-page-title"><g:message code="default.list.label" args="[entityName]"/>...!</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="custom-table table table-bordered table-hover table-responsive">
        <thead>
        <tr>

            <g:sortableColumn property="dateCreated"
                              title="${message(code: 'session.dateCreated.label', default: 'Date Created')}"/>

            <g:sortableColumn property="endDate"
                              title="${message(code: 'session.endDate.label', default: 'End Date')}"/>

            <g:sortableColumn property="lastUpdated"
                              title="${message(code: 'session.lastUpdated.label', default: 'Last Updated')}"/>

            <g:sortableColumn property="nickName"
                              title="${message(code: 'session.nickName.label', default: 'Nick Name')}"/>

            <g:sortableColumn property="startDate"
                              title="${message(code: 'session.startDate.label', default: 'Start Date')}"/>

            <g:sortableColumn property="status" title="${message(code: 'session.status.label', default: 'Status')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${sessionInstanceList}" status="i" var="sessionInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${sessionInstance.id}">
                    <g:formatDate format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}"
                                  date="${sessionInstance.dateCreated}"/>

                </g:link>
                </td>

                <td><g:formatDate format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}"
                                  date="${sessionInstance.endDate}"/></td>

                <td><g:formatDate format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}"
                                  date="${sessionInstance.lastUpdated}"/></td>

                <td>${fieldValue(bean: sessionInstance, field: "nickName")}</td>

                <td><g:formatDate format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}"
                                  date="${sessionInstance.startDate}"/></td>

                <td>${fieldValue(bean: sessionInstance, field: "status.value")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${sessionInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
