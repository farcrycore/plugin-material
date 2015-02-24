

<cfparam name="attributes.id" default="#application.fapi.getUUID()#" /><!--- @@hint: The id of the resulting button --->
<cfparam name="attributes.value" /><!--- @@hint: The event submitted and captured by an ft:processForm tag. @@required: true --->
<cfparam name="attributes.type" default="submit" /><!--- button or submit. Default is 'submit'. --->
<cfparam name="attributes.text" default="#attributes.value#" /><!--- The text that will appear on the button. Default is the value. --->
<cfparam name="attributes.SelectedObjectID" default=""><!--- A value that will be placed in the hidden form field form.selectedObjectID on submission. --->
<cfparam name="attributes.Class" default=""><!--- Any css classes that are to be added to the button --->
<cfparam name="attributes.Style" default=""><!--- Any css styles that are to be added to the button. --->
<cfparam name="attributes.onClick" default=""><!--- javascript that will be run when the user clicks this button --->
<cfparam name="attributes.ConfirmText" default=""><!--- A confirmation message that will appear before submission --->

<cfif not thistag.HasEndTag>
	<cfabort showerror="Buttons must have an end tag...">
</cfif>
	
	
<cfif thistag.executionMode eq "END">

	<cfoutput>
	<button type="#attributes.type#" 
		class="btn #attributes.Class#"
		style="#attributes.Style#" 
		fcSubmit="#attributes.value#"
		selectedObjectID="#attributes.SelectedObjectID#"
		ConfirmText="#attributes.ConfirmText#"
		onClick="#attributes.onClick#">#attributes.text#</button>
	</cfoutput>
</cfif>