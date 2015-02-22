
<!--- IMPORT LIBRARIES --->
<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin">




<cfset baseTagData = getBaseTagData("cf_modalWrap")>

<cfif thistag.executionMode eq "Start">
	<!--- Do nothing --->
</cfif>


<cfif thistag.executionMode eq "End">
	<cfset baseTagData.attributes.actionsHTML = thisTag.GeneratedContent />
	<cfset thisTag.GeneratedContent = "" />
</cfif>