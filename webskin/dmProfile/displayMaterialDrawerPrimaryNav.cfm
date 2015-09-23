<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/plugins/material/tags" prefix="mat" />


<!--- Environment Variables --->
<cfset aFavourites = application.fapi.getPersonalConfig("favourites",arraynew(1)) />


<cfoutput>
<nav aria-hidden="true" class="menu" id="menu" tabindex="-1">
	<div class="menu-scroll">
		<div class="menu-content">
			<mat:nav>
				<mat:navItem type="materialPrototype" bodyView="displayTypeBody" title="Dashboard" />

				<cfloop array="#aFavourites#" index="thisfavourite">
					<cfif structKeyExists(thisfavourite, "type")>
						<mat:navItem 	type="#thisfavourite.type#" 
										objectid="#thisfavourite.objectid#" 
										view="#thisfavourite.view#" 
										bodyView="#thisfavourite.bodyView#" 
										title="#thisfavourite.label#" />
					</cfif>						
				</cfloop>

			</mat:nav>

			<mat:nav title="Components">
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyCards" title="Cards" />
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyCollapsibleRegions" title="Collapsible Regions" />
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyDropdowns" title="Dropdowns" />
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyModalsToasts" title="Modals Toasts" />
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyNavs" title="Navs" />
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyProgressBars" title="Progress Bars" />
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyTabs" title="Tabs" />
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyTiles" title="Tiles" />
			</mat:nav>

			<mat:nav title="Elements" bOpen="false">
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyButtons" title="Buttons" />
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyFormsBasic" title="Forms Basic" />
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyFormsMaterialised" title="Forms Materialised" />
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyFormsDefault" title="Forms Default" />
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyIcons" title="Icons" />
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyTables" title="Tables" />
			</mat:nav>

			<mat:nav title="Sample Pages" bOpen="false">
				<mat:navItem type="materialPrototype" bodyView="displayTypeBodyLoginPage" title="Login Page" />
				<mat:navItem type="materialPrototype" view="displayPageMaterial" bodyView="displayTypeBodyPallet" title="Pallet Brand" />
				<mat:navItem type="materialPrototype" view="displayPageMaterialAccent" bodyView="displayTypeBodyPallet" title="Pallet Accent" />
				<mat:navItem type="materialPrototype" view="displayPageMaterialAmber" bodyView="displayTypeBodyPallet" title="Pallet Amber" />
				<mat:navItem type="materialPrototype" view="displayPageMaterialGreen" bodyView="displayTypeBodyPallet" title="Pallet Green" />
				<mat:navItem type="materialPrototype" view="displayPageMaterialRed" bodyView="displayTypeBodyPallet" title="Pallet Red" />
			</mat:nav>
		</div>
	</div>
</nav>
</cfoutput>