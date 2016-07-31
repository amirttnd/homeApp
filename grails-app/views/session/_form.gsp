<%@ page import="com.app.Session" %>


<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'nickName', 'error')} required">
    <label for="nickName">
        <g:message code="session.nickName.label" default="Nick Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nickName" class="form-control" required="" value="${sessionInstance?.nickName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'products', 'error')} ">
    <label for="products">
        <g:message code="session.products.label" default="Products"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${sessionInstance?.products ?}" var="p">
            <li><g:link controller="product" action="show" id="${p.id}">${p?.name}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="product" action="create"
                    params="['session.id': sessionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'status', 'error')} required">
    <label for="status">
        <g:message code="session.status.label" default="Status"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select class="form-control" name="status" from="${com.app.enums.Status?.values()}" optionValue="value" keys="${com.app.enums.Status.values()*.name()}"
              required="" value="${sessionInstance?.status?.name()}"/>

</div>

