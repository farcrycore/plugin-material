<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/core/" prefix="core" />
<cfimport taglib="/farcry/plugins/material/tags/" prefix="material" />




<material:bodyWrap heading="Google Material - Buttons">

<cfoutput>

			<div class="row">
				<div class="col-lg-6 col-md-8">
					<section class="content-inner">
						<p><span class="icon margin-right-sm">info</span>Default tab nav inherits accent colour (<code>$brand-color-accent</code>).</p>
						<nav class="tab-nav">
							<ul class="nav nav-justified">
								<li class="active">
									<a class="waves-attach" data-toggle="tab" href="##first-tab">First Tab</a>
								</li>
								<li>
									<a class="waves-attach" data-toggle="tab" href="##second-tab">Second Tab</a>
								</li>
								<li>
									<a class="waves-attach" data-toggle="tab" href="##third-tab">Third Tab</a>
								</li>
							</ul>
						</nav>
						<div class="tab-content">
							<div class="tab-pane fade active in" id="first-tab">
								<p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
							</div>
							<div class="tab-pane fade" id="second-tab">
								<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
							</div>
							<div class="tab-pane fade" id="third-tab">
								<p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
							</div>
						</div>
						<nav class="tab-nav tab-nav-brand">
							<ul class="nav nav-justified">
								<li class="active">
									<a class="waves-attach" data-toggle="tab" href="##first-tab-brand">Brand Colour</a>
								</li>
								<li>
									<a class="waves-attach" data-toggle="tab" href="##second-tab-brand">Another Tab</a>
								</li>
								<li>
									<a class="waves-attach" data-toggle="tab" href="##third-tab-brand">Third Tab</a>
								</li>
							</ul>
						</nav>
						<div class="tab-content">
							<div class="tab-pane fade active in" id="first-tab-brand">
								<p>Brand Colour.</p>
							</div>
							<div class="tab-pane fade" id="second-tab-brand">
								<p>Another Tab.</p>
							</div>
							<div class="tab-pane fade" id="third-tab-brand">
								<p>Third Tab.</p>
							</div>
						</div>
						<nav class="tab-nav tab-nav-amber">
							<ul class="nav nav-justified">
								<li class="active">
									<a class="waves-attach" data-toggle="tab" href="##first-tab-amber">Amber Tab</a>
								</li>
								<li>
									<a class="waves-attach" data-toggle="tab" href="##second-tab-amber">Another Tab</a>
								</li>
								<li>
									<a class="waves-attach" data-toggle="tab" href="##third-tab-amber">Third Tab</a>
								</li>
							</ul>
						</nav>
						<div class="tab-content">
							<div class="tab-pane fade active in" id="first-tab-amber">
								<p>Amber Tab.</p>
							</div>
							<div class="tab-pane fade" id="second-tab-amber">
								<p>Another Tab.</p>
							</div>
							<div class="tab-pane fade" id="third-tab-amber">
								<p>Third Tab.</p>
							</div>
						</div>
						<nav class="tab-nav tab-nav-green">
							<ul class="nav nav-justified">
								<li class="active">
									<a class="waves-attach" data-toggle="tab" href="##first-tab-green">Green Tab</a>
								</li>
								<li>
									<a class="waves-attach" data-toggle="tab" href="##second-tab-green">Another Tab</a>
								</li>
								<li>
									<a class="waves-attach" data-toggle="tab" href="##third-tab-green">Third Tab</a>
								</li>
							</ul>
						</nav>
						<div class="tab-content">
							<div class="tab-pane fade active in" id="first-tab-green">
								<p>Green Tab.</p>
							</div>
							<div class="tab-pane fade" id="second-tab-green">
								<p>Another Tab.</p>
							</div>
							<div class="tab-pane fade" id="third-tab-green">
								<p>Third Tab.</p>
							</div>
						</div>
						<nav class="tab-nav tab-nav-red">
							<ul class="nav nav-justified">
								<li class="active">
									<a class="waves-attach" data-toggle="tab" href="##first-tab-red">Red Tab</a>
								</li>
								<li>
									<a class="waves-attach" data-toggle="tab" href="##second-tab-red">Another Tab</a>
								</li>
								<li>
									<a class="waves-attach" data-toggle="tab" href="##third-tab-red">Third Tab</a>
								</li>
							</ul>
						</nav>
						<div class="tab-content">
							<div class="tab-pane fade active in" id="first-tab-red">
								<p>Red Tab.</p>
							</div>
							<div class="tab-pane fade" id="second-tab-red">
								<p>Another Tab.</p>
							</div>
							<div class="tab-pane fade" id="third-tab-red">
								<p>Third Tab.</p>
							</div>
						</div>
					</section>
				</div>
			</div>
</cfoutput>

</material:bodyWrap>