
<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/plugins/material/tags" prefix="material" />	
<cfimport taglib="../../tags" prefix="tags" />


<material:bodyWrap heading="#stobj.firstname# #stobj.lastname# Dashboard">

	<cfset aFavourites = application.fapi.getPersonalConfig("favourites",arraynew(1)) />

	<ft:form>
		<cfoutput>
		<div class="card-wrap">
			<div class="row">
				<cfloop from="1" to="#arrayLen(request.aDashboardNav)#" index="i">
					
					<cfif len(request.aDashboardNav[i].title) AND arrayLen(request.aDashboardNav[i].aNavItems)>
							

						<div class="col-sm-6 col-md-4">
							<div class="card">
								<aside class="card-side card-side-img">
									<img alt="alt text" src="/material/images/samples/portrait.jpg">
								</aside>
								<div class="card-main">
									<div class="card-inner">
										<p class="card-heading">#request.aDashboardNav[i].title#</p>
										<cfloop from="1" to="#arrayLen(request.aDashboardNav[i].aNavItems)#" index="j">
											
											<cfset href = application.fapi.getLink(	type="#request.aDashboardNav[i].aNavItems[j].type#", 
																					objectid="#request.aDashboardNav[i].aNavItems[j].objectid#", 
																					view="#request.aDashboardNav[i].aNavItems[j].view#",
																					bodyView="#request.aDashboardNav[i].aNavItems[j].bodyView#" ) />

											<cfset active = false />
											<cfloop array="#aFavourites#" index="thisfavourite">
												<cfif href eq thisfavourite.url>
													<cfset active = true />
												</cfif>
											</cfloop>


											<div>
												<a 	href="##" 
													class="favourited #iif(active,de('active'), de(''))#" title="Favourite" 
													data-this="#href#" 
													data-add="/dmProfile/add-favourite" 
													data-remove="/dmProfile/remove-favourite" 
													data-type="#request.aDashboardNav[i].aNavItems[j].type#" 
													data-objectid="#request.aDashboardNav[i].aNavItems[j].objectid#" 
													data-view="#request.aDashboardNav[i].aNavItems[j].view#" 
													data-bodyview="#request.aDashboardNav[i].aNavItems[j].bodyView#" 
													data-title="#request.aDashboardNav[i].aNavItems[j].title#"><i class="fa  #iif(active,de('fa-star text-alt'), de('fa-star-o'))#"></i></a>
												<a href="#href#">#request.aDashboardNav[i].aNavItems[j].title#
													<cfif application.fapi.hasRole("sysAdmin")><small>(#request.aDashboardNav[i].aNavItems[j].allowedRoles#)</small></cfif>
												</a>
											</div>
										</cfloop>
									</div>
								</div>
							</div>
						</div>

					</cfif>
				</cfloop>
			</div>
		</div>


		</cfoutput>


		<skin:onReady>
		<cfoutput>


			/* Favouriting */
			// toggle favourite on this page
			$j(document).delegate(".favourited","click",function(){
				var self = $j(this);
				
				if (self.is(".active"))
					<!--- $fc.removeFavourite(self.data("remove"),self.data("this")); --->
					$j.getJSON(self.data("remove")+"?favURL="+encodeURIComponent(self.data("this")),function(result){
					if (result.success){
						
						self.removeClass("active");
						self.find('i').removeClass("fa-star").removeClass("text-alt").addClass("fa-star-o");

						$fc.reloadMenu( );
					}
				});
				else
					<!--- $fc.addFavourite(self.data("add"),self.data("this"),$j(this).attr('title')); --->

					$j.getJSON(self.data("add")+"?favURL="+encodeURIComponent(self.data("this"))+"&favLabel="+encodeURIComponent(self.data("title"))+"&favType="+encodeURIComponent(self.data("type"))+"&favObjectID="+encodeURIComponent(self.data("objectid"))+"&favView="+encodeURIComponent(self.data("view"))+"&favBodyView="+encodeURIComponent(self.data("bodyview"))     ,function(result){
						if (result.success){						
							self.addClass("active");
							self.find('i').removeClass("fa-star-o").addClass("fa-star text-alt");
							$fc.reloadMenu( );
						}
					});


				
				return false;
			});
			
		
			$fc = window.$fc || {}
		

			$fc.reloadMenu = function() {
				mReset();

				var $webskinWrap = $('##menu').parent('.webskin-wrap');
				var $webskinTypename = $webskinWrap.attr('ft:typename');
				var $webskinObjectID = $webskinWrap.attr('ft:objectid');
				var $webskinView = $webskinWrap.attr('ft:webskin');
				
				$j( $webskinWrap ).load('/index.cfm?ajaxmode=1&type=' + $webskinTypename + '&objectid=' + $webskinObjectID + '&view=' + $webskinView, function(){});
			}
		</cfoutput>
		</skin:onReady>
	</ft:form>

</material:bodyWrap>
