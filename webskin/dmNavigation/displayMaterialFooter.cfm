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
			<a class="fbtn fbtn-red" data-toggle="dropdown" title="Upload"><span class="access-hide">Upload</span><span class="fbtn-rotate icon icon-add"></span></a>
			<div class="fbtn-dropdown">
				<a class="fbtn fbtn-blue" href="javascript:void(0)"><span class="fbtn-text">Audio</span><span class="icon icon-mic"></span></a>
				<a class="fbtn fbtn-green" href="javascript:void(0)"><span class="fbtn-text">Image</span><span class="icon icon-image"></span></a>
				<a class="fbtn fbtn-yellow" href="javascript:void(0)"><span class="fbtn-text">Video</span><span class="icon icon-videocam"></span></a>
			</div>
		</div>
	</div>

	





	<material:removeCoreLibraries />






	<!--- Custom JQuery Base --->
	<script src="/material/js/base.min.js" type="text/javascript"></script>

	
	<script type='text/javascript'>
		<cfoutput>
		$j = jQuery.noConflict();
		$ = jQuery.noConflict();

		$('html').on('click', '.tile-collapse', function(e) {
			var $this = $(this),
			    $thisWrap = $this.parents('.tile-wrap'),
			    $thisEssentialWrap = $this.find('.tile-essential-wrap');
			    console.log($thisEssentialWrap.attr('ft:tileRefreshURL')	 );
			if (!$(e.target).is('a, a *, .collapse, .collapse *', $this)) {
				if ($this.hasClass('active')) {
					<!--- $('.tile-active-show.in', $this).collapse('hide');
										$this.removeClass('active'); --->
					console.log('tile open');
					$( $thisEssentialWrap ).load($thisEssentialWrap.attr('ft:tileRefreshURL'));
					
				} else {
					if (!$thisWrap.hasClass('tile-wrap-group')) {
											<!--- $('.tile-collapse.active .collapse.in', $thisWrap).collapse('hide');
																						$('.tile-collapse.active', $thisWrap).removeClass('active'); --->

										};
										<!--- $('.tile-active-show', $this).collapse('show');
																				$this.addClass('active'); --->
					console.log('tile collapse');
				}
			};

			
		});



		</cfoutput>
	</script>	


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