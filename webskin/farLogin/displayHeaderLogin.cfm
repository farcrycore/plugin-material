<cfsetting enablecfoutputonly="true">
<!--- @@Copyright: Daemon Pty Limited 2002-2008, http://www.daemon.com.au --->
<!--- @@License:
    This file is part of FarCry.

    FarCry is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    FarCry is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with FarCry.  If not, see <http://www.gnu.org/licenses/>.
--->
<!--- @@displayname: Standard Login Header --->
<!--- @@description:   --->
<!--- @@author: Matthew Bryant (mbryant@daemon.com.au) --->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin">

<cfset request.fc.inwebtop = true>


<skin:loadCSS id="fc-bootstrap" />
<skin:loadCSS id="fc-login" />
<skin:loadJS id="fc-jquery" />
<skin:loadJS id="fc-bootstrap" />


<cfoutput><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Bingo Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body style="background-image:url(/material/wsimages/webtop-login-bg.jpg);">
	<div class="wrap" style="background-image:url(#application.url.webtop#/css/images/bg-mask-dot.png);">
		<div class="content-main">
			<div class="content-block">
				<div id="header" class="clearfix">
					<h1 class="pull-left"><a href="#application.url.webroot#/" target="_blank" class="logo webtop-logo">
						<img src="/material/wsimages/bingo-industries-logo.png" style="max-width:180px;max-height:60px;" />
					</a></h1>
					<!--- <h1 class="pull-right"><a href="http://www.farcrycore.org/" target="_blank" class="logo farcry-logo">FarCry Core</a></h1> --->
				</div>
				<div class="content-pod">
</cfoutput>

<cfsetting enablecfoutputonly="false">