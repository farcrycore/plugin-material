<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="." prefix="tags" />

<cfparam name="attributes.activeShowStill" default="false" />


<!--- 
<div class="tile-wrap">
	<div class="tile tile-collapse"><!-- tile-collapse-full -->
		<div class="tile-toggle" data-target="#tile-collapse-1" data-toggle="tile"><!--  data-parent=".content" -->
			<div class="pull-left tile-side">
			</div>
			<div class="tile-action" data-ignore="tile">								
			</div>
			<div class="tile-inner">
				
			</div>
		</div>
		<div class="tile-active-show collapse" id="tile-collapse-1"><!-- tile-active-show-still -->
			<div class="tile-sub">
				
			</div>
			<div class="tile-footer">
				
			</div>
		</div>
	</div>
</div>
 --->

<cfif not thistag.HasEndTag>
	<cfabort showerror="tileWrap must have an end tag...">
</cfif>
	
	
<cfif thistag.executionMode eq "START">	

	<cfset lReservedAttributes = "activeShowStill" />
	
	<cfset lExtraAttributes = "" />
	<cfloop collection="#attributes#" item="attr">
		<cfif not listFindNoCase(lReservedAttributes, attr)>
			<cfset lExtraAttributes = listAppend(lExtraAttributes, '#attr#="#attributes[attr]#"', ' ') />
		</cfif>
	</cfloop>


	<cfoutput>
	<div class="tile-wrap" #lExtraAttributes#>		
	</cfoutput>




	<skin:loadJS id="tileEssentialWrap">
		<cfoutput>
		// tile show
		$(document).on('show.bs.collapse','.tile-active-show', function() {
			var $this = $(this);
		    var $thisWrap = $this.parents('.tile-wrap');
		    var $thisEssentialWrap = $this.find('.tile-essential-wrap');
		    var $thisEssentialWrapID = $this.find('.tile-essential-wrap').attr('ftTileObjectID');
		    $( $thisEssentialWrap ).html('<div class="tile-sub"><p class="text-center"><i class="fa fa-refresh fa-3x fa-spin"></i></p></div>');
		    $( $thisEssentialWrap ).load($thisEssentialWrap.attr('ftTileRefreshURL'));
			$j.ajax({url: '/?type=dmProfile&view=ajaxSetCurrentDetailRow&currentDetailRowID=' + $thisEssentialWrapID + '&ajaxmode=1'});
		});

		// tile show
		$(document).on('hide.bs.collapse','.tile-active-show', function() {
			var $this = $(this);
		    var $thisWrap = $this.parents('.tile-wrap');
		    var $thisEssentialWrap = $this.find('.tile-essential-wrap');
		    var $thisEssentialWrapID = $this.find('.tile-essential-wrap').attr('ftTileObjectID');
		    $j.ajax({url: '/?type=dmProfile&view=ajaxForgetCurrentDetailRow&ajaxmode=1'});
		});
		
	</cfoutput>

		
	</skin:loadJS>


</cfif>

	
<cfif thistag.executionMode eq "END">

	<!--- IF CURRENT OBJECT --->
	<!--- <skin:view attributeCollection="#attributes#" /> --->	
	
	<cfoutput>
		
	</div>
	</cfoutput>
</cfif>