<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="." prefix="tags" />


<cfparam name="attributes.tileID" default="tile-#application.fapi.getUUID()#" />
<cfparam name="attributes.collapse" default="false" /><!--- Usually set by child tileHeader & tilePanel tags --->
<cfparam name="attributes.active" default="false" />
<cfparam name="attributes.class" default="" />
<cfparam name="attributes.r_stTileData" default="stTileData" />



<cfif not thistag.HasEndTag>
	<cfabort showerror="tile must have an end tag...">
</cfif>
	
<cfif thistag.executionMode eq "START">

	<cfif NOT listFindNoCase(GetBaseTagList(),"cf_tileWrap")>
		<cfthrow message="tile requires parent of tileWrap" />	
	</cfif>

	<cfset THISTAG.Parent = GetBaseTagData( "cf_tileWrap" ) />


	<!--- Using a panel so force tile into collapsible --->
	<cfset attributes['wrapID'] = THISTAG.Parent.attributes['wrapID'] />


	<!--- Merge Parent Attributes --->
	<cfloop list="#structKeyList(THISTAG.Parent.attributes)#" index="i">
		<cfif not structKeyExists(attributes, "#i#")>
			<cfset attributes[i] = THISTAG.Parent.attributes[i] />
		</cfif>
	</cfloop>

	<cfif not structKeyExists(attributes, "parent")>
		<cfset attributes['parent'] = "###attributes.wrapID#" />
	</cfif>
	

	<!--- Identify and attach Extra Attributes --->
	<cfset lReservedAttributes = "wrapID,tileID,collapse,active,class,parent,r_stTileData" />
	
	<cfset lExtraAttributes = "" />
	<cfloop collection="#attributes#" item="attr">
		<cfif not listFindNoCase(lReservedAttributes, attr)>
			<cfset lExtraAttributes = listAppend(lExtraAttributes, '#attr#="#attributes[attr]#"', ' ') />
		</cfif>
	</cfloop>



	<cfif structKeyExists(session.fc, "filtering") AND structKeyExists(session.fc.filtering, "currentDetailRowID") AND len(attributes.objectid) AND session.fc.filtering.currentDetailRowID EQ attributes.objectid>
		<cfset attributes.active = true />
	</cfif>


	<cfset caller[attributes.r_stTileData] = duplicate(attributes) />


</cfif>


	
<cfif thistag.executionMode eq "END">
	
	<cfset tileGeneratedContent = thisTag.GeneratedContent />
	<cfset thisTag.GeneratedContent = "" />

	<cfoutput>
	<div id="#attributes.tileID#" class="tile #iif(attributes.collapse,de('tile-collapse'),de(''))# #iif(attributes.active,de('active'),de(''))# #attributes.class#" #lExtraAttributes#>
		#tileGeneratedContent#
	</div>
	</cfoutput>

</cfif>

