<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />


<cfif ListValueCountNoCase(getbasetaglist(),"CF_FORM") EQ 1>

	
	<!--- Check to make sure that Request.farcryForm.Name exists. This is because other tags may have created Request.farcryForm but only this tag creates "Name" --->
	<cfif thistag.ExecutionMode EQ "Start" AND NOT isDefined("Request.farcryForm.Name")>

		<cfset Variables.CorrectForm = 1>

		<cfparam name="attributes.name" default="#application.fapi.getUUID()#" />
		<cfparam name="attributes.action" default="" />
		<cfparam name="attributes.class" default="" />
		<cfparam name="attributes.style" default="" />


		<!--- If we have not received an action url, get the default cgi.script_name?cgi.query_string --->
		<cfif not len(attributes.action)>
			<cfif request.mode.ajax>
				<cfset attributes.Action = "#cgi.HTTP_REFERER#" />
			<cfelse>
				<cfset attributes.Action = "#application.fapi.fixURL()#" />
			</cfif>
			
		</cfif>



		<cfset Request.farcryForm = "#StructNew()#" />
		<cfset Request.farcryForm.name = "#attributes.name#" />
		<cfset Request.farcryForm.action = "#attributes.action#" />

		<cfoutput>
			<form 	action="#Request.farcryForm.action#" 
					method="post" 
					id="#Request.farcryForm.Name#" 
					name="#Request.farcryForm.Name#" 
					role="form"
					enctype="multipart/form-data" 
					class="#attributes.class#" 
					style="#attributes.style#"
					novalidate="novalidate">
		</cfoutput>


	</cfif>

	<cfif thistag.ExecutionMode EQ "End" and isDefined("Variables.CorrectForm")>
		<cfoutput>
			<input type="hidden" id="FarcryFormPrefixes" name="FarcryFormPrefixes" value="" />
			
			<!--- This is an empty field so that if the form is submitted, without pressing a farcryFormButton, the FORM.FarcryFormSubmitButton variable will still exist. --->
			<input type="hidden" id="FarcryFormSubmitButton" name="FarcryFormSubmitButton" value="" />

			<!--- This contains the name of the farcry button that was clicked --->
			<input type="hidden" id="FarcryFormSubmitButtonClicked#Request.farcryForm.name#" name="FarcryFormSubmitButtonClicked#Request.farcryForm.name#" class="fc-button-clicked" value="" />

			<!--- Contains the name of the farcry form submitted --->
			<input type="hidden" id="FarcryFormSubmitted" name="FarcryFormSubmitted"  value="#Request.farcryForm.name#" />

			<!--- Hidden Field to take a UUID from the attributes.SelectedObjectID on ft:button --->
			<input type="hidden" id="selectedObjectID" name="selectedObjectID" value="" />


		    <skin:onReady>
		   	$(document).on("click","###Request.farcryForm.Name# button[fcSubmit],###Request.farcryForm.Name# a[fcSubmit] ,###Request.farcryForm.Name# div[fcSubmit]", function(e) {
		    	
		    	if ($(this).attr("confirmText")) {
			    	if( !confirm( $(this).attr("confirmText") ) ) {
						return false;
					}
				};

				$('input.fc-button-clicked').attr('value', $(this).attr("fcSubmit") );
				$('##selectedObjectID').attr('value', $(this).attr("selectedObjectID") );
				

		    	$('###Request.farcryForm.Name#').submit();	

		    	return false;
		    });
		   	$(document).on("change","###Request.farcryForm.Name# select[fcSubmit]", function(e) {
		    	
		    	if ($(this).attr("confirmText")) {
			    	if( !confirm( $(this).attr("confirmText") ) ) {
						return false;
					}
				};

				$('input.fc-button-clicked').attr('value', $(this).attr("fcSubmit") );
				$('##selectedObjectID').attr('value', $(this).val() );
				

		    	$('###Request.farcryForm.Name#').submit();	

		    	return false;
		    });
		    </skin:onReady>

		</form>
		</cfoutput>

		<!--- Clear the farcry form from the request scope now that it is complete. --->
		<cfset dummy = structdelete(request,"farcryForm")>

	</cfif>

</cfif>
