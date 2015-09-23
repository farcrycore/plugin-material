<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/core/" prefix="core" />
<cfimport taglib="/farcry/plugins/material/tags/" prefix="material" />



<cfoutput>
	<footer class="footer">
		<div class="container">
			<p>Material</p>
		</div>
	</footer>
	<div class="fbtn-container">
		<div class="fbtn-inner">
			<a class="fbtn fbtn-brand-accent fbtn-lg" data-toggle="dropdown"><span class="fbtn-text">Links</span><span class="fbtn-ori icon">add</span><span class="fbtn-sub icon">close</span></a>
			<div class="fbtn-dropdown">
				<a class="fbtn" href="https://github.com/Daemonite/material" target="_blank"><span class="fbtn-text">Fork me on GitHub</span><span class="fa fa-github"></span></a>
				<a class="fbtn fbtn-blue" href="https://twitter.com/daemonites" target="_blank"><span class="fbtn-text">Follow Daemon on Twitter</span><span class="fa fa-twitter"></span></a>
				<a class="fbtn fbtn-alt" href="http://www.daemon.com.au/" target="_blank"><span class="fbtn-text">Visit Daemon Website</span><span class="icon">link</span></a>
			</div>
		</div>
	</div>

	





	<material:removeCoreLibraries />




	<!-- js -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


	<!--- Custom JQuery Base --->
	<script src="/material/js/base.min.js" type="text/javascript"></script>

	<!-- js for this project -->
	<script src="/material/js/project.min.js"></script>



	<!--- This will place the javascript inline --->
	<core:jsInHead inline="true" />



	<!--- Add the loaded libraries into the header --->
	<cfif not isdefined("request.mode.ajax") or not request.mode.ajax>
		<core:inHead variable="aHead" /><!--- This will add css to header and return the custom scrips --->
		
		<!--- Output the custom scripts --->
		<cfloop from="1" to="#arraylen(aHead)#" index="i">
			<cfif aHead[i].id eq "onReady">
				<script type='text/javascript'>$j(document).ready(function(){ #aHead[i].html# });</script>
			<cfelse>
				<cfhtmlHead text="#aHead[i].html#" />
			</cfif>
		</cfloop>
	</cfif>

	<cfset Request.InHead = structNew() />



</body>
</html>
</cfoutput>