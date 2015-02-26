<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />


<cfoutput>
<nav class="menu menu-right" id="profile">
	<div class="menu-scroll">
		<div class="menu-warp">
			<div class="menu-top">
				<div class="menu-top-img">
					<img alt="John Smith" src="/material/images/samples/landscape.jpg">
				</div>
				<div class="menu-top-info">
					<a class="menu-top-user" href="javascript:void(0)"><span class="avatar pull-left"><img alt="John Smith" src="/material/images/users/avatar-001.jpg"></span>John Smith</a>
				</div>
			</div>
			<div class="menu-content">
				<ul class="nav">
					<li>
						<a href="javascript:void(0)"><span class="icon icon-account-box"></span>Profile Settings</a>
					</li>
					<li>
						<a href="javascript:void(0)"><span class="icon icon-add-to-photos"></span>Upload Photo</a>
					</li>
					<li>
						<a href="javascript:void(0)"><span class="icon icon-exit-to-app"></span>Logout</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</nav>
</cfoutput>