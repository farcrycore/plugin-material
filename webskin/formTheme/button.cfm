

<cfparam name="attributes.id" default="#application.fapi.getUUID()#" /><!--- @@hint: The id of the resulting button --->
<cfparam name="attributes.value" /><!--- @@hint: The event submitted and captured by an ft:processForm tag. @@required: true --->
<cfparam name="attributes.type" default="submit" /><!--- button or submit. Default is 'submit'. --->
<cfparam name="attributes.text" default="#attributes.value#" /><!--- The text that will appear on the button. Default is the value. --->
<cfparam name="attributes.SelectedObjectID" default=""><!--- A value that will be placed in the hidden form field form.selectedObjectID on submission. --->
<cfparam name="attributes.Class" default=""><!--- Any css classes that are to be added to the button --->
<cfparam name="attributes.Style" default=""><!--- Any css styles that are to be added to the button. --->
<cfparam name="attributes.onClick" default=""><!--- javascript that will be run when the user clicks this button --->
<cfparam name="attributes.ConfirmText" default=""><!--- A confirmation message that will appear before submission --->
<cfparam name="attributes.url" default=""><!--- A URL that you would like the button to redirect the page too. --->
<cfparam name="attributes.icon" default="" /><!--- The icon clss to use --->
<cfparam name="attributes.textOnClick" default="" /><!--- what should the text change to when the button is clicked.  --->
<cfparam name="attributes.textOnSubmit" default="" /><!--- what should the text change to when the button is submitted.  --->
<cfparam name="attributes.disableOnSubmit" default="true" /><!--- should the button be disabled when the form is submitted --->
<cfparam name="attributes.disabled" default="false"><!--- Should the button be disabled --->

<cfif not thistag.HasEndTag>
	<cfabort showerror="Buttons must have an end tag...">
</cfif>
	
	
<cfif thistag.executionMode eq "END">


	<cfoutput>
	<a id="#attributes.id#" name="FarcryForm#attributes.Type#Button=#attributes.value#" 
		type="#attributes.type#"
		value="#attributes.value#" 
		class="btn #attributes.Class#"
		style="#attributes.Style#" 
		<cfif attributes.disabled>disabled</cfif>
		<cfif attributes.type EQ "submit">data-submit-action="#attributes.value#"</cfif>
		<cfif len(attributes.onClick)> data-on-click="#attributes.onClick#"</cfif>
		<cfif len(attributes.SelectedObjectID)> data-selected-objectid="#attributes.SelectedObjectID#"</cfif>
		<cfif len(attributes.ConfirmText)> data-confirm-text="#attributes.confirmText#"</cfif>
		<cfif len(attributes.url)> data-url="#attributes.url#"</cfif> 
		<cfif len(attributes.target)> data-target="#attributes.target#"</cfif>
		<cfif len(attributes.textOnClick)> data-text-on-click="#attributes.textOnClick#"</cfif>
		<cfif len(attributes.textOnSubmit)> data-text-on-submit="#attributes.textOnSubmit#"</cfif>
		<cfif len(attributes.disableOnSubmit)> data-disable-on-submit="#attributes.disableOnSubmit#"</cfif>

		<cfloop list="#structKeyList(attributes)#" index="i">
			<cfif listFirst(i,'-') EQ "data">
				#i#="#attributes[i]#"
			</cfif>
		</cfloop>
	>
		 
		<cfif listLen(attributes.icon)>
			<cfif len(trim(listFirst(attributes.icon)))>
				<span class="#trim(listFirst(attributes.icon))#"></span>
			</cfif>
		</cfif>
		 
		#attributes.text#
	
		
		<cfif listLen(attributes.icon)>
			<cfif listLen(attributes.icon) GT 1 AND len(trim(listLast(attributes.icon)))>
				<span class="#trim(listLast(attributes.icon))#"></span>
			</cfif>
		</cfif>
	</a>
	</cfoutput>
</cfif>