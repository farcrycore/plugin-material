<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />



<cfparam name="stParam.palette" default="brand" />


<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, width=device-width" name="viewport">
	<title>Material</title>

	<!-- css -->
	<link href="/material/css/base.min.css" rel="stylesheet">

	<!-- css for this project -->
	<link href="/material/css/project.min.css" rel="stylesheet">

	<!-- favicon -->
	<!-- ... -->

	<!-- ie -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body class="avoid-fout page-#stParam.palette#">
	<div class="avoid-fout-indicator avoid-fout-indicator-fixed">
		<div class="progress-circular progress-circular-center">
			<div class="progress-circular-wrapper">
				<div class="progress-circular-inner">
					<div class="progress-circular-left">
						<div class="progress-circular-spinner"></div>
					</div>
					<div class="progress-circular-gap"></div>
					<div class="progress-circular-right">
						<div class="progress-circular-spinner"></div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<header class="header header-#stParam.palette# header-waterfall">
		<cfif application.fapi.isLoggedIn()>
			<ul class="nav nav-list pull-left">
				<li>
					<a data-toggle="menu" href="##menu">
						<span class="icon icon-lg">menu</span>
					</a>
				</li>
			</ul>
		</cfif>

		<a class="header-logo #iif(application.fapi.isLoggedIn(),de('margin-left-no'),de(''))#" href="/materialPrototype/displayPageStandard/displayTypeBody">Material</a>
		
		<cfif application.fapi.isLoggedIn()>
			<ul class="nav nav-list pull-right">
				<li class="">
					<a data-toggle="menu" href="##search">
						<span class="access-hide">Search</span>
						<span class="icon icon">search</span>
					</a>
				</li>
				<li>
					<a data-toggle="menu" href="##profile">
						<span class="access-hide">#application.fapi.getCurrentUsersProfile().firstname# #application.fapi.getCurrentUsersProfile().lastName#</span>
						<span class="avatar"><img alt="alt text for John Smith avatar" src="/material/images/users/avatar-001.jpg"></span>
					</a>
				</li>
			</ul>
		</cfif>
	</header>

	<cfif application.fapi.isLoggedIn()>
		<skin:view typename="#stobj.typename#" objectID="#stobj.objectid#" webskin="displayMaterialDrawerPrimaryNav" />


		<skin:view typename="#stobj.typename#" objectID="#stobj.objectid#" webskin="displayMaterialDrawerProfile" />


		<skin:view typename="#stobj.typename#" objectID="#stobj.objectid#" webskin="displayMaterialDrawerSearch" />
	</cfif>

</cfoutput>