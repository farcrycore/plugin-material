<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/core/" prefix="core" />
<cfimport taglib="/farcry/plugins/material/tags/" prefix="mat" />




<mat:bodyWrap heading="Google Material - Buttons">


<cfoutput>





	<h2 class="content-sub-heading">Basic Tiles</h2>
	<mat:tileWrap>
		<mat:tile>
			<div class="pull-left tile-side">
				<div class="avatar avatar-sm">
					<span class="icon">alarm</span>
				</div>
			</div>
			<div class="tile-inner">
				<span>lorem ipsum dolor sit amet</span>
			</div>
		</mat:tile>
		<mat:tile>
			<div class="pull-right tile-side">
				<div class="avatar avatar-sm avatar-amber">
					<span class="icon">alarm</span>
				</div>
			</div>
			<div class="tile-inner">
				<span>lorem ipsum dolor sit amet</span>
			</div>
		</mat:tile>
	</mat:tileWrap>






	<h2 class="content-sub-heading">Tiles with Actions</h2>
	<mat:tileWrap>
		<mat:tile>
			<div class="pull-left tile-side">
				<div class="avatar avatar-sm">
					<span class="icon">alarm</span>
				</div>
			</div>
			<div class="tile-action tile-action-show">
				<ul class="margin-no nav nav-list pull-right">
					<li>
						<a class="text-sec waves-attach" href="javascript:void(0)"><span class="icon">add</span></a>
					</li>
					<li>
						<a class="text-sec waves-attach" href="javascript:void(0)"><span class="icon">delete</span></a>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle text-sec waves-attach" data-toggle="dropdown"><span class="icon">settings</span></a>
						<ul class="dropdown-menu">
							<li>
								<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">loop</span>Lorem Ipsum</a>
							</li>
							<li>
								<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">replay</span>Consectetur Adipiscing</a>
							</li>
							<li>
								<a class="waves-attach" href="javascript:void(0)"><span class="icon margin-right-sm">shuffle</span>Sed Ornare</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="tile-inner">
				<span class="text-overflow">lorem ipsum dolor sit amet</span>
			</div>
		</mat:tile>
	</mat:tileWrap>







	<h2 class="content-sub-heading">Tiles with Collapsible Regions</h2>
 	<mat:tileWrap>

 		<cfloop from="1" to="5" index="i">
 			
			<mat:tile class="tile-collapse-full" parent="body">
				<mat:tileHeading>
					<div class="pull-left tile-side" data-ignore="tile">
						<div class="avatar avatar-sm">
							<span class="icon">alarm</span>
						</div>
					</div>
					<div class="tile-inner">
						<div class="text-overflow">#i#. lorem ipsum dolor sit amet</div>
					</div>
				</mat:tileHeading>
				<mat:tilePanel>
					<div class="tile-sub">
						<p>Additional information<br><small>Aliquam in pharetra leo. In congue, massa sed elementum dictum, justo quam efficitur risus, in posuere mi orci ultrices diam.</small></p>
					</div>
					<div class="tile-footer">
						<div class="tile-footer-btn pull-left">
							<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon">check</span>&nbsp;OK</a>
							<a class="btn btn-flat waves-attach" data-toggle="tile" href="###stTileData.tileID#-panel"><span class="icon">close</span>&nbsp;Cancel</a>
						</div>
					</div>
				</mat:tilePanel>
			</mat:tile>

 		</cfloop>
	</mat:tileWrap>




	<cfset stNewForm = application.fapi.getNewContentObject("blFormSiteEval") />

	<h2 class="content-sub-heading">Tiles with Forms</h2>

	<div class="row">
		<mat:tileWrap>
			<mat:tile>
				<div class="tile-inner">
					<ft:form class="margin-top-no">

						<ft:object typename="#stNewForm.typename#" objectid="#stNewForm.objectid#" legend="Account Details" />
						

					</ft:form>
				</div>
			</mat:tile>
		</mat:tileWrap>
	</div>



	<h2 class="content-sub-heading">Coloured Tiles</h2>
 	<mat:tileWrap>
 			
		<mat:tile class="tile-brand">
			<mat:tileHeading>
				<div class="pull-left tile-side" data-ignore="tile">
					<div class="avatar avatar-sm">
						<span class="icon">alarm</span>
					</div>
				</div>
				<div class="tile-inner">
					<div class="text-overflow">#i#. lorem ipsum dolor sit amet</div>
				</div>
			</mat:tileHeading>
			<mat:tilePanel>
				<div class="tile-sub">
					<p>Additional information<br><small>Aliquam in pharetra leo. In congue, massa sed elementum dictum, justo quam efficitur risus, in posuere mi orci ultrices diam.</small></p>
				</div>
				<div class="tile-footer">
					<div class="tile-footer-btn pull-left">
						<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon">check</span>&nbsp;OK</a>
						<a class="btn btn-flat waves-attach" data-toggle="tile" href="###stTileData.tileID#-panel"><span class="icon">close</span>&nbsp;Cancel</a>
					</div>
				</div>
			</mat:tilePanel>
		</mat:tile>
 			
		<mat:tile class="tile-brand-accent">
			<mat:tileHeading>
				<div class="pull-left tile-side" data-ignore="tile">
					<div class="avatar avatar-sm">
						<span class="icon">alarm</span>
					</div>
				</div>
				<div class="tile-inner">
					<div class="text-overflow">#i#. lorem ipsum dolor sit amet</div>
				</div>
			</mat:tileHeading>
			<mat:tilePanel>
				<div class="tile-sub">
					<p>Additional information<br><small>Aliquam in pharetra leo. In congue, massa sed elementum dictum, justo quam efficitur risus, in posuere mi orci ultrices diam.</small></p>
				</div>
				<div class="tile-footer">
					<div class="tile-footer-btn pull-left">
						<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon">check</span>&nbsp;OK</a>
						<a class="btn btn-flat waves-attach" data-toggle="tile" href="###stTileData.tileID#-panel"><span class="icon">close</span>&nbsp;Cancel</a>
					</div>
				</div>
			</mat:tilePanel>
		</mat:tile>
 			
		<mat:tile class="tile-amber">
			<mat:tileHeading>
				<div class="pull-left tile-side" data-ignore="tile">
					<div class="avatar avatar-sm">
						<span class="icon">alarm</span>
					</div>
				</div>
				<div class="tile-inner">
					<div class="text-overflow">#i#. lorem ipsum dolor sit amet</div>
				</div>
			</mat:tileHeading>
			<mat:tilePanel>
				<div class="tile-sub">
					<p>Additional information<br><small>Aliquam in pharetra leo. In congue, massa sed elementum dictum, justo quam efficitur risus, in posuere mi orci ultrices diam.</small></p>
				</div>
				<div class="tile-footer">
					<div class="tile-footer-btn pull-left">
						<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon">check</span>&nbsp;OK</a>
						<a class="btn btn-flat waves-attach" data-toggle="tile" href="###stTileData.tileID#-panel"><span class="icon">close</span>&nbsp;Cancel</a>
					</div>
				</div>
			</mat:tilePanel>
		</mat:tile>
 			
		<mat:tile class="tile-green">
			<mat:tileHeading>
				<div class="pull-left tile-side" data-ignore="tile">
					<div class="avatar avatar-sm">
						<span class="icon">alarm</span>
					</div>
				</div>
				<div class="tile-inner">
					<div class="text-overflow">#i#. lorem ipsum dolor sit amet</div>
				</div>
			</mat:tileHeading>
			<mat:tilePanel>
				<div class="tile-sub">
					<p>Additional information<br><small>Aliquam in pharetra leo. In congue, massa sed elementum dictum, justo quam efficitur risus, in posuere mi orci ultrices diam.</small></p>
				</div>
				<div class="tile-footer">
					<div class="tile-footer-btn pull-left">
						<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon">check</span>&nbsp;OK</a>
						<a class="btn btn-flat waves-attach" data-toggle="tile" href="###stTileData.tileID#-panel"><span class="icon">close</span>&nbsp;Cancel</a>
					</div>
				</div>
			</mat:tilePanel>
		</mat:tile>
 			
		<mat:tile class="tile-red">
			<mat:tileHeading>
				<div class="pull-left tile-side" data-ignore="tile">
					<div class="avatar avatar-sm">
						<span class="icon">alarm</span>
					</div>
				</div>
				<div class="tile-inner">
					<div class="text-overflow">#i#. lorem ipsum dolor sit amet</div>
				</div>
			</mat:tileHeading>
			<mat:tilePanel>
				<div class="tile-sub">
					<p>Additional information<br><small>Aliquam in pharetra leo. In congue, massa sed elementum dictum, justo quam efficitur risus, in posuere mi orci ultrices diam.</small></p>
				</div>
				<div class="tile-footer">
					<div class="tile-footer-btn pull-left">
						<a class="btn btn-flat waves-attach" href="javascript:void(0)"><span class="icon">check</span>&nbsp;OK</a>
						<a class="btn btn-flat waves-attach" data-toggle="tile" href="###stTileData.tileID#-panel"><span class="icon">close</span>&nbsp;Cancel</a>
					</div>
				</div>
			</mat:tilePanel>
		</mat:tile>
	</mat:tileWrap>



</cfoutput>

</mat:bodyWrap>