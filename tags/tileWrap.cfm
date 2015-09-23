<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="." prefix="tags" />



<cfparam name="attributes.wrapID" default="tile-wrap-#application.fapi.getUUID()#" />
<cfparam name="attributes.class" default="" />

<cfif not thistag.HasEndTag>
	<cfabort showerror="tileWrap must have an end tag...">
</cfif>
	
	
<cfif thistag.executionMode eq "START">	

	<cfset lReservedAttributes = "wrapID,class" />
	
	<cfset lExtraAttributes = "" />
	<cfloop collection="#attributes#" item="attr">
		<cfif not listFindNoCase(lReservedAttributes, attr)>
			<cfset lExtraAttributes = listAppend(lExtraAttributes, '#attr#="#attributes[attr]#"', ' ') />
		</cfif>
	</cfloop>



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

	
	<cfset tileWrapGeneratedContent = thisTag.GeneratedContent />
	<cfset thisTag.GeneratedContent = "" />

	<cfoutput>
	<div id="#attributes.wrapID#" class="tile-wrap #attributes.class#" #lExtraAttributes#>	
		#tileWrapGeneratedContent#
	</div>
	</cfoutput>
</cfif>