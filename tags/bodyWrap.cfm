

<cfparam name="attributes.heading" default="" /><!--- @@hint: heading of the page --->

<cfif not thistag.HasEndTag>
	<cfabort showerror="bodyWrap must have an end tag...">
</cfif>
	
	
<cfif thistag.executionMode eq "START">	
	<cfoutput>
	<div class="content">
		<div class="content-heading">
			<div class="container">
				<cfif len(attributes.heading)>
					<h1 class="heading">#attributes.heading#</h1>
				</cfif>
			</div><!-- /.container -->
		</div><!-- /.content-heading -->

		<cfif structKeyExists(session.fc, "lTots") AND len(session.fc.lTots)>

			<div class="content-nav">
				<div class="container">
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


		<div class="content-inner">
			<div class="container">
	</cfoutput>
</cfif>

	

			
<cfif thistag.executionMode eq "END">
	<cfoutput>
				</div><!-- /.container -->
			</div><!-- /.content-inner -->
		</div><!-- /.content -->
	</cfoutput>
</cfif>