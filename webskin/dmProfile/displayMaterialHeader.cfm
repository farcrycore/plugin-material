<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />




<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
	<title>Google Material</title>

	<!-- css -->
	<link href="/material/css/base.min.css" rel="stylesheet">

	<!-- favicon -->
	<!-- ... -->

	<!-- ie -->
		<!--[if lt IE 9]>
			<script src="/js/html5shiv.js" type="text/javascript"></script>
			<script src="/js/respond.js" type="text/javascript"></script>
		<![endif]-->
</head>
<body>

	<header class="header">
		<div class="clearfix pull-left">
			<ul class="nav nav-list pull-left">
				<li>
					<a href="##menu">
						<span class="access-hide">Menu</span>
						<span class="icon icon-menu"></span>
						<span class="header-close icon icon-close"></span>
					</a>
				</li>
			</ul>
			<a class="header-logo" href="/">Google Material</a>
		</div>
		<div class="clearfix pull-right">
			<ul class="nav nav-list pull-right">
				<li>
					<a href="##search">
						<span class="access-hide">Search</span>
						<span class="icon icon-search"></span>
						<span class="header-close icon icon-close"></span>
					</a>
				</li>
				<li>
					<a href="##profile">
						<span class="access-hide">John Smith</span>
						<span class="avatar avatar-sm"><img alt="John Smith" src="/material/images/users/avatar-001.jpg"></span>
						<span class="header-close icon icon-close"></span>
					</a>
				</li>
			</ul>
		</div>
	</header>

	<skin:view typename="#stobj.typename#" objectID="#stobj.objectid#" webskin="displayMaterialPrimaryNavDrawer" />


	<skin:view typename="#stobj.typename#" objectID="#stobj.objectid#" webskin="displayMaterialProfileDrawer" />


	<skin:view typename="#stobj.typename#" objectID="#stobj.objectid#" webskin="displayMaterialSearchDrawer" />
</cfoutput>