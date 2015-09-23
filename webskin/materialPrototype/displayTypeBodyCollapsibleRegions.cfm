<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/core/" prefix="core" />
<cfimport taglib="/farcry/plugins/material/tags/" prefix="material" />




<material:bodyWrap heading="Google Material - Buttons">

<cfoutput>
<div class="row">
	<div class="col-lg-6 col-md-8">
		<section class="content-inner">
			<h2 class="content-sub-heading">Basic Collapsible</h2>
			<p><a class="btn collapsed waves-attach waves-button" data-toggle="collapse" href="##collapsible-region"><span class="collapsed-hide">Collapse</span><span class="collapsed-show">Expand</span></a></p>
			<div class="collapsible-region collapse" id="collapsible-region">
				<p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
				<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
				<p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
			</div>
		</section>
	</div>
</div>

</cfoutput>

</material:bodyWrap>