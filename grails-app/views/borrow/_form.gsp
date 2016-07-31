<%@ page import="com.app.Borrow" %>



<div class="fieldcontain ${hasErrors(bean: borrowInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="borrow.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" type="number" value="${borrowInstance.amount}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: borrowInstance, field: 'creditBy', 'error')} required">
	<label for="creditBy">
		<g:message code="borrow.creditBy.label" default="Credit By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="creditBy" name="creditBy.id" from="${com.app.User.list()}" optionKey="id" required="" value="${borrowInstance?.creditBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: borrowInstance, field: 'creditDate', 'error')} required">
	<label for="creditDate">
		<g:message code="borrow.creditDate.label" default="Credit Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creditDate" precision="day"  value="${borrowInstance?.creditDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: borrowInstance, field: 'debitBy', 'error')} required">
	<label for="debitBy">
		<g:message code="borrow.debitBy.label" default="Debit By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="debitBy" name="debitBy.id" from="${com.app.User.list()}" optionKey="id" required="" value="${borrowInstance?.debitBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: borrowInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="borrow.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${com.app.enums.Status?.values()}" keys="${com.app.enums.Status.values()*.name()}" required="" value="${borrowInstance?.status?.name()}" />

</div>

