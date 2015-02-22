

<cfif thistag.executionMode eq "START">	
	<!--- Remove the JS libraries we dont need --->
	<cfset lRemoveLibrariesJS = "fc-jquery,jquery-tooltip,fc-jquery-ui,fc-bootstrap,bootstrap-datepicker,jquery-tree,category-formtool,jquery-modal,jquery-validate" />

	<cfif structKeyExists(request.inHead, "aJSLibraries")>
		
		<cfswitch expression="#server.coldfusion.productname#">
			<cfcase value="Railo">
				<cfset oCaster = createObject('java','railo.runtime.op.Caster') />
				<cfset request.inHead.aJSLibraries.removeAll(lRemoveLibrariesJS) />
			</cfcase>
			<cfdefaultcase>
				<cfset request.inHead.aJSLibraries.removeAll(listToArray(lRemoveLibrariesJS)) >
			</cfdefaultcase>
		</cfswitch>	

	</cfif>


	<!--- Remove the CSS libraries we dont need --->
	<cfset lRemoveLibrariesCSS = "jquery-tooltip,farcry-form,fc-jquery-ui,jquery-ui,fc-fontawesome,bootstrap-datepicker,jquery-tree,jquery-modal,fc-icons" />

	<cfif structKeyExists(request.inHead, "aCSSLibraries")>
		<cfswitch expression="#server.coldfusion.productname#">
			<cfcase value="Railo">
				<cfset oCaster = createObject('java','railo.runtime.op.Caster') />
				<cfset request.inHead.aCSSLibraries.removeAll(lRemoveLibrariesCSS) />
			</cfcase>
			<cfdefaultcase>
				<cfset request.inHead.aCSSLibraries.removeAll(listToArray(lRemoveLibrariesCSS)) >
			</cfdefaultcase>
		</cfswitch>	
		
	</cfif>

</cfif>