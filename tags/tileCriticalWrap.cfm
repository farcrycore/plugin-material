<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="." prefix="tags" />

<cfparam name="attributes.typename" default="" />
<cfparam name="attributes.objectid" default="" />
<cfparam name="attributes.webskin" default="" />


<cfparam name="attributes.collapse" default="true" />
<cfparam name="attributes.toggle" default="true" />
<cfparam name="attributes.active" default="false" />






<cfif not thistag.HasEndTag>
	<cfabort showerror="tileCriticalWrap must have an end tag...">
</cfif>
	
	
<cfif thistag.executionMode eq "START">	
	<cfoutput>
	<div class="tile #iif(attributes.collapse,de('tile-collapse'),de(''))# #iif(attributes.active,de('active'),de(''))#  ">
		<div class="#iif(attributes.toggle,de('tile-toggle'),de('tile-toggle-false'))#">
	</cfoutput>
</cfif>

	
<cfif thistag.executionMode eq "END">

	<!--- IF CURRENT OBJECT --->
	<!--- <skin:view attributeCollection="#attributes#" /> --->	
	
		<cfif len(trim(thisTag.GeneratedContent))>
			<cfoutput>#thisTag.GeneratedContent#</cfoutput>
			<cfset thisTag.GeneratedContent = "" />
		</cfif>

	<cfoutput>
		</div>
	</div>
	</cfoutput>
</cfif>