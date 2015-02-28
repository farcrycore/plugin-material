<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="." prefix="tags" />

<cfparam name="attributes.typename" default="" />
<cfparam name="attributes.objectid" default="" />
<cfparam name="attributes.webskin" default="" />

<cfparam name="attributes.collapse" default="true" />
<cfparam name="attributes.active" default="false" />

<cfif not thistag.HasEndTag>
	<cfabort showerror="tileEssentialWrap must have an end tag...">
</cfif>
	
	
<cfif thistag.executionMode eq "START">	
	<cfoutput>
	<div class="tile-active-show collapse #iif(attributes.collapse,de('tile-collapse'),de(''))# #iif(attributes.active,de('in'),de(''))#">
		<div class="tile-essential-wrap"
				ft:tileType="#attributes.typename#" 
				ft:tileObjectID="#attributes.objectid#" 
				ft:tileWebskin="#attributes.webskin#" 
				ft:tileRefreshURL="/#attributes.typename#/#attributes.objectid#?view=#attributes.webskin#&ajaxmode=1">
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