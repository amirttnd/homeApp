<%--
  Created by IntelliJ IDEA.
  User: amir
  Date: 31/7/16
  Time: 10:10 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">

    <title>Login</title>
</head>

<body>
<div class="form-page-title">
    Please Login...!
</div>
<div id='form'>
    <div class='inner'>

        <g:if test='${flash.message}'>
            <div class='login_message'>${flash.message}</div>
        </g:if>

        <form  role="form" action='/home/j_spring_security_check' method='POST' id='loginForm' class='cssform' autocomplete='off'>
            <div class="form-group">
                <label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
                <input type='text' name='j_username' id='username'  class="form-control" >
            </div>

            <div class="form-group">
            <label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
                <input   type='password'  name='j_password' class="form-control" >
            </div>


            <div class="checkbox">
                <label><input type="checkbox" name='_spring_security_remember_me'> Remember me</label>
            </div>

            <p>
                <input type='submit' class="btn btn-success" id="submit" value='${message(code: "springSecurity.login.button")}'/>
            </p>
        </form>
    </div>
</div>
<div class="form-footer">
    <span class="form-footer-title">Click here new User?</span>
    <g:link controller="register" action="register" class="form-footer-link">Create new Account</g:link>
</div>
</body>
</html>