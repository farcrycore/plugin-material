

<cfparam name="attributes.heading" default="" /><!--- @@hint: heading of the page --->
<cfparam name="attributes.width" default="" /><!--- @@hint: the width of the container --->

<cfif not thistag.HasEndTag>
	<cfabort showerror="bodyWrap must have an end tag...">
</cfif>
	
	
<cfif thistag.executionMode eq "START">	
	<cfoutput>
	<div class="content">
		<cfif len(attributes.heading)>
			<div class="content-heading">
				<div class="container #iif(attributes.width EQ 'full', de('container-full'), de(''))#">
					
					<h1 class="heading">#attributes.heading#</h1>
					
				</div><!-- /.container -->
			</div><!-- /.content-heading -->
		</cfif>
		<cfif structKeyExists(session.fc, "lTots") AND len(session.fc.lTots)>

			<div class="content-nav">
				<div class="container #iif(attributes.width EQ 'full', de('container-full'), de(''))#">
					<ul class="breadcrumb">

						<li><a href="#application.fapi.fixURL(addValues='clearTot=1')#"><em>Reset</em></a></li>
						<cfloop list="#session.fc.lTots#" index="i">
							<cfset stTot = session.fc.stTots["#i#"] />
							<cfset totURL = application.fapi.getLink(	
								type=stTot.type,
								objectid=stTot.objectid,
								view=stTot.view,
								bodyView=stTot.bodyView	) />
							<li><a href="#totURL#">#urlDecode(stTot.title )#</a></li>
							<!--- 
													<cfset totURL = application.fapi.getLink(	
														type=replaceNoCase(listGetAt(i,1, ':'),'_','','all'),
														objectid=replaceNoCase(listGetAt(i,2, ':'),'_','','all'),
														view=replaceNoCase(listGetAt(i,3, ':'),'_','','all'),
														bodyView=replaceNoCase(listGetAt(i,4, ':'),'_','','all') 
														) />
													<li><a href="#totURL#">#urlDecode(replaceNoCase(listGetAt(i,5, ':'),'_','','all') )#</a></li> --->


						</cfloop>
					</ul><!-- /.breadcrumb -->
				</div><!-- /.container -->
			</div>
		</cfif>


		<div class="container #iif(attributes.width EQ 'full', de('container-full'), de(''))#">
	</cfoutput>
</cfif>

	

			
<cfif thistag.executionMode eq "END">
	<cfoutput>
		</div><!-- /.container -->
	</div><!-- /.content -->
	</cfoutput>
</cfif>