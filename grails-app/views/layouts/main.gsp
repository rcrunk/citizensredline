<!DOCTYPE html>
<!-- Copyright 2013 CitizensRedLine.org - All rights reserved. -->
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
    <meta name="description" content="Citizen's Red Line is dedicated to holding our political leaders
          responsible for their actions when those actions run counter to the interests and well being
          of the Citizens they were chosen to represent. The current red line is anti congressional support
          for initiating war against Syria.">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title><g:layoutTitle default="Citizen's Red Line"/></title>
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.jpg')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'citizensredline.css')}" type="text/css">
    <g:javascript library="jquery" />
		<g:layoutHead/>
		<r:layoutResources />

	</head>
	<body>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="row">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle"
                    data-toggle="collapse" data-target=".navbar-ex1-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand pull-left" href="/citizensredline">
              <div id="logo"><span class="citizen">Citizen's</span>&nbsp;<span class="redline">Redline</span></div>
            </a>
          </div>

          <div class="navbar-collapse collapse navbar-ex1-collapse pull-right">
            <ul class="nav navbar-nav">
              <li class="">
                <a href="/citizensredline">Draw the Line</a>
              </li>
              <li class="">
                <g:link controller="crossers">Line Crossers</g:link>
              </li>
              <li class="">
                <g:link controller="moreInfo">More Information</g:link>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <g:layoutBody/>
    </div>
		<g:javascript library="application"/>
    <script src="${resource(dir: 'js', file: 'bootstrap.js')}" type="text/javascript"></script>
		<r:layoutResources />
  </div>

	</body>
</html>
