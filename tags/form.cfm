<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />


<cfif not thistag.HasEndTag>
	<cfabort showerror="Does not have an end tag..." />
</cfif>


<!--- We only render the form if FarcryForm OnExit has not been Fired. --->
<cfif structKeyExists(request, "FarcryFormOnExitRun") AND Request.FarcryFormOnExitRun>
	<cfsetting enablecfoutputonly="false" />			
	<cfexit method="exittag">			
</cfif>


<cfif ListValueCountNoCase(getbasetaglist(),"CF_FORM") EQ 1>

	
	<!--- Check to make sure that Request.farcryForm.Name exists. This is because other tags may have created Request.farcryForm but only this tag creates "Name" --->
	<cfif thistag.ExecutionMode EQ "Start" AND NOT isDefined("Request.farcryForm.Name")>

		<cfset Variables.CorrectForm = 1>	
		
		<skin:loadJS id="farcry-form" />


		<cfparam name="attributes.name" default="#application.fapi.getUUID()#" />
		<cfparam name="attributes.Target" default="">
		<cfparam name="attributes.Action" default="">
		<cfparam name="attributes.method" default="post">
		<cfparam name="attributes.onsubmit" default="">
		<cfparam name="attributes.Class" default="">
		<cfparam name="attributes.Style" default="">
		<cfparam name="attributes.Validation" default="1">
		<cfparam name="attributes.bAjaxSubmission" default="false">
		<cfparam name="attributes.ajaxMaskMsg" default="Form Submitting, please wait...">
		<cfparam name="attributes.ajaxMaskCls" default="x-mask-loading">
		<cfparam name="attributes.ajaxTimeout" default="30">
		<cfparam name="attributes.ajaxTarget" default=""><!--- jQuery selector specifying the target element for the form response. Defaults to the FORM element. --->
		<cfparam name="attributes.bAddFormCSS" default="true" /><!--- Add relevent form layout css --->
		<cfparam name="attributes.bFieldHighlight" default="true"><!--- Highlight fields when focused --->
		<cfparam name="attributes.bFocusFirstField" default="false" /><!--- Focus on first form element. --->
		<cfparam name="attributes.defaultAction" default="" /><!--- The default action to be used if user presses enter key on browser that doesn't fire onClick event of first button. --->
		<cfparam name="attributes.autoSave" default="false" /><!--- Enter boolean to toggle default autosave values on properties --->
		<cfparam name="attributes.autoSaveToSessionOnly" default="false" /><!--- If there are any autosave fields, should they save to the session only? --->


		<!--- If we have not received an action url, get the default cgi.script_name?cgi.query_string --->
		<cfif not len(attributes.action)>
			<cfif request.mode.ajax>
				<cfset attributes.Action = "#cgi.HTTP_REFERER#" />
			<cfelse>
				<cfset attributes.Action = "#application.fapi.fixURL()#" />
			</cfif>
			
		</cfif>



		<!--- Keep the form information available in the request scope --->
		<cfset Request.farcryForm = structNew()>
		<cfset Request.farcryForm.Name = attributes.Name>
		<cfset Request.farcryForm.Target = attributes.Target>
		<cfset Request.farcryForm.Action = attributes.Action>
		<cfset Request.farcryForm.Method = attributes.Method>
		<cfset Request.farcryForm.onSubmit = attributes.onSubmit>
		<cfset Request.farcryForm.Validation = attributes.Validation>
		<cfset Request.farcryForm.stObjects = structNew()>
		<cfset Request.farcryForm.bAjaxSubmission = attributes.bAjaxSubmission>
		<cfset Request.farcryForm.lFarcryObjectsRendered = "">	
		<cfset Request.farcryForm.defaultAction = attributes.defaultAction>	
		<cfset Request.farcryForm.autoSave = "">		

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
			<input type="hidden" id="selectedObjectID" name="selectedObjectID" class="fc-selected-object-id" value="" />


		    <skin:onReady>
		   	$(document).on("click","###Request.farcryForm.Name# button[fcSubmit],###Request.farcryForm.Name# a[fcSubmit] ,###Request.farcryForm.Name# div[fcSubmit]", function(e) {
		    	
		    	if ($(this).attr("confirmText")) {
			    	if( !confirm( $(this).attr("confirmText") ) ) {
						return false;
					}
				};

				$('input.fc-button-clicked').attr('value', $(this).attr("fcSubmit") );
				$('.fc-selected-object-id').attr('value', $(this).attr("selectedObjectID") );
				
				if( $(this).attr("type") === 'submit' ) {
		    		$('###Request.farcryForm.Name#').submit();	
				}
				
		    	return false;
		    });
		   	$(document).on("change","###Request.farcryForm.Name# select[fcSubmit]", function(e) {
		    	
		    	if ($(this).attr("confirmText")) {
			    	if( !confirm( $(this).attr("confirmText") ) ) {
						return false;
					}
				};

				$('input.fc-button-clicked').attr('value', $(this).attr("fcSubmit") );
				$('.fc-selected-object-id').attr('value', $(this).val() );
				

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
