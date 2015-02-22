<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="." prefix="tags" />




<cfif not thistag.HasEndTag>
	<cfabort showerror="tileWrap must have an end tag...">
</cfif>
	
	
<cfif thistag.executionMode eq "START">	
	<cfoutput>
	<div class="tile-wrap">
		
	</cfoutput>
</cfif>

	
<cfif thistag.executionMode eq "END">

	<!--- IF CURRENT OBJECT --->
	<!--- <skin:view attributeCollection="#attributes#" /> --->	
	
	<cfoutput>
		
	</div>
	</cfoutput>
</cfif>