<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />



<cfoutput>
<div class="menu menu-right" id="search">
	<div class="menu-scroll">
		<div class="menu-wrap">
			<div class="menu-top">
				<div class="menu-top-info">
					<form class="menu-top-form">
						<label class="access-hide" for="menu-search">Search</label>
						<input class="form-control form-control-inverse" id="menu-search" placeholder="Search" type="search">
						<button class="access-hide" type="submit">Search</button>
					</form>
				</div>
			</div>
			<div class="menu-content">
				<div class="menu-content-inner">
					<p><strong>Saved Search Queries:</strong></p>
					<ul>
						<li><a href="javascript:void(0)">lorem ipsum dolor sit amet</a></li>
						<li><a href="javascript:void(0)">consectetur adipiscing elit</a></li>
						<li><a href="javascript:void(0)">sed ornare orci lorem</a></li>
						<li><a href="javascript:void(0)">vel eleifend elit tempor eleifend</a></li>
						<li><a href="javascript:void(0)">morbi feugiat aliquet justo</a></li>
					</ul>
					<hr>
					<p><strong>Popular Search Queries:</strong></p>
					<ul>
						<li><a href="javascript:void(0)">id ullamcorper tortor lobortis eu</a></li>
						<li><a href="javascript:void(0)">aliquam ut tellus arcu</a></li>
						<li><a href="javascript:void(0)">cestibulum tortor purus</a></li>
						<li><a href="javascript:void(0)">pretium ac dolor id</a></li>
						<li><a href="javascript:void(0)">gravida molestie libero</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
</cfoutput>