<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/core/" prefix="core" />
<cfimport taglib="/farcry/plugins/material/tags/" prefix="material" />




<material:bodyWrap heading="Google Material - Pallet">

<cfoutput>		

<div class="row">
	<div class="col-lg-8 col-md-10">
		<section class="content-inner">
			<h2 class="content-sub-heading">Page Palettes</h2>
			<div class="tile-wrap">
				<skin:buildLink class="tile waves-attach" type="materialPrototype" view="displayPageMaterial" bodyView="displayTypeBodyPallet">
					<div class="tile-inner">
						<span>Brand</span>
					</div>
				</skin:buildLink>
				<skin:buildLink class="tile waves-attach" type="materialPrototype" view="displayPageMaterialAccent" bodyView="displayTypeBodyPallet">
					<div class="tile-inner">
						<span>Accent</span>
					</div>
				</skin:buildLink>
				<skin:buildLink class="tile waves-attach" type="materialPrototype" view="displayPageMaterialAmber" bodyView="displayTypeBodyPallet">
					<div class="tile-inner">
						<span>Amber</span>
					</div>
				</skin:buildLink>
				<skin:buildLink class="tile waves-attach" type="materialPrototype" view="displayPageMaterialGreen" bodyView="displayTypeBodyPallet">
					<div class="tile-inner">
						<span>Green</span>
					</div>
				</skin:buildLink>
				<skin:buildLink class="tile waves-attach" type="materialPrototype" view="displayPageMaterialRed" bodyView="displayTypeBodyPallet">
					<div class="tile-inner">
						<span>Red</span>
					</div>
				</skin:buildLink>
			</div>
		</section>
	</div>
</div>
</cfoutput>

</material:bodyWrap>