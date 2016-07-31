<%@ page import="com.app.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="product.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField class="form-control" name="name" required="" value="${productInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
    <label for="price">
        <g:message code="product.price.label" default="Price"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="price" class="form-control" type="number" value="${productInstance.price}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'purchaseDate', 'error')} required">
    <label for="purchaseDate">
        <g:message code="product.purchaseDate.label" default="Purchase Date"/>
        <span class="required-indicator">*</span>
    </label>
    %{--<g:datePicker name="purchaseDate" precision="day"  value="${productInstance?.purchaseDate}"  />--}%
    <input type="date" class="form-control" name="purchaseDate">

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'session', 'error')} required">
    <label for="session">
        <g:message code="product.session.label" default="Session"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="session" name="session.id" class="form-control"
              from="${com.app.Session.list([sort: "id", order: "desc"])}" optionKey="id" optionValue="nickName"
              required="" value="${productInstance?.session?.id}"/>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: productInstance, field: 'user', 'error')} required">
    <label for="user">
        <g:message code="product.user.label" default="User"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="user" name="user.id" from="${com.app.User.list()}" optionKey="id" optionValue="username" required=""
              value="${productInstance?.user?.id}" class="many-to-one form-control"/>

</div>

