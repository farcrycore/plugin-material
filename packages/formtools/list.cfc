<!--- @@description:
	<p>Renders a dropdown select box, check boxes or radio buttons with data provided via a comma separated list or from a method call</p> --->

<!--- @@examples:
	<p>Basic</p>
	<code>
	<cfproperty
 			ftSeq="15"
 			ftFieldset="Colors"
 			name="podHeaderColor"
	 		type="string"
	 		hint="Pod Header Color"
	 		required="false"
	 		default=""
	 		ftLabel="Pod Header Color"
 			ftType="list"
 			ftList="apple,orange,kiwi"/>
	</code> 
	<p>List with different values from text</p>
	<code>
	<cfproperty
 			ftSeq="15"
 			ftFieldset="Colors"
 			name="podHeaderColor"
	 		type="string"
	 		hint="Pod Header Color"
	 		required="false"
	 		default=""
	 		ftLabel="Pod Header Color"
 			ftType="list"
 			ftList="APP:apple,ORA:orange,KIW:kiwi"/>
	</code>
	<p>List rendered as check boxes</p>
	<code>
	<cfproperty
 			ftSeq="15"
 			ftFieldset="Colors"
 			name="podHeaderColor"
	 		type="string"
	 		hint="Pod Header Color"
	 		required="false"
	 		default=""
	 		ftLabel="Pod Header Color"
 			ftType="list"
 			ftList="apple,orange,kiwi"
			ftRenderType="checkbox"/>
	</code>
	<p>List rendered as radio buttons</p>
	<code>
	<cfproperty
 			ftSeq="15"
 			ftFieldset="Colors"
 			name="podHeaderColor"
	 		type="string"
	 		hint="Pod Header Color"
	 		required="false"
	 		default=""
	 		ftLabel="Pod Header Color"
 			ftType="list"
 			ftList="apple,orange,kiwi"
			ftRenderType="radio"/>
	</code>
	
	<p>List with a method call to populate</p>
	<code>
	<cfproperty
 			ftSeq="15"
 			ftFieldset="Colors"
 			name="podHeaderColor"
	 		type="string"
	 		hint="Pod Header Color"
	 		required="false"
	 		default=""
	 		ftLabel="Pod Header Color"
 			ftType="list"
 			ftListData="myMethod"
			/>
	</code>
	<p>List with a method call to populate from another type component</p>
	<code>
	<cfproperty
 			ftSeq="15"
 			ftFieldset="Colors"
 			name="podHeaderColor"
	 		type="string"
	 		hint="Pod Header Color"
	 		required="false"
	 		default=""
	 		ftLabel="Pod Header Color"
 			ftType="list"
 			ftListData="myMethod"
			ftListDataTypename="dmNews"/>
	</code>
--->
<cfcomponent extends="farcry.core.packages.formtools.list" name="list" displayname="list" hint="Field component to liase with all list field types"> 
 
	<cfproperty name="ftList" required="false" default="" hint="comma separated list of values or variable:value pairs to appear in the drop down. e.g apple,orange,kiwi or APP:apple,ORA:orange,KIW:kiwi" />
	<cfproperty name="ftListData" required="false" default="" hint="Method call that must return a string in the same variable value pair format as the ftlist attribute OR a query containing the columns value & name. Method gets passed the objectid of the currently edited object as an argument. e.g apple,orange,kiwi or APP:apple,ORA:orange,KIW:kiwi or queryNew('value,name')" />
	<cfproperty name="ftListDataTypename" required="false" default="" hint="Specific typename to call ftlistdata method on." />
	<cfproperty name="ftRenderType" required="false" default="dropdown" options="dropdown,checkbox,radio" hint="The way the list will get rendered." />
	<cfproperty name="ftSelectMultiple" required="false" default="false" options="true,false" hint="used when ftRenderType=dropdown. It allows the user to select multiple items" />
	<cfproperty name="ftClass" required="false" default="" hint="sets a class for the form element" />
	<cfproperty name="ftstyle" required="false" default="" hint="allows in line styles to be added to form element" />
	<cfproperty name="ftMultipleLines" required="false" default="false" options="true,false" hint="for radio and checkbox only, places each checkox or radio button on a new line" />
	
	
		

	<!--- import tag libraries --->
	<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
	

	<cffunction name="init" access="public" returntype="list" output="false" hint="Returns a copy of this initialised object">
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

	
		<cfset lData = getListData(	objectid="#arguments.stobject.objectid#", 
									typename="#arguments.typename#",
									property="#arguments.stMetadata.name#",
									stPropMetadata="#arguments.stMetadata#") /> 
		
		<cfif listLen(lData)>
			<cfswitch expression="#arguments.stMetadata.ftRenderType#">


				<cfcase value="radio,checkbox">
					<cfsavecontent variable="html">

						<cfoutput>


							<cfset tmpCount=0>
							<cfloop list="#lData#" index="i">
								<cfset tmpCount=tmpCount + 1>
								<cfif Left(i, 1) EQ ":">
									<cfset optionValue = "" /><!--- This means that the developer wants the value to be an empty string --->
								<cfelse>
									<cfset optionValue = ListFirst(i,":") />
								</cfif>
								<div class="#arguments.stMetadata.ftRenderType# #arguments.stMetadata.ftRenderType#-adv #iif(arguments.stMetadata.ftMultipleLines, de(''), de('#arguments.stMetadata.ftRenderType#-inline'))#">
									<label for="#arguments.fieldname#-#tmpCount#">
										<input class="access-hide #arguments.inputClass# #arguments.stMetadata.ftClass#" style="#arguments.stMetadata.ftStyle#" id="#arguments.fieldname#-#tmpCount#" name="#arguments.fieldname#" type="#arguments.stMetadata.ftRenderType#"
											 	value="#optionValue#"
											 	<cfif listFindNoCase(arguments.stMetadata.value, optionValue)> checked="checked"</cfif>>#ListLast(i , ":")#
										<span class="circle"></span><span class="circle-check"></span>
									</label>
								</div>

							</cfloop>
							<input type="hidden" name="#arguments.fieldname#" value="">
						</cfoutput>

					</cfsavecontent>
				</cfcase>
				
				<cfdefaultcase>
							
					<cfsavecontent variable="html">

						<cfoutput><select id="#arguments.fieldname#" name="#arguments.fieldname#" class="#arguments.inputClass# #arguments.stMetadata.ftClass#" style="#arguments.stMetadata.ftStyle#"<cfif arguments.stMetadata.ftSelectMultiple> multiple="multiple"</cfif>></cfoutput>
						<cfloop list="#lData#" index="i">
							<cfif Left(i, 1) EQ ":">
								<cfset optionValue = "" /><!--- This means that the developer wants the value to be an empty string --->
							<cfelse>
								<cfset optionValue = ListFirst(i,":") />
							</cfif>
							<cfoutput><option value="#optionValue#"<cfif listFindNoCase(arguments.stMetadata.value, optionValue) or arguments.stMetadata.value eq optionValue> selected="selected"</cfif>>#ListLast(i , ":")#</option></cfoutput>
						</cfloop>
						<cfoutput></select><input type="hidden" name="#arguments.fieldname#" value=""></cfoutput>
						
					</cfsavecontent>	
				</cfdefaultcase>
					
			</cfswitch>
		</cfif>


		<cfreturn html />

	</cffunction>


</cfcomponent>
	


