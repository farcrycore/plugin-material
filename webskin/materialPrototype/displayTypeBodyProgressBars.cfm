<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/core/" prefix="core" />
<cfimport taglib="/farcry/plugins/material/tags/" prefix="material" />




<material:bodyWrap heading="Google Material - Buttons">

<cfoutput>
			<div class="row">
				<div class="col-lg-6 col-md-8">
					<section class="content-inner">
						<h2 class="content-sub-heading">Circular Progress Bars</h2>
						<p>Default circular progress bar inherits accent colour (<code>$brand-color-accent</code>).</p>
						<div class="progress-circular progress-circular-inline">
							<div class="progress-circular-wrapper">
								<div class="progress-circular-inner">
									<div class="progress-circular-left">
										<div class="progress-circular-spinner"></div>
									</div>
									<div class="progress-circular-gap"></div>
									<div class="progress-circular-right">
										<div class="progress-circular-spinner"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="progress-circular progress-circular-inline progress-circular-brand">
							<div class="progress-circular-wrapper">
								<div class="progress-circular-inner">
									<div class="progress-circular-left">
										<div class="progress-circular-spinner"></div>
									</div>
									<div class="progress-circular-gap"></div>
									<div class="progress-circular-right">
										<div class="progress-circular-spinner"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="progress-circular progress-circular-inline progress-circular-amber">
							<div class="progress-circular-wrapper">
								<div class="progress-circular-inner">
									<div class="progress-circular-left">
										<div class="progress-circular-spinner"></div>
									</div>
									<div class="progress-circular-gap"></div>
									<div class="progress-circular-right">
										<div class="progress-circular-spinner"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="progress-circular progress-circular-inline progress-circular-green">
							<div class="progress-circular-wrapper">
								<div class="progress-circular-inner">
									<div class="progress-circular-left">
										<div class="progress-circular-spinner"></div>
									</div>
									<div class="progress-circular-gap"></div>
									<div class="progress-circular-right">
										<div class="progress-circular-spinner"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="progress-circular progress-circular-inline progress-circular-red">
							<div class="progress-circular-wrapper">
								<div class="progress-circular-inner">
									<div class="progress-circular-left">
										<div class="progress-circular-spinner"></div>
									</div>
									<div class="progress-circular-gap"></div>
									<div class="progress-circular-right">
										<div class="progress-circular-spinner"></div>
									</div>
								</div>
							</div>
						</div>
						<h2 class="content-sub-heading">Determinate Progress Bars</h2>
						<p>Default progress bar inherits accent colour (<code>$brand-color-accent</code>).</p>
						<div class="progress">
							<div class="progress-bar" style="width: 20%"></div>
						</div>
						<div class="progress progress-brand">
							<div class="progress-bar" style="width: 30%"></div>
						</div>
						<div class="progress progress-amber">
							<div class="progress-bar" style="width: 40%"></div>
						</div>
						<div class="progress progress-green">
							<div class="progress-bar" style="width: 50%"></div>
						</div>
						<div class="progress progress-red">
							<div class="progress-bar" style="width: 70%"></div>
						</div>
						<h2 class="content-sub-heading">Indeterminate Progress Bars</h2>
						<div class="progress">
							<div class="progress-bar-indeterminate"></div>
						</div>
						<h2 class="content-sub-heading">Load Bars</h2>
						<p>A <code>.load-bar</code> requires four different colours (i.e. four <code>&lt;div class="load-bar-progress"&gt;</code> with different colour classes) to achieve the best visual effect. By default, a <code>.load-bar-progress</code> inherits accent colour (<code>$brand-color-accent</code>).</p>
						<p>A complete load bar consists of two separate <code>.load-bar</code>s, and the order of <code>.load-bar-progress</code>s in each of the two <code>.load-bar</code>s will be different.</p>
						<div class="progress">
							<div class="load-bar">
								<div class="load-bar-base">
									<div class="load-bar-content">
										<div class="load-bar-progress"></div>
										<div class="load-bar-progress load-bar-progress-brand"></div>
										<div class="load-bar-progress load-bar-progress-amber"></div>
										<div class="load-bar-progress load-bar-progress-green"></div>
									</div>
								</div>
							</div>
							<div class="load-bar">
								<div class="load-bar-base">
									<div class="load-bar-content">
										<div class="load-bar-progress"></div>
										<div class="load-bar-progress load-bar-progress-green"></div>
										<div class="load-bar-progress load-bar-progress-amber"></div>
										<div class="load-bar-progress load-bar-progress-brand"></div>
									</div>
								</div>
							</div>
						</div>
						<h2 class="content-sub-heading">Loading Additional Content Examples</h2>
						<p>Combine <code>.el-loading</code> with progress bars or text on any elements or <code>body</code> to indicate additional content is being loaded. Add <code>.el-loading-done</code> using custom javascript when content has been loaded to remove loading indicators.</p>
						<div class="el-loading" id="el-loading-1">
							<div class="el-loading-indicator">
								<div class="progress-circular progress-circular-inline">
									<div class="progress-circular-wrapper">
										<div class="progress-circular-inner">
											<div class="progress-circular-left">
												<div class="progress-circular-spinner"></div>
											</div>
											<div class="progress-circular-gap"></div>
											<div class="progress-circular-right">
												<div class="progress-circular-spinner"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tile-wrap">
								<div class="tile">
									<div class="tile-inner">
										<span>placeholder tile</span>
									</div>
								</div>
								<div class="tile">
									<div class="tile-inner">
										<span>placeholder tile</span>
									</div>
								</div>
								<div class="tile">
									<div class="tile-inner">
										<span>placeholder tile</span>
									</div>
								</div>
							</div>
						</div>
						<p class="text-right"><a class="btn waves-attach waves-button finish-loading" data-target="##el-loading-1">Finish Loading</a></p>
						<div class="el-loading" id="el-loading-2">
							<div class="el-loading-indicator">
								<div class="progress progress-position-absolute-top">
									<div class="progress-bar-indeterminate"></div>
								</div>
							</div>
							<div class="tile-wrap">
								<div class="tile">
									<div class="tile-inner">
										<span>placeholder tile</span>
									</div>
								</div>
								<div class="tile">
									<div class="tile-inner">
										<span>placeholder tile</span>
									</div>
								</div>
								<div class="tile">
									<div class="tile-inner">
										<span>placeholder tile</span>
									</div>
								</div>
							</div>
						</div>
						<p class="text-right"><a class="btn waves-attach waves-button finish-loading" data-target="##el-loading-2">Finish Loading</a></p>
						<div class="el-loading" id="el-loading-3">
							<div class="el-loading-indicator">
								<div class="progress progress-position-absolute-bottom">
									<div class="load-bar">
										<div class="load-bar-base">
											<div class="load-bar-content">
												<div class="load-bar-progress"></div>
												<div class="load-bar-progress load-bar-progress-brand"></div>
												<div class="load-bar-progress load-bar-progress-amber"></div>
												<div class="load-bar-progress load-bar-progress-green"></div>
											</div>
										</div>
									</div>
									<div class="load-bar">
										<div class="load-bar-base">
											<div class="load-bar-content">
												<div class="load-bar-progress"></div>
												<div class="load-bar-progress load-bar-progress-green"></div>
												<div class="load-bar-progress load-bar-progress-amber"></div>
												<div class="load-bar-progress load-bar-progress-brand"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tile-wrap">
								<div class="tile">
									<div class="tile-inner">
										<span>placeholder tile</span>
									</div>
								</div>
								<div class="tile">
									<div class="tile-inner">
										<span>placeholder tile</span>
									</div>
								</div>
								<div class="tile">
									<div class="tile-inner">
										<span>placeholder tile</span>
									</div>
								</div>
							</div>
						</div>
						<p class="text-right"><a class="btn waves-attach waves-button finish-loading" data-target="##el-loading-3">Finish Loading</a></p>
						<div class="tile-wrap" id="el-loading-tile-wrap">
							<div class="tile tile-collapse">
								<div class="tile-toggle" data-parent="##el-loading-tile-wrap" data-target="##el-loading-tile-collapse-1" data-toggle="tile">
									<div class="tile-inner">
										<div class="text-overflow">click to expand this tile</div>
									</div>
								</div>
								<div class="tile-active-show collapse" id="el-loading-tile-collapse-1">
									<div class="el-loading">
										<div class="el-loading-indicator el-loading-indicator-linear">
											<div class="progress progress-position-absolute-top">
												<div class="progress-bar-indeterminate"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tile tile-collapse">
								<div class="tile-toggle" data-parent="##el-loading-tile-wrap" data-target="##el-loading-tile-collapse-2" data-toggle="tile">
									<div class="tile-inner">
										<div class="text-overflow">click to expand this tile</div>
									</div>
								</div>
								<div class="tile-active-show collapse" id="el-loading-tile-collapse-2">
									<div class="el-loading">
										<div class="el-loading-indicator el-loading-indicator-linear">
											<div class="progress progress-position-absolute-top">
												<div class="progress-bar-indeterminate"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tile tile-collapse">
								<div class="tile-toggle" data-parent="##el-loading-tile-wrap" data-target="##el-loading-tile-collapse-3" data-toggle="tile">
									<div class="tile-inner">
										<div class="text-overflow">click to expand this tile</div>
									</div>
								</div>
								<div class="tile-active-show collapse" id="el-loading-tile-collapse-3">
									<div class="el-loading">
										<div class="el-loading-indicator el-loading-indicator-linear">
											<div class="progress progress-position-absolute-top">
												<div class="progress-bar-indeterminate"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<p><code>.avoid-fout</code> on HTML pages uses a similar technique to avoid flash of unstyled text (FOUT). <code>.avoid-fout-done</code> is added when <code>Roboto</code> font either is successfully loaded or fails to load. <code>.avoid-fout</code> also can be used on any HTML elements.</p>
					</section>
				</div>
			</div>

</cfoutput>

</material:bodyWrap>