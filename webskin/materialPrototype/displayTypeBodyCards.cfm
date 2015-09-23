<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/core/" prefix="core" />
<cfimport taglib="/farcry/plugins/material/tags/" prefix="material" />




<material:bodyWrap heading="Google Material - Cards">

	<cfoutput>
	<h2 class="content-sub-heading">Basic Cards</h2>
		<div class="card-wrap">
			<div class="row">
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">Default Card</p>
								<p>
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon">check</span>&nbsp;Button</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="card card-brand">
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">Brand Colour</p>
								<p>
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon">check</span>&nbsp;Button</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="card card-brand-accent">
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">Accent Card</p>
								<p>
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon">check</span>&nbsp;Button</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="card card-amber">
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">Amber Card</p>
								<p>
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon">check</span>&nbsp;Button</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="card card-green">
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">Green Card</p>
								<p>
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon">check</span>&nbsp;Button</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="card card-red">
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">Red Card</p>
								<p>
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon">check</span>&nbsp;Button</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<h2 class="content-sub-heading">Cards with Rich Media Content</h2>
		<div class="card-wrap">
			<div class="row">
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="card">
						<div class="card-main">
							<div class="card-img">
								<img alt="alt text" src="/material/images/samples/landscape.jpg">
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon text-blue">check</span>&nbsp;<span class="text-blue">Button</span></a>
								</div>
								<ul class="margin-no nav nav-list pull-right">
									<li class="dropdown">
										<a class="dropdown-toggle text-default waves-attach" data-toggle="dropdown"><span class="icon">keyboard_arrow_down</span></a>
										<ul class="dropdown-menu">
											<li>
												<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">filter_1</span>&nbsp;Lorem Ipsum</a>
											</li>
											<li>
												<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">filter_2</span>&nbsp;Consectetur Adipiscing</a>
											</li>
											<li>
												<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">filter_3</span>&nbsp;Sed Ornare</a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="card">
						<div class="card-main">
							<div class="card-img">
								<img alt="alt text" src="/material/images/samples/landscape.jpg">
								<p class="card-img-heading">Some Text!</p>
							</div>
							<div class="card-inner">
								<p>
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon text-blue">check</span>&nbsp;<span class="text-blue">Button</span></a>
								</div>
								<ul class="margin-no nav nav-list pull-right">
									<li class="dropdown">
										<a class="dropdown-toggle text-default waves-attach" data-toggle="dropdown"><span class="icon">keyboard_arrow_down</span></a>
										<ul class="dropdown-menu">
											<li>
												<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">filter_1</span>&nbsp;Lorem Ipsum</a>
											</li>
											<li>
												<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">filter_2</span>&nbsp;Consectetur Adipiscing</a>
											</li>
											<li>
												<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">filter_3</span>&nbsp;Sed Ornare</a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="card">
						<div class="card-main">
							<div class="card-header">
								<div class="card-header-side pull-left">
									<div class="avatar">
										<img alt="John Smith Avatar" src="/material/images/users/avatar-001.jpg">
									</div>
								</div>
								<div class="card-inner">
									<span>Some Text!</span>
								</div>
							</div>
							<div class="card-img">
								<img alt="alt text" src="/material/images/samples/landscape.jpg">
							</div>
							<div class="card-inner">
								<p>
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon text-blue">check</span>&nbsp;<span class="text-blue">Button</span></a>
								</div>
								<ul class="margin-no nav nav-list pull-right">
									<li class="dropdown">
										<a class="dropdown-toggle text-default waves-attach" data-toggle="dropdown"><span class="icon">keyboard_arrow_down</span></a>
										<ul class="dropdown-menu">
											<li>
												<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">filter_1</span>&nbsp;Lorem Ipsum</a>
											</li>
											<li>
												<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">filter_2</span>&nbsp;Consectetur Adipiscing</a>
											</li>
											<li>
												<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">filter_3</span>&nbsp;Sed Ornare</a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<h2 class="content-sub-heading">Cards with Vertical Split Area</h2>
		<div class="card-wrap">
			<div class="row">
				<div class="col-lg-4 col-sm-6">
					<div class="card">
						<aside class="card-side pull-left">
							<span class="card-heading icon">info_outline</span>
						</aside>
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">Primary Area!</p>
								<p>
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon text-blue">check</span>&nbsp;<span class="text-blue">Button</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="card card-brand">
						<aside class="card-side pull-right">
							<span class="card-heading icon">info_outline</span>
						</aside>
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">Primary Area!</p>
								<p>
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon text-blue">check</span>&nbsp;<span class="text-blue">Button</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="card-wrap">
			<div class="row">
				<div class="col-lg-4 col-sm-6">
					<div class="card">
						<a class="card-side pull-left waves-attach" href="javascript:void(0)"><span class="card-heading">Button</span></a>
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">Primary Area!</p>
								<p class="margin-bottom-lg">
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="card card-brand-accent">
						<a class="card-side pull-right waves-attach" href="javascript:void(0)"><span class="card-heading">Button</span></a>
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">Primary Area!</p>
								<p class="margin-bottom-lg">
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="card-wrap">
			<div class="row">
				<div class="col-lg-4 col-sm-6">
					<div class="card">
						<aside class="card-side card-side-img pull-left">
							<img alt="alt text" src="/material/images/samples/portrait.jpg">
						</aside>
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">Primary Area!</p>
								<p class="margin-bottom-lg">
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon text-blue">check</span>&nbsp;<span class="text-blue">Button</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="card">
						<aside class="card-side card-side-img pull-right">
							<img alt="alt text" src="/material/images/samples/portrait.jpg">
						</aside>
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">Primary Area!</p>
								<p class="margin-bottom-lg">
									Lorem ipsum dolor sit amet.<br>
									Consectetur adipiscing elit.
								</p>
							</div>
							<div class="card-action">
								<div class="card-action-btn pull-left">
									<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon text-blue">check</span>&nbsp;<span class="text-blue">Button</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</cfoutput>

</material:bodyWrap>