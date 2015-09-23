<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="." prefix="tags" />



<cfparam name="attributes.class" default="" />


<cfif not thistag.HasEndTag>
	<cfabort showerror="tileHeading must have an end tag...">
</cfif>
	
<cfif thistag.executionMode eq "START">

	<cfif NOT listFindNoCase(GetBaseTagList(),"cf_tile")>
		<cfthrow message="tileHeading requires parent of tile" />	
	</cfif>

	<cfset THISTAG.Parent = GetBaseTagData( "cf_tile" ) />


	<!--- Using a panel so force tile into collapsible --->
	<cfset THISTAG.Parent.attributes['collapse'] = true />

	<!--- Merge Parent Attributes --->
	<cfloop list="#structKeyList(THISTAG.Parent.attributes)#" index="i">
		<cfif not structKeyExists(attributes, "#i#")>
			<cfset attributes[i] = THISTAG.Parent.attributes[i] />
		</cfif>
	</cfloop>
	

	<!--- Identify and attach Extra Attributes --->
	<cfset lReservedAttributes = "wrapID,tileID,collapse,active,parent,class,r_stTileData" />
	
	<cfset lExtraAttributes = "" />
	<cfloop collection="#attributes#" item="attr">
		<cfif not listFindNoCase(lReservedAttributes, attr)>
			<cfset lExtraAttributes = listAppend(lExtraAttributes, '#attr#="#attributes[attr]#"', ' ') />
		</cfif>
	</cfloop>

</cfif>

	
<cfif thistag.executionMode eq "END">

	
	<cfset tileHeadingGeneratedContent = thisTag.GeneratedContent />
	<cfset thisTag.GeneratedContent = "" />


	<cfoutput>
	<div 	id="#attributes.tileID#-heading" 
			data-target="###attributes.tileID#-panel" 
			data-toggle="tile" 
			<cfif len(attributes.parent)>data-parent="#attributes.parent#"</cfif>  
			#lExtraAttributes#>
		#tileHeadingGeneratedContent#
	</div>
	</cfoutput>
</cfif>

