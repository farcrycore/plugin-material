<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="." prefix="tags" />


<cfparam name="attributes.id" default="tile-collapse-#application.fapi.getUUID()#" />
<cfparam name="attributes.collapse" default="true" />
<cfparam name="attributes.toggle" default="true" />
<cfparam name="attributes.active" default="false" />
<cfparam name="attributes.parent" default="body" />
<cfparam name="attributes.class" default="" />



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


<cfif not thistag.HasEndTag>
	<cfabort showerror="tileCriticalWrap must have an end tag...">
</cfif>
	
<cfif thistag.executionMode eq "START">

	
	<cfif NOT listFindNoCase(GetBaseTagList(),"cf_tileWrap")>
		<cfthrow message="tileCriticalWrap requires parent of tileWrap" />	
	</cfif>

	<cfset THISTAG.Parent = GetBaseTagData( "cf_tileWrap" ) />





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
	<div class="tile #iif(attributes.collapse,de('tile-collapse'),de(''))# #iif(attributes.active,de('active'),de(''))# #attributes.class#" #lExtraAttributes#>
		<div data-target="###attributes.id#" #iif(attributes.collapse,de('data-toggle="tile"'),de(''))# #iif(attributes.collapse,de('data-parent="#attributes.parent#"'),de(''))#  class="#iif(attributes.toggle,de('tile-toggle'),de('tile-toggle-false'))#">
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
	</cfoutput>
</cfif>