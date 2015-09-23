<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/core/" prefix="core" />
<cfimport taglib="/farcry/plugins/material/tags/" prefix="material" />




<material:bodyWrap heading="Google Material - Buttons">

<cfoutput>
<div class="row">
				<div class="col-lg-4 col-md-5">
					<section class="content-inner">
						<h2 class="content-sub-heading">Flat Buttons</h2>
						<div class="card">
							<div class="card-main">
								<div class="card-inner">
									<div class="row">
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-flat">Default Button</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-flat waves-attach waves-button">With Ripple</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-flat btn-brand">Brand Colour</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-flat btn-brand waves-attach waves-button">With Ripple</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-no"><a class="btn btn-flat btn-brand-accent">Accent Colour</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-no"><a class="btn btn-flat btn-brand-accent waves-attach waves-button">With Ripple</a></p>
										</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-flat btn-amber">Amber Button</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-flat btn-amber waves-attach waves-button">With Ripple</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-flat btn-green">Green Button</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-flat btn-green waves-attach waves-button">Green Ripple</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-flat btn-red">Red Button</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-flat btn-red waves-attach waves-button">With Ripple</a></p>
										</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-xx-6">
											<p class="margin-no"><a class="btn btn-flat disabled">Disabled Button</a></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
				<div class="col-lg-4 col-md-5">
					<section class="content-inner">
						<h2 class="content-sub-heading">Raised Buttons</h2>
						<div class="card">
							<div class="card-main">
								<div class="card-inner">
									<div class="row">
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn">Default Button</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn waves-attach waves-button">With Ripple</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-brand">Brand Colour</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-brand waves-attach waves-button waves-light">With Ripple</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-no"><a class="btn btn-brand-accent">Accent Colour</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-no"><a class="btn btn-brand-accent waves-attach waves-button waves-light">With Ripple</a></p>
										</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-amber">Amber Button</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-amber waves-attach waves-button waves-light">With Ripple</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-green">Green Button</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-green waves-attach waves-button waves-light">With Ripple</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-red">Red Button</a></p>
										</div>
										<div class="col-xx-6">
											<p class="margin-top-no"><a class="btn btn-red waves-attach waves-button waves-light">With Ripple</a></p>
										</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-xx-6">
											<p class="margin-no"><a class="btn disabled">Disabled Button</a></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
				<div class="col-lg-8 col-md-10">
					<section class="content-inner">
						<h2 class="content-sub-heading">Floating Action Buttons</h2>
						<p>Floating action buttons are used for a special type of promoted action. They are distinguished by a circled icon floating above the UI and have special motion behaviours related to morphing, launching, and the transferring anchor point.</p>
						<div class="card">
							<div class="card-main">
								<div class="card-header">
									<div class="card-inner">
										<p class="margin-no"><strong>Colours</strong></p>
									</div>
								</div>
								<div class="card-inner">
									<div class="row">
										<div class="col-sm-2 col-xs-3 col-xx-4">
											<p class="margin-top-no"><a class="fbtn"><span class="icon">add</span></a></p>
										</div>
										<div class="col-sm-2 col-xs-3 col-xx-4">
											<p class="margin-top-no"><a class="fbtn fbtn-brand"><span class="icon">add</span></a></p>
										</div>
										<div class="col-sm-2 col-xs-3 col-xx-4">
											<p class="margin-top-no"><a class="fbtn fbtn-brand-accent"><span class="icon">add</span></a></p>
										</div>
										<div class="col-sm-2 col-xs-3 col-xx-4">
											<p class="margin-top-no"><a class="fbtn fbtn-amber"><span class="icon">add</span></a></p>
										</div>
										<div class="col-sm-2 col-xs-3 col-xx-4">
											<p class="margin-top-no"><a class="fbtn fbtn-green"><span class="icon">add</span></a></p>
										</div>
										<div class="col-sm-2 col-xs-3 col-xx-4">
											<p class="margin-top-no"><a class="fbtn fbtn-red"><span class="icon">add</span></a></p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-main">
								<div class="card-header">
									<div class="card-inner">
										<p class="margin-no"><strong>Sizes</strong></p>
									</div>
								</div>
								<div class="card-inner">
									<p class="margin-top-no"><a class="fbtn fbtn-lg"><span class="icon">add</span></a></p>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
</cfoutput>

</material:bodyWrap>