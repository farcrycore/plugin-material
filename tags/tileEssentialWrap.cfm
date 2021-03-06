<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="." prefix="tags" />

<cfparam name="attributes.typename" default="" />
<cfparam name="attributes.objectid" default="" />
<cfparam name="attributes.webskin" default="" />
<cfparam name="attributes.urlParams" default="" />
<cfparam name="attributes.class" default="" />


<cfif not thistag.HasEndTag>
	<cfabort showerror="tileEssentialWrap must have an end tag...">
</cfif>
	

<!--- 
<div class="tile-wrap">
	<div class="tile tile-collapse"><!-- tile-collapse-full -->
		<div class="tile-toggle" data-target="#tile-collapse-1" data-toggle="tile"><!--  data-parent=".content" -->
			<div class="pull-left tile-side">
			</div>
			<div class="tile-action" data-ignore="tile">								
			</div>
			<div class="tile-inner">
				
			</div>
		</div>
		<div class="tile-active-show collapse" id="tile-collapse-1"><!-- tile-active-show-still -->
			<div class="tile-sub">
				
			</div>
			<div class="tile-footer">
				
			</div>
		</div>
	</div>
</div>
 --->

	
<cfif thistag.executionMode eq "START">

	<cfif NOT listFindNoCase(GetBaseTagList(),"cf_tileCriticalWrap")>
		<cfthrow message="tileEssentialWrap requires parent of tileCriticalWrap" />	
	</cfif>

	<cfset THISTAG.Parent = GetBaseTagData( "cf_tileCriticalWrap" ) />


	<!--- Merge Parent Attributes --->
	<cfloop list="#structKeyList(THISTAG.Parent.attributes)#" index="i">
		<cfif not structKeyExists(attributes, "#i#")>
			<cfset attributes[i] = THISTAG.Parent.attributes[i] />
		</cfif>
	</cfloop>
	

	<!--- Identify and attach Extra Attributes --->
	<cfset lReservedAttributes = "activeShowStill,id,collapse,toggle,active,typename,objectid,webskin,parent" />
	
	<cfset lExtraAttributes = "" />
	<cfloop collection="#attributes#" item="attr">
		<cfif not listFindNoCase(lReservedAttributes, attr)>
			<cfset lExtraAttributes = listAppend(lExtraAttributes, '#attr#="#attributes[attr]#"', ' ') />
		</cfif>
	</cfloop>

	<cfoutput>
	</div>
	<div id="#attributes.id#" class="tile-active-show #iif(attributes.collapse,de('collapse'),de(''))# #iif(attributes.activeShowStill,de('tile-active-show-still'),de(''))# #iif(attributes.active,de('in'),de(''))# #attributes.class#" #lExtraAttributes#>
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
	</cfoutput>
</cfif>

	
<cfif thistag.executionMode eq "END">

	<cfif len(trim(thisTag.GeneratedContent))>
		<cfoutput>#thisTag.GeneratedContent#</cfoutput>
		<cfset thisTag.GeneratedContent = "" />
	</cfif>
		
	<cfoutput>
		<cfif len(attributes.typename)>
			</div>
		</cfif>
	</div>
	</cfoutput>
</cfif>