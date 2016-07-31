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
    Register Here...!
</div>
<div id='form'>
    <div class='inner'>

        <g:if test='${flash.message}'>
            <div class='login_message'>${flash.message}</div>
        </g:if>

        <form  role="form" action='' method='POST' id='loginForm' class='cssform' autocomplete='off'>
            <div class="form-group">
                <label for='username'>Email:</label>
                <input type='email' name='username' id='username'  class="form-control" >
            </div>

            <div class="form-group">
                <label for='password'>Password:</label>
                <input   type='password' id="password"  name='password' class="form-control" >
            </div>

            <div class="form-group">
                <label for='phoneNumber'>Phone Number:</label>
                <input   type='text' id="phoneNumber"  name='phoneNumber' class="form-control" >
            </div>

            <p>
                <input type='submit' class="btn btn-success" id="submit" value='Register'/>
            </p>
        </form>
    </div>
</div>
<div class="form-footer">
    <span class="form-footer-title">Already have accout click here?</span>
    <g:link controller="register" action="login" class="form-footer-link">Login</g:link>
</div>
</body>
</html>