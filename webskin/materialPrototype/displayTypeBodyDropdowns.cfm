<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/core/" prefix="core" />
<cfimport taglib="/farcry/plugins/material/tags/" prefix="material" />




<material:bodyWrap heading="Google Material - Buttons">

<cfoutput>
<h2 class="content-sub-heading">Basic Dropdown</h2>
				<div class="card-wrap">
					<div class="row">
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										<p class="card-heading">Dropdown!</p>
										<p>
											Lorem ipsum dolor sit amet.<br>
											Consectetur adipiscing elit.
										</p>
									</div>
									<div class="card-action">
										<ul class="margin-no nav nav-list pull-left">
											<li class="dropdown">
												<a class="dropdown-toggle text-default waves-attach" data-toggle="dropdown"><span class="icon">more_vert</span></a>
												<ul class="dropdown-menu">
													<li>
														<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">loop</span>&nbsp;Lorem Ipsum</a>
													</li>
													<li>
														<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">replay</span>&nbsp;Consectetur Adipiscing</a>
													</li>
													<li>
														<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">shuffle</span>&nbsp;Sed Ornare</a>
													</li>
												</ul>
											</li>
										</ul>
										<ul class="margin-no nav nav-list pull-right">
											<li class="dropdown">
												<a class="dropdown-toggle text-default waves-attach" data-toggle="dropdown"><span class="icon">more_vert</span></a>
												<ul class="dropdown-menu">
													<li>
														<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">loop</span>&nbsp;Lorem Ipsum</a>
													</li>
													<li>
														<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">replay</span>&nbsp;Consectetur Adipiscing</a>
													</li>
													<li>
														<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">shuffle</span>&nbsp;Sed Ornare</a>
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
				<h2 class="content-sub-heading">Button Dropdown</h2>
				<div class="dropdown-wrap">
					<div class="dropdown dropdown-inline">
						<a class="btn dropdown-toggle-btn waves-attach" data-toggle="dropdown">Button Dropdown<span class="icon margin-left-sm">keyboard_arrow_down</span></a>
						<ul class="dropdown-menu nav">
							<li>
								<a class="waves-attach" href="javascript:void(0)">Lorem Ipsum</a>
							</li>
							<li>
								<a class="waves-attach" href="javascript:void(0)">Consectetur Adipiscing</a>
							</li>
							<li>
								<a class="waves-attach" href="javascript:void(0)">Sed Ornare</a>
							</li>
						</ul>
					</div>
				</div>

</cfoutput>

</material:bodyWrap>