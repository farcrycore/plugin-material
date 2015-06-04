<!--- @@description:
	<p>Renders a text area</p> --->

<!--- @@examples:
	<p>Basic</p>
	<code>
	<cfproperty
 			ftSeq="15"
 			ftFieldset="Contact"
 			name="address"
	 		type="longchar"
	 		hint="address of occupant"
	 		required="false"
	 		default=""
	 		ftLabel="Address"
 			ftType="longchar"/>
	</code> 
	<p>Textarea with limited characters with character counter</p>
	<cfproperty
 			ftSeq="15"
 			ftFieldset="Contact"
 			name="address"
	 		type="longchar"
	 		hint="address of occupant"
	 		required="false"
	 		default=""
	 		ftLabel="Home address"
 			ftType="longchar"
			ftLimit="150"/>
			
	<p>Textarea with a minimum of 100 characters and a maximum of 250 characters, TRUNCATE excess data</p>
	<cfproperty
 			ftSeq="15"
 			ftFieldset="Contact"
 			name="address"
	 		type="longchar"
	 		hint="address of occupant"
	 		required="false"
	 		default=""
	 		ftLabel="Home address"
 			ftType="longchar"
			ftLimitMin="100"
			ftLimit="250" />
			
	<p>Textarea with a minimum of 100 characters and a maximum of 250 characters, WARN on excess data, with custom warning message.</p>
	<cfproperty
 			ftSeq="15"
 			ftFieldset="Contact"
 			name="address"
	 		type="longchar"
	 		hint="address of occupant"
	 		required="false"
	 		default=""
	 		ftLabel="Home address"
 			ftType="longchar"
			ftLimitMin="100"
			ftLimit="250"
			ftLimitOverage="warn"
			ftLimitWarning="You have exceeded the maximum number of characters" />
--->

<cfcomponent extends="farcry.core.packages.formtools.longchar" name="longchar" displayname="longchar" hint="Used to liase with longchar type fields"> 

	<cfproperty name="ftStyle" required="false" default="" hint="The style for the text area" />
	<cfproperty name="ftLimit" required="false" default="0" hint="Limits the amount of data the user can input. Provides a counter above text area" />

	<cfproperty name="ftLimitMin" required="false" default="" hint="Use with ftLimit to define a range of acceptable characters" />
	<cfproperty name="ftLimitOverage" required="false" default="truncate" hint="Character limiter method: truncate (default) - truncates user input, warn - notifies user of excess data" />
	<cfproperty name="ftLimitWarning" required="false" default="You have exceeded the maximum character limit for this field" hint="Warning message" />
	<cfproperty name="ftIncludeWrap" required="false" default="true" hint="Include the div wrappers required for a standard form. Turn off if you wish to handle your own layout." />
	<cfproperty name="ftAutoResize" required="false" default="true" hint="Should the textarea use jquery autoresize to resize to comfortable " />
	<cfproperty name="ftRows" required="false" default="3" hint="Rows to determine textarea height" />
		
	<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
	
	<cffunction name="init" access="public" returntype="farcry.core.packages.formtools.longchar" output="false" hint="Returns a copy of this initialised object">
		<cfreturn this>
	</cffunction>
	
	<cffunction name="edit" access="public" output="true" returntype="string" hint="his will return a string of formatted HTML text to enable the user to edit the data">
		<cfargument name="typename" required="true" type="string" hint="The name of the type that this field is part of.">
		<cfargument name="stObject" required="true" type="struct" hint="The object of the record that this field is part of.">
		<cfargument name="stMetadata" required="true" type="struct" hint="This is the metadata that is either setup as part of the type.cfc or overridden when calling ft:object by using the stMetadata argument.">
		<cfargument name="fieldname" required="true" type="string" hint="This is the name that will be used for the form field. It includes the prefix that will be used by ft:processform.">
		<cfargument name="inputClass" required="false" type="string" default="" hint="This is the class value that will be applied to the input field.">

		<cfset var html = "" />
		<cfset var bfieldvisible = 0 />
		<cfset var fieldvisibletoggletext = "show..." />
		<cfset var fieldstyle = "" />
		<cfset var onkeyup = "" />
		<cfset var onkeydown = "" /> 
		<cfset var bIsGoodBrowser = "" />
		
		<cfparam name="arguments.stMetadata.ftStyle" default="">
		<cfparam name="arguments.stMetadata.ftLimit" default="0">
		<cfparam name="arguments.stMetadata.ftLimitOverage" default="truncate">
		<cfparam name="arguments.stMetadata.ftLimitWarning" default="You have exceeded the maximum number of characters">
		<cfparam name="arguments.stMetadata.ftLimitMin" default="">
	
	
		<cfif CGI.HTTP_USER_AGENT contains "MSIE" or CGI.HTTP_USER_AGENT contains "gecko">
			<cfset bIsGoodBrowser = "1">
		<cfelse>
			<cfset bIsGoodBrowser = "0">
		</cfif>
		
		<cfif isNumeric(arguments.stMetadata.ftLimit)>
			<cfset arguments.stMetadata.ftRangeLength = "0,#arguments.stMetadata.ftLimit#" />
			<skin:loadJS id="fc-jquery" />
			<skin:htmlHead id="long-char"><cfoutput><script type="text/javascript"><!--
				function updateLoncharCounter(FieldName, limit, overage, key) {
					var field = $j("##"+FieldName);
					var counter = $j("##"+FieldName).val().length;
					var counterel = $j("##dm_ct_countDown_"+FieldName);
					var overageel = $j("##dm_ct_overage_"+FieldName);
					var result = true;
					
					if (counter > limit) {
						if (overage == "truncate"){
							field.val(field.val().substr(0,limit));
							counter = limit;
							alert("The text was too long and has been truncated to " + limit.toString() + " characters");
						}
					}
					
					if (counter <= limit) {
						counterel.html(counter.toString());
						
						if (overage=="warn"){
							counterel.css("color","##000000");
							overageel.hide();
						}
					} 					
					else {
						if (overage=="truncate"){
							if (!(key==8 || key==46 || (key>=33 && key<=40))) result = false;
							counterel.html(limit.toString());
						}
						else if (overage=="warn"){
							counterel.css("color","##FF0000").html(counter.toString());
							overageel.show();
						}
					}
				}
				// end hiding contents from old browsers  -->
			</script></cfoutput></skin:htmlHead>
		</cfif>
		
		<!--- if range available set validation --->
		<cfif len(arguments.stMetadata.ftLimitMin) AND len(arguments.stMetadata.ftLimit)>
			<cfset arguments.stMetadata.ftClass = listAppend(arguments.stMetadata.ftClass,"rangeLength"," ") />
			<skin:onReady><cfoutput>$.validator.addClassRules("rangeLength", {rangelength:[#arguments.stMetadata.ftLimitMin#,#arguments.stMetadata.ftLimit#]});</cfoutput></skin:onReady>
		</cfif>
		
		<cfsavecontent variable="html">
			<!--- Place custom code here! --->
	
			<cfif isBoolean(arguments.stMetadata.ftAutoresize) AND arguments.stMetadata.ftAutoresize>
				<cfset arguments.stMetadata.ftClass = listAppend(arguments.stMetadata.ftClass, "textarea-autosize", " ")>
				<cfset arguments.stMetadata.ftRows = 1>
			</cfif>		
				
			<cfoutput>
				<textarea name="#arguments.fieldname#" id="#arguments.fieldname#" class="textareaInput #arguments.inputClass# #arguments.stMetadata.ftclass#" rows="#arguments.stMetadata.ftRows#" style="#arguments.stMetadata.ftstyle#" placeholder="#arguments.stMetadata.ftPlaceholder#">#arguments.stMetadata.value#</textarea>
				<cfif isBoolean(arguments.stMetadata.ftLimit) and arguments.stMetadata.ftLimit>
					<div style="clear:both;" id="dm_ct_Text_#arguments.fieldname#"><span id="dm_ct_countDown_#arguments.fieldname#">#len(arguments.stMetadata.value)#</span>/#arguments.stMetadata.ftLimit# <span id="dm_ct_overage_#arguments.fieldname#" style="color:red;display:none;">#arguments.stMetadata.ftLimitWarning#</span></div> 
					<script type="text/javascript">$j("###arguments.fieldname#").keydown(function(e){ updateLoncharCounter("#arguments.fieldname#", #arguments.stMetadata.ftLimit#, "#arguments.stMetadata.ftLimitOverage#", e.keyCode) });</script>
				</cfif>
			</cfoutput>
			
		</cfsavecontent>
		
		<cfreturn html>
	</cffunction>


</cfcomponent> 