<%@ page import="com.app.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-product" class="content scaffold-list" role="main">
    <h1 class="form-page-title"><g:message code="default.list.label" args="[entityName]"/>...!</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="custom-table table table-bordered table-hover table-responsive">
        <thead>
        <tr>

            <g:sortableColumn property="dateCreated"
                              title="${message(code: 'product.dateCreated.label', default: 'Date Created')}"/>

            <g:sortableColumn property="lastUpdated"
                              title="${message(code: 'product.lastUpdated.label', default: 'Last Updated')}"/>

            <g:sortableColumn property="name" title="${message(code: 'product.name.label', default: 'Name')}"/>

            <g:sortableColumn property="price" title="${message(code: 'product.price.label', default: 'Price')}"/>

            <g:sortableColumn property="purchaseDate"
                              title="${message(code: 'product.purchaseDate.label', default: 'Purchase Date')}"/>

            <th><g:message code="product.session.label" default="Session"/></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${productInstanceList}" status="i" var="productInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td>
                    <g:link action="show"
                            id="${productInstance.id}">
                        <g:formatDate format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}"
                                      date="${productInstance.dateCreated}"/>
                    </g:link>
                </td>

                <td><g:formatDate format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}"
                                  date="${productInstance.lastUpdated}"/></td>

                <td>${fieldValue(bean: productInstance, field: "name")}</td>

                <td>${fieldValue(bean: productInstance, field: "price")}</td>

                <td><g:formatDate format="${com.app.constants.Constants.DISPLAYABLE_DATE_FORMAT}"
                                  date="${productInstance.purchaseDate}"/></td>

                <td>
                    <g:link controller="session" action="show" id="${productInstance?.session.id}">
                        ${fieldValue(bean: productInstance, field: "session.nickName")}
                    </g:link>
                </td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${productInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
