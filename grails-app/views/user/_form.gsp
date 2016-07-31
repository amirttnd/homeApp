<%@ page import="com.app.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" class="form-control" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" class="form-control" value="${userInstance?.password}"/>

</div>

<div class="checkbox ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
        <g:checkBox name="accountExpired"  value="${userInstance?.accountExpired}" />
        <g:message code="user.accountExpired.label" default="Account Expired" />
	</label>

</div>

<div class="checkbox ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
        <g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
        <g:message code="user.accountLocked.label" default="Account Locked" />
	</label>

</div>

<div class="checkbox" ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
        <g:checkBox name="enabled" value="${userInstance?.enabled}" />
        <g:message code="user.enabled.label" default="Enabled" />
	</label>
</div>

<div class="checkbox">
	<label for="passwordExpired">
        <g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
        <g:message code="user.passwordExpired.label" default="Password Expired" />
	</label>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="user.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" class="form-control" required="" value="${userInstance?.phoneNumber}"/>

</div>

