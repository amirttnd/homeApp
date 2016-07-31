<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Home App: <g:layoutTitle/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
    <asset:stylesheet src="application.css"/>

    <asset:javascript src="application.js"/>
    <g:layoutHead/>
</head>

<body>
<div class="container-fluid">
    <!-- Second navbar for search -->
    <nav class="navbar navbar-inverse">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#navbar-collapse-3">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Home App</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-collapse-3">
                <sec:ifAnyGranted roles="${com.app.constants.Constants.ROLE_USER}">
                    <ul class="nav navbar-nav navbar-right">
                        <li><g:link controller="session" action="index">Session</g:link></li>
                        <li><g:link controller="product" action="index">Product</g:link></li>
                        <li><g:link controller="user" action="index">User</g:link></li>
                        <li><a href="#">About</a></li>
                        <li><a href="/home/j_spring_security_logout">Logout</a></li>
                        <li>
                            <a class="btn btn-default btn-outline btn-circle collapsed" data-toggle="collapse"
                               href="#nav-collapse3" aria-expanded="false" aria-controls="nav-collapse3">Search</a>
                        </li>
                    </ul>
                </sec:ifAnyGranted>
                <div class="collapse nav navbar-nav nav-collapse slide-down" id="nav-collapse3">
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search"/>
                        </div>
                        <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-search"
                                                                           aria-hidden="true"></span></button>
                    </form>
                </div>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
    </nav><!-- /.navbar -->
    <g:if test='${flash.message}'>
        <div class="flash-message">
            ${flash.message}
        </div>
    </g:if>
</div>

<div class="container">
    <g:layoutBody/>
</div>
</body>
</html>
