<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/security" prefix="sec" />		



<cfif not application.fapi.isLoggedIn()>
	<cfset relocateTo = application.fapi.fixURL(url="#cgi.script_name#?#cgi.query_string#",removevalues='logout,furl') />
	<skin:location url="#application.fapi.getLink(href=application.url.publiclogin,urlParameters='returnUrl='&application.fc.lib.esapi.encodeForURL(relocateTo))#" />
</cfif>




<skin:view typename="dmProfile" objectID="#application.fapi.getCurrentUsersProfile().objectid#" webskin="displayMaterialHeader" 
			palette="brand-accent" />


<skin:view typename="#url.type#" objectID="#url.objectid#" webskin="#url.bodyView#" />


<skin:view typename="dmProfile" objectID="#application.fapi.getCurrentUsersProfile().objectid#" webskin="displayMaterialFooter" />

