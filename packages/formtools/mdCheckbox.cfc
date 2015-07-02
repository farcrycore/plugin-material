
<cfcomponent extends="farcry.core.packages.formtools.boolean" name="mdCheckbox" displayname="MD Checkbox" hint="Field component to liase with boolean field types."> 
 
	<cfproperty name="ftList" required="false" default="" hint="comma separated list of values or variable:value pairs to appear in the drop down. e.g apple,orange,kiwi or APP:apple,ORA:orange,KIW:kiwi" />
	<cfproperty name="ftListData" required="false" default="" hint="Method call that must return a string in the same variable value pair format as the ftlist attribute OR a query containing the columns value & name. Method gets passed the objectid of the currently edited object as an argument. e.g apple,orange,kiwi or APP:apple,ORA:orange,KIW:kiwi or queryNew('value,name')" />
	<cfproperty name="ftListDataTypename" required="false" default="" hint="Specific typename to call ftlistdata method on." />
	<cfproperty name="ftRenderType" required="false" default="dropdown" options="dropdown,checkbox,radio" hint="The way the list will get rendered." />
	<cfproperty name="ftSelectMultiple" required="false" default="false" options="true,false" hint="used when ftRenderType=dropdown. It allows the user to select multiple items" />
	<cfproperty name="ftClass" required="false" default="" hint="sets a class for the form element" />
	<cfproperty name="ftstyle" required="false" default="" hint="allows in line styles to be added to form element" />
	<cfproperty name="ftShowLabel" required="false" default="false" hint="Set this to false to hide the label when rendering the field." />
	
	
		

	<!--- import tag libraries --->
	<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
	

	<cffunction name="init" access="public" returntype="any" output="false" hint="Returns a copy of this initialised object">
		<cfreturn this>
	</cffunction>

	
	<cffunction name="edit" access="public" output="false" returntype="string" hint="his will return a string of formatted HTML text to enable the user to edit the data">
		<cfargument name="typename" required="true" type="string" hint="The name of the type that this field is part of.">
		<cfargument name="stObject" required="true" type="struct" hint="The object of the record that this field is part of.">
		<cfargument name="stMetadata" required="true" type="struct" hint="This is the metadata that is either setup as part of the type.cfc or overridden when calling ft:object by using the stMetadata argument.">
		<cfargument name="fieldname" required="true" type="string" hint="This is the name that will be used for the form field. It includes the prefix that will be used by ft:processform.">
		<cfargument name="inputClass" required="false" type="string" default="" hint="This is the class value that will be applied to the input field.">

		<cfset var html = "" />
		<cfset var tmpCount = "" />
		<cfset var optionValue = "" />
		<cfset var rListData = "" />
		<cfset var i = "" />
		<cfset var oList = "" />
		<cfset var lData = "" />


		<cfsavecontent variable="html">

			<cfoutput>
				<div class="checkbox checkbox-adv">
					<label for="#arguments.fieldname#">
						<input class="access-hide"  name="#arguments.fieldname#" id="#arguments.fieldname#" type="checkbox" <cfif arguments.stMetadata.value EQ 1>checked</cfif> value="1"> 
						<cfif NOT arguments.stMetadata.ftShowLabel>
							#arguments.stMetadata.ftLabel#
						</cfif>
						<input type="hidden" name="#arguments.fieldname#" value="0" />
						<span class="circle"></span><span class="circle-check"></span><span class="circle-icon icon icon-done"></span>
					</label>
				</div>


			</cfoutput>

		</cfsavecontent>



		<cfreturn html />

	</cffunction>


</cfcomponent>
	


