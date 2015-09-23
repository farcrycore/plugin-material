<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />


<cfoutput>
<nav aria-hidden="true" class="menu menu-right" id="profile" tabindex="-1">
	<div class="menu-scroll">
		<div class="menu-top">
			<div class="menu-top-img">
				<img alt="John Smith" src="/material/images/samples/landscape.jpg">
			</div>
			<div class="menu-top-info">
				<a class="menu-top-user" href="javascript:void(0)"><span class="avatar pull-left"><img alt="alt text for John Smith avatar" src="/material/images/users/avatar-001.jpg"></span>John Smith</a>
			</div>
			<div class="menu-top-info-sub">
				<small>Some additional information about John Smith</small>
			</div>
		</div>
		<div class="menu-content">
			<ul class="nav">
				<li>
					<a class="waves-attach" href="javascript:void(0)"><span class="icon icon-lg">account_box</span>Profile Settings</a>
				</li>
				<li>
					<a class="waves-attach" href="javascript:void(0)"><span class="icon icon-lg">add_to_photos</span>Upload Photo</a>
				</li>
				<li>
					<a class="waves-attach" href="page-login.html"><span class="icon icon-lg">exit_to_app</span>Logout</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
</cfoutput>