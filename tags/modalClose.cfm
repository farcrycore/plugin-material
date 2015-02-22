
<!--- IMPORT LIBRARIES --->
<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin">



<cfif thistag.executionMode eq "Start">
	<skin:onReady>
		<cfoutput>if ( self !== top ) {parent.$('##mint-modal').modal('hide')} else {$('##mint-modal').modal('hide')};</cfoutput>
	</skin:onReady>
</cfif>


<cfif thistag.executionMode eq "End">
	<!--- nothing --->
</cfif>



