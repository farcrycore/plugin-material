
<!--- IMPORT LIBRARIES --->
<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin">
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft">


<cfparam name="attributes.id" default="#application.fapi.getUUID()#" />
<cfparam name="attributes.title" default="" />
<cfparam name="attributes.bOpen" default="false" />
<cfparam name="attributes.stItems" default="#structNew()#" />
<cfparam name="attributes.aNavItems" default="#arrayNew(1)#" />


<cfparam name="request.aDashboardNav" default="#arrayNew(1)#" />


<cfif thistag.executionMode eq "Start">

	
</cfif>


<cfif thistag.executionMode eq "End">
	
	<cfset stNav = attributes />
	<cfset arrayAppend(request.aDashboardNav, stNav) />


	<cfif arrayLen(attributes.aNavItems)>

		<ul class="nav">
		<cfif len(attributes.title)>


			<cfoutput>
			
				<li>
					<a href="javascript:void();" data-target="###attributes.id#" data-toggle="collapse" class="waves-attach">#attributes.title#</a>
					<span class="menu-collapse-toggle waves-attach #iif(attributes.bOpen, de(''),de('collapsed'))#" data-target="###attributes.id#" data-toggle="collapse">
						<i class="icon menu-collapse-toggle-close">close</i>
						<i class="icon menu-collapse-toggle-default">add</i>
					</span>
					<ul class="menu-collapse collapse #iif(attributes.bOpen, de('in'),de(''))#" id="#attributes.id#">
			</cfoutput>
		</cfif>	

			<cfloop from="1" to="#arrayLen(attributes.aNavItems)#" index="i">
					
				<cfoutput>
				
						<li>
							<cfset href = application.fapi.getLink(	type="#attributes.aNavItems[i].type#", 
																	objectid="#attributes.aNavItems[i].objectid#", 
																	view="#attributes.aNavItems[i].view#",
																	bodyView="#attributes.aNavItems[i].bodyView#" ) />

							<a href="#href#" class="waves-attach">
								<cfif len(attributes.aNavItems[i].icon)>
									<span class="icon">#attributes.aNavItems[i].icon#</span>
								</cfif>
								#attributes.aNavItems[i].title#
								<cfif application.fapi.hasRole("sysAdmin")><small>(#attributes.aNavItems[i].allowedRoles#)</small></cfif>
							</a>
						</li>
				</cfoutput>

			</cfloop>

		<cfif len(attributes.title)>
			<cfoutput>
				</ul>
			</li>
			</cfoutput>
		</cfif>

		<cfoutput>
			</ul>
			<hr>
		</cfoutput>

	</cfif>
<!--- 
		<li>
		<a href="javascript:void();" data-target="##Skunkworks-menu" data-toggle="collapse">Skunkworks</a>
		<span class="menu-collapse-toggle collapsed" data-target="##Skunkworks-menu" data-toggle="collapse">
			<i class="icon icon-close menu-collapse-toggle-close"></i>
			<i class="icon icon-add menu-collapse-toggle-default"></i>
		</span>
		<ul class="menu-collapse collapse" id="Skunkworks-menu" style="height: 0px;">
			<li>
				<a href="/reportDriverFatigue/displayPageStandard/displayTypeBody">Driver Fatigue</a>
			</li>
			<li>
				<a href="/blDriver/displayPageStandard/displayTypeBodyLogCleaner">Driver Log Cleaner</a>
			</li>
			<li>
				<a href="/reportBFM/displayPageStandard/displayTypeBodyMonthlyCompliance">Monthly Compliance</a>
			</li>
			<li>
				<a href="/blDriver/displayPageStandard/displayGeneratePDFMissingStartEndTimes">DELETE START END TIMES (CAREFULL)</a>
			</li>
		</ul>
	</li>
</ul> --->


</cfif>


<!--- 
SETUP THE NEXT ROW
 --->
