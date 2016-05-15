<cfsetting enablecfoutputonly="Yes">
<!--- @@displayname: Farcry UD login form --->

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/security/" prefix="sec" />





<cfset qExtraOptions = querynew("label,url,selected","varchar,varchar,bit") />

<cfif structKeyExists(url,'returnurl') and len(trim(url.returnurl))>
	<cfset stLocal.loginparams = 'returnurl='&urlEncodedFormat(url.returnurl) />
<cfelse>
	<cfset stLocal.loginparams = '' />
</cfif>

<cfif structKeyExists(server, "stFarcryProjects") AND structcount(server.stFarcryProjects) GT 1>
	<cfset aDomainProjects = arraynew(1) />
	<cfloop collection="#server.stFarcryProjects#" item="thisproject">
		<cfif isstruct(server.stFarcryProjects[thisproject]) and listcontains(server.stFarcryProjects[thisproject].domains,cgi.http_host)>
			<cfset arrayappend(aDomainProjects,thisproject) />
		</cfif>
	</cfloop>
	
	<cfif arraylen(aDomainProjects) gt 1>
		<cfloop from="1" to="#arraylen(aDomainProjects)#" index="i">
			<cfset queryaddrow(qExtraOptions) />
			<cfset querysetcell(qExtraOptions,"label",server.stFarcryProjects[aDomainProjects[i]].displayname) />
			<cfset querysetcell(qExtraOptions,"url",application.fapi.getLink(href=application.url.webtoplogin,urlParameters="#stLocal.loginparams#&farcryProject=#aDomainProjects[i]#")) />
			<cfset querysetcell(qExtraOptions,"selected",cookie.currentFarcryProject eq aDomainProjects[i]) />
		</cfloop>
	</cfif>
</cfif>			

<cfif listlen(application.security.getAllUD()) gt 1>
	<cfif qExtraOptions.recordcount>
		<cfset queryaddrow(qExtraOptions) />
		<cfset querysetcell(qExtraOptions,"label","divider") />
		<cfset querysetcell(qExtraOptions,"url","divider") />
	</cfif>
	
	<cfloop list="#application.security.getAllUD()#" index="thisud">
		<cfset queryaddrow(qExtraOptions) />
		<cfset querysetcell(qExtraOptions,"label",application.security.userdirectories[thisud].title) />
		<cfset querysetcell(qExtraOptions,"url",application.fapi.getLink(href=application.url.webtoplogin,urlParameters="#stLocal.loginparams#&ud=#thisud#")) />
		<cfset querysetcell(qExtraOptions,"selected",application.security.getDefaultUD() eq thisud) />
	</cfloop>
</cfif>


<skin:view typename="farLogin" template="displayHeaderLogin" />
	
<cfoutput>
<h3>CITRIX Login</h3>

<ft:form bAddFormCSS="false" class="clearfix">

	<skin:pop>
		<div class="alert alert-error">
			<cfif len(trim(message.title))><strong>#message.title#</strong></cfif>
			<cfif len(trim(message.message))>#message.message#</cfif>
		</div>
	</skin:pop>

	<cfif isdefined("arguments.stParam.message") and len(arguments.stParam.message)>
		<div class="alert alert-warning"><admin:resource key="security.message.#rereplace(arguments.stParam.message,'[^\w]','','ALL')#">#arguments.stParam.message#</admin:resource></div>
	</cfif>


	<cfif structKeyExists(server, "stFarcryProjects") AND structcount(server.stFarcryProjects) GT 1>
		<cfset aDomainProjects = arraynew(1) />
		<cfloop collection="#server.stFarcryProjects#" item="thisproject">
			<cfif isstruct(server.stFarcryProjects[thisproject]) and listcontains(server.stFarcryProjects[thisproject].domains,cgi.http_host)>
				<cfset arrayappend(aDomainProjects,thisproject) />
			</cfif>
		</cfloop>
		
		<cfif arraylen(aDomainProjects) gt 1>
			<fieldset>
				<label for="selectFarcryProject">Project Selection</label>
					<select name="selectFarcryProject" id="selectFarcryProject" class="selectInput" onchange="window.location='#application.url.webtop#/login.cfm?<cfif structKeyExists(url,'returnurl') and len(trim(url.returnurl))>returnurl=#urlEncodedFormat(url.returnurl)#&</cfif>farcryProject='+this.value;">						
						<cfloop from="1" to="#arraylen(aDomainProjects)#" index="i">
							<cfif len(aDomainProjects[i])>
								<option value="#aDomainProjects[i]#"<cfif cookie.currentFarcryProject eq aDomainProjects[i]> selected="selected"</cfif>>#server.stFarcryProjects[aDomainProjects[i]].displayname#</option>
							</cfif>
						</cfloop>
					</select>
			</fieldset>
		</cfif>
	</cfif>

	<ft:object typename="ldapLogin" lFields="username,password" legend="" focusField="username" r_stFields="stFields" />

	<fieldset>
		<label for="#stFields.username.formfieldname#">#stFields.username.ftLabel#</label>
		#stFields.username.html#
	</fieldset>
	<fieldset>
		<label for="#stFields.password.formfieldname#">#stFields.password.ftLabel#</label>
		#stFields.password.html#
	</fieldset>

	<div class="pull-right">
		<ft:button rendertype="button" class="btn btn-primary btn-large" rbkey="security.buttons.login" value="Log In" />		
	</div><!-- /.btn-group -->

</ft:form>
</cfoutput>

<skin:view typename="farLogin" template="displayFooterLogin" />

<cfsetting enablecfoutputonly="false">