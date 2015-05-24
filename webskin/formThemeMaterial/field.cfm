<!--- @@Copyright: Daemon Pty Limited 2002-2008, http://www.daemon.com.au --->
<!--- @@License:
    This file is part of FarCry.

    FarCry is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    FarCry is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with FarCry.  If not, see <http://www.gnu.org/licenses/>.
--->
<!--- @@displayname: Render a form field --->
<!--- @@description: Renders the field with label and hint if requested.  --->
<!--- @@author: Matthew Bryant (mbryant@daemon.com.au) --->


<cfif not thistag.HasEndTag>
	<cfabort showerror="Does not have an end tag...">
</cfif>

<cfparam name="attributes.label" default="&nbsp;"><!--- The fields label --->
<cfparam name="attributes.labelAlignment" default="inline"><!---  options:inline,block; Used by FarCry Form Layouts for positioning of labels. inline or block. --->
<cfparam name="attributes.for" default=""><!--- The fieldname the label is for --->
<cfparam name="attributes.class" default="string"><!---  The class to apply to the field wrapping div. --->
<cfparam name="attributes.style" default=""><!---  The class to apply to the field wrapping div. --->
<cfparam name="attributes.hint" default=""><!--- This will place a hint below the field --->
<cfparam name="attributes.errorMessage" default=""><!--- This will place an errormessage above the field --->
<cfparam name="attributes.rbkey" default="coapi.field.#rereplace(attributes.label,'[^\w]','','ALL')#" /><!--- The resource path for this field. --->

<cfif thistag.ExecutionMode eq "start">
	<!--- Do Nothing --->
</cfif>



<cfif thistag.ExecutionMode eq "end">


	<cfset innerHTML = "" />
	<cfif len(thisTag.generatedContent)>
		<cfset innerHTML = thisTag.generatedContent />
		<cfset thisTag.generatedContent = "" />
	</cfif>
	
	
	<cfif len(attributes.label) and len(attributes.rbkey)>
		<cfset attributes.label = application.fapi.getResource(key=attributes.rbkey & "@label",default=attributes.label) />
	</cfif>
	<cfif len(attributes.hint) and len(attributes.rbkey)>
		<cfset attributes.hint = application.fapi.getResource(key=attributes.rbkey & "@hint",default=attributes.hint) />
	</cfif>
	
	
	
	<cfoutput>
		<div class="form-group margin-bottom-half margin-top-half #attributes.class#" style="#attributes.style#">
			<div class="row">
				<cfif len(attributes.label)>
					<cfif attributes.labelAlignment EQ 'inline'>
				
						<div class="col-sm-3">
							<label class="form-label" <cfif len(attributes.for)>for="#attributes.for#"</cfif>>#attributes.label#</label>
						</div>
						<div class="col-sm-9">
							#innerHTML#
					
							<cfif len(trim(attributes.hint))>
								<span class="form-help form-help-msg">#trim(attributes.hint)#</i></span>
							</cfif>

							<cfif len(attributes.errorMessage)>
								<span class="form-help form-help-msg text-red">#attributes.errorMessage#<i class="form-help-icon icon icon-error"></i></span>
							</cfif>
						</div>
					<cfelse>
						<div class="col-sm-12">
							<label class="form-label" <cfif len(attributes.for)>for="#attributes.for#"</cfif>>#attributes.label#</label>
							#innerHTML#
					
							<cfif len(trim(attributes.hint))>
								<span class="form-help form-help-msg">#trim(attributes.hint)#</i></span>
							</cfif>

							<cfif len(attributes.errorMessage)>
								<span class="form-help form-help-msg text-red">#attributes.errorMessage#<i class="form-help-icon icon icon-error"></i></span>
							</cfif>

						</div>
					</cfif>
				<cfelse>
					<div class="col-sm-12">
						#innerHTML#
				
						<cfif len(trim(attributes.hint))>
							<span class="form-help form-help-msg">#trim(attributes.hint)#</i></span>
						</cfif>

						<cfif len(attributes.errorMessage)>
							<span class="form-help form-help-msg text-red">#attributes.errorMessage#<i class="form-help-icon icon icon-error"></i></span>
						</cfif>
					</div>
				</cfif>


			</div>
		</div>
		
		
		
	</cfoutput>
</cfif>

