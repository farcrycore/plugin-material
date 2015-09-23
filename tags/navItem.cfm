
<!--- IMPORT LIBRARIES --->
<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin">
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft">


<cfparam name="attributes.id" default="#application.fapi.getUUID()#" />
<cfparam name="attributes.title" default="" />
<cfparam name="attributes.icon" default="apps" />
<cfparam name="attributes.type" />
<cfparam name="attributes.objectID" default="" />
<cfparam name="attributes.view" default="displayPageStandard" />
<cfparam name="attributes.bodyView" />


<cfset baseTagData = getBaseTagData("cf_nav")>

<cfif thistag.executionMode eq "Start">

	<cfset variables.stItem = structNew() />
	<cfset variables.stItem.id = attributes.id />
	<cfset variables.stItem.title = attributes.title />
	<cfset variables.stItem.icon = attributes.icon />
	<cfset variables.stItem.type = attributes.type />
	<cfset variables.stItem.objectid = attributes.objectid />
	<cfset variables.stItem.view = attributes.view />
	<cfset variables.stItem.bodyView = attributes.bodyView />
	<cfset variables.stItem.allowedRoles = "" />

	
    <cfif structKeyExists(application.stcoapi, attributes.type) 
		AND structKeyExists(application.stcoapi['#attributes.type#'].stWebskins, attributes.bodyView) >

		<cfif structKeyExists(application.stcoapi['#attributes.type#'].stWebskins['#attributes.bodyView#'], 'allowedRoles')>
			<cfset checkRole = "#application.stcoapi['#attributes.type#'].stWebskins['#attributes.bodyView#'].allowedRoles#" />

		    <cfif not len(checkRole) OR NOT application.fapi.hasRole(role="#checkRole#")>
		    	<cfif application.fapi.hasRole("sysAdmin")>
					<!--- SysAdmin can see everything --->
					<cfset variables.stItem.allowedRoles = checkRole />
				<cfelse>
					<cfexit method="exittag" />
				</cfif>
		    </cfif>
		<cfelse>
			<cfif application.fapi.hasRole("sysAdmin")>
					<!--- SysAdmin can see everything --->
				<cfset variables.stItem.allowedRoles = "No AllowedRoles" />
			<cfelse>
				 <cfexit method="exittag" />
			</cfif>
		</cfif>
	<cfelse>
		<cfexit method="exittag" />
	</cfif>
</cfif>


<cfif thistag.executionMode eq "End">
	
	<cfif len(trim(thisTag.GeneratedContent))>
		<cfset variables.stItem.title = thisTag.GeneratedContent />
		<cfset thisTag.GeneratedContent = "" />
	</cfif>



	<cfset arrayAppend(baseTagData.attributes.aNavItems, variables.stItem) />


</cfif>


<!--- 
SETUP THE NEXT ROW
 --->
