<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="." prefix="tags" />


<cfparam name="attributes.title" default="NEW PAGE" /><!--- @@hint: title heading of the page --->
<cfparam name="attributes.mediaText" default="" /><!--- @@hint: text to place to the left of the footer --->
<cfparam name="attributes.actionsHTML" default="" /><!--- This is updated by any modalWrapActions subtags --->

<cfif not thistag.HasEndTag>
	<cfabort showerror="modalWrap must have an end tag...">
</cfif>



<cfif thistag.executionMode eq "START">	
	<cfoutput>
	<header class="header">
		<div class="clearfix pull-left">
			<a class="header-logo" href="javascript:void(0);">#attributes.title#</a>
		</div>
		<div class="clearfix pull-right">
			<ul class="nav nav-list pull-right">
				<li>
					<a class="modal-close-iframe" href="##modal-iframe">
						<span class="access-hide">Close</span>
						<span class="icon icon-close"></span>
					</a>
				</li>
			</ul>
		</div>
	</header>

	<!--- 
			<div class="modal-scroll">
				<div class="modal-heading">
					<a class="modal-close" onClick="if ( self !== top ) {parent.$('##mint-modal').modal('hide')} else {$('##mint-modal').modal('hide')};" data-dismiss="modal">&times;</a>
					<h3 class="modal-title">#attributes.title#</h3>
				</div><!-- /.modal-heading -->
				<div class="modal-inner"> --->
	</cfoutput>
</cfif>

	
<cfif thistag.executionMode eq "END">	
	<cfoutput>


			</div><!-- /.modal-inner -->
		</div><!-- /.modal-scroll -->
		<div class="modal-footer">
			<div class="media">
				<div class="media-object pull-right">
					<cfif len(trim(attributes.actionsHTML))>
						<div class="pull-right">	
							#attributes.actionsHTML#
						</div>
					</cfif>

					
				</div><!-- /.media-object .pull-right -->
				<div class="media-inner">
					<p>#attributes.mediaText#&nbsp;</p>
				</div><!-- /.media-inner -->
			</div><!-- /.media -->
		</div><!-- /.modal-footer -->
	<!--- </div> --->
	</cfoutput>

</cfif>