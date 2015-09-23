<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="." prefix="tags" />

<cfparam name="attributes.typename" default="" />
<cfparam name="attributes.objectid" default="" />
<cfparam name="attributes.webskin" default="" />
<cfparam name="attributes.urlParams" default="" />
<cfparam name="attributes.class" default="" />


<cfif not thistag.HasEndTag>
	<cfabort showerror="tilePanel must have an end tag...">
</cfif>
	

	
<cfif thistag.executionMode eq "START">

	<cfif NOT listFindNoCase(GetBaseTagList(),"cf_tile")>
		<cfthrow message="tilePanel requires parent of tile" />	
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
	<cfset lReservedAttributes = "wrapID,tileID,collapse,active,parent,typename,objectid,webskin,urlParams,class,r_stTileData" />
	
	<cfset lExtraAttributes = "" />
	<cfloop collection="#attributes#" item="attr">
		<cfif not listFindNoCase(lReservedAttributes, attr)>
			<cfset lExtraAttributes = listAppend(lExtraAttributes, '#attr#="#attributes[attr]#"', ' ') />
		</cfif>
	</cfloop>

</cfif>

	
<cfif thistag.executionMode eq "END">

	
	<cfset tilePanelGeneratedContent = thisTag.GeneratedContent />
	<cfset thisTag.GeneratedContent = "" />
		
	<cfoutput>
	<div id="#attributes.tileID#-panel" class="tile-active-show #iif(attributes.collapse,de('collapse'),de(''))#  #iif(attributes.active,de('in'),de(''))# #attributes.class#" #lExtraAttributes#>
		<cfif len(attributes.typename)>
				
			<div 	
					class="tile-essential-wrap"
					ftTileType="#attributes.typename#" 
					ftTileObjectID="#attributes.objectid#" 
					ftTileWebskin="#attributes.webskin#" 
					ftTileRefreshURL="/#attributes.typename#/#attributes.objectid#?view=#attributes.webskin#&ajaxmode=1&#attributes.urlParams#">

				<cfif attributes.active>
					<skin:view typename="#attributes.typename#" objectid="#attributes.objectid#" webskin="#attributes.webskin#" />
				</cfif>

		</cfif>

		#tilePanelGeneratedContent#
		
		<cfif len(attributes.typename)>
			</div>
		</cfif>
	</div>
	</cfoutput>
</cfif>


