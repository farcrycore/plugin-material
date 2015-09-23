<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/core/" prefix="core" />
<cfimport taglib="/farcry/plugins/material/tags/" prefix="material" />




<material:bodyWrap heading="Google Material - Forms Materialised">

<cfoutput>
<form class="form">
					<fieldset>
						<legend>Floating Labels</legend>
						<div class="form-group form-group-label">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-text">Input Field</label>
									<input class="form-control" id="float-text" type="text">
								</div>
							</div>
						</div>
						<div class="form-group form-group-label">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-text-value">Input Field with Value</label>
									<input class="form-control" id="float-text-value" type="text" value="something has already been written down">
								</div>
							</div>
						</div>
						<div class="form-group form-group-label">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-select">Select</label>
									<select class="form-control" id="float-select">
										<option value="">&nbsp;</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
									</select>
								</div>
							</div>
						</div>
						<div class="form-group form-group-label">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-textarea">Textarea</label>
									<textarea class="form-control" id="float-textarea" rows="5"></textarea>
								</div>
							</div>
						</div>
						<div class="form-group form-group-label">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-textarea-autosize">Auto Expanding Textarea</label>
									<textarea class="form-control textarea-autosize" id="float-textarea-autosize" rows="1"></textarea>
								</div>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>Floating Labels (Cont'd)</legend>
						<div class="form-group form-group-label">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-text-disabled">Disabled Input Field</label>
									<input class="form-control" id="float-text-disabled" type="text" disabled>
								</div>
							</div>
						</div>
						<div class="form-group form-group-label">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-text-value-disabled">Disabled Input Field with Value</label>
									<input class="form-control" id="float-text-value-disabled" type="text" value="something has already been written down" disabled>
								</div>
							</div>
						</div>
						<div class="form-group form-group-label">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-select-disabled">Disabled Select</label>
									<select class="form-control" id="float-select-disabled" disabled>
										<option value="">&nbsp;</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
									</select>
								</div>
							</div>
						</div>
						<div class="form-group form-group-label">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-textarea-disabled">Disabled Textarea</label>
									<textarea class="form-control" id="float-textarea-disabled" rows="5" disabled></textarea>
								</div>
							</div>
						</div>
						<div class="form-group form-group-label form-group-brand">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-text-brand">Brand Input Field</label>
									<input class="form-control" id="float-text-brand" type="text">
								</div>
							</div>
						</div>
						<div class="form-group form-group-label form-group-brand-accent">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-text-brand-accent">Accent Input Field</label>
									<input class="form-control" id="float-text-brand-accent" type="text">
								</div>
							</div>
						</div>
						<div class="form-group form-group-label form-group-amber">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-text-amber">Amber Input Field</label>
									<input class="form-control" id="float-text-amber" type="text">
								</div>
							</div>
						</div>
						<div class="form-group form-group-label form-group-green">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-text-green">Green Input Field</label>
									<input class="form-control" id="float-text-green" type="text">
								</div>
							</div>
						</div>
						<div class="form-group form-group-label form-group-red">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-text-red">Red Input Field</label>
									<input class="form-control" id="float-text-red" type="text">
								</div>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>Form Controls with Icons</legend>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<div class="media">
										<div class="media-object pull-left">
											<label class="form-icon-label" for="input-address"><span class="icon">home</span></label>
										</div>
										<div class="media-inner">
											<input class="form-control" id="input-address" placeholder="Address" type="text">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<div class="media">
										<div class="media-object pull-left">
											<label class="form-icon-label" for="input-phone"><span class="icon">phone</span></label>
										</div>
										<div class="media-inner">
											<select class="form-control" id="input-phone">
												<option>Phone</option>
												<option>1</option>
												<option>2</option>
												<option>3</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<div class="media">
										<div class="media-object pull-left">
											<label class="form-icon-label" for="input-comment"><span class="icon">comment</span></label>
										</div>
										<div class="media-inner">
											<textarea class="form-control textarea-autosize" id="input-comment" placeholder="Comments" rows="1"></textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>Material Checkboxes &amp; Radio Buttons</legend>
						<div class="form-group">
							<div class="checkbox checkbox-adv">
								<label for="input-checkbox-1">
									<input class="access-hide" id="input-checkbox-1" name="input-checkbox" type="checkbox">Option 1
									<span class="circle"></span><span class="circle-check"></span><span class="circle-icon icon">done</span>
								</label>
							</div>
							<div class="checkbox checkbox-adv">
								<label for="input-checkbox-2">
									<input class="access-hide" id="input-checkbox-2" name="input-checkbox" type="checkbox">Option 2
									<span class="circle"></span><span class="circle-check"></span><span class="circle-icon icon">done</span>
								</label>
							</div>
							<div class="checkbox checkbox-adv">
								<label for="input-checkbox-3">
									<input class="access-hide" id="input-checkbox-3" name="input-checkbox" type="checkbox">Option 3
									<span class="circle"></span><span class="circle-check"></span><span class="circle-icon icon">done</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="checkbox checkbox-adv disabled">
								<label for="input-checkbox-1-disabled">
									<input class="access-hide" id="input-checkbox-1-disabled" name="input-checkbox-disabled" type="checkbox" disabled>Disabled Option 1
									<span class="circle"></span><span class="circle-check"></span><span class="circle-icon icon">done</span>
								</label>
							</div>
							<div class="checkbox checkbox-adv disabled">
								<label for="input-checkbox-2-disabled">
									<input class="access-hide" id="input-checkbox-2-disabled" name="input-checkbox-disabled" type="checkbox" checked disabled>Disabled Option 2
									<span class="circle"></span><span class="circle-check"></span><span class="circle-icon icon">done</span>
								</label>
							</div>
							<div class="checkbox checkbox-adv disabled">
								<label for="input-checkbox-3-disabled">
									<input class="access-hide" id="input-checkbox-3-disabled" name="input-checkbox-disabled" type="checkbox" disabled>Disabled Option 3
									<span class="circle"></span><span class="circle-check"></span><span class="circle-icon icon">done</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="checkbox checkbox-adv checkbox-inline">
								<label for="input-checkbox-inline-1">
									<input class="access-hide" id="input-checkbox-inline-1" name="input-checkbox-inline" type="checkbox">Inline Option 1
									<span class="circle"></span><span class="circle-check"></span><span class="circle-icon icon">done</span>
								</label>
							</div>
							<div class="checkbox checkbox-adv checkbox-inline">
								<label for="input-checkbox-inline-2">
									<input class="access-hide" id="input-checkbox-inline-2" name="input-checkbox-inline" type="checkbox">Inline Option 2
									<span class="circle"></span><span class="circle-check"></span><span class="circle-icon icon">done</span>
								</label>
							</div>
							<div class="checkbox checkbox-adv checkbox-inline">
								<label for="input-checkbox-inline-3">
									<input class="access-hide" id="input-checkbox-inline-3" name="input-checkbox-inline" type="checkbox">Inline Option 3
									<span class="circle"></span><span class="circle-check"></span><span class="circle-icon icon">done</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="radio radio-adv">
								<label for="input-radio-1">
									<input class="access-hide" id="input-radio-1" name="input-radio" type="radio">Option 1
									<span class="circle"></span><span class="circle-check"></span>
								</label>
							</div>
							<div class="radio radio-adv">
								<label for="input-radio-2">
									<input class="access-hide" id="input-radio-2" name="input-radio" type="radio">Option 2
									<span class="circle"></span><span class="circle-check"></span>
								</label>
							</div>
							<div class="radio radio-adv">
								<label for="input-radio-3">
									<input class="access-hide" id="input-radio-3" name="input-radio" type="radio">Option 3
									<span class="circle"></span><span class="circle-check"></span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="radio radio-adv disabled">
								<label for="input-radio-1-disabled">
									<input class="access-hide" id="input-radio-1-disabled" name="input-radio-disabled" type="radio" disabled>Disabled Option 1
									<span class="circle"></span><span class="circle-check"></span>
								</label>
							</div>
							<div class="radio radio-adv disabled">
								<label for="input-radio-2-disabled">
									<input class="access-hide" id="input-radio-2-disabled" name="input-radio-disabled" type="radio" checked disabled>Disabled Option 2
									<span class="circle"></span><span class="circle-check"></span>
								</label>
							</div>
							<div class="radio radio-adv disabled">
								<label for="input-radio-3-disabled">
									<input class="access-hide" id="input-radio-3-disabled" name="input-radio-disabled" type="radio" disabled>Disabled Option 3
									<span class="circle"></span><span class="circle-check"></span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="radio radio-adv radio-inline">
								<label for="input-radio-inline-1">
									<input class="access-hide" id="input-radio-inline-1" name="input-radio-inline" type="radio">Inline Option 1
									<span class="circle"></span><span class="circle-check"></span>
								</label>
							</div>
							<div class="radio radio-adv radio-inline">
								<label for="input-radio-inline-2">
									<input class="access-hide" id="input-radio-inline-2" name="input-radio-inline" type="radio">Inline Option 2
									<span class="circle"></span><span class="circle-check"></span>
								</label>
							</div>
							<div class="radio radio-adv radio-inline">
								<label for="input-radio-inline-3">
									<input class="access-hide" id="input-radio-inline-3" name="input-radio-inline" type="radio">Inline Option 3
									<span class="circle"></span><span class="circle-check"></span>
								</label>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>Material Datepicker</legend>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="datepicker-adv-1">Material Datepicker</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="datepicker-adv datepicker-adv-doc-1 form-control" id="datepicker-adv-1" type="text">
									<div class="card">
										<div class="card-main">
											<div class="card-header">
												<div class="card-inner">
													<span class="icon">info_outline</span>&nbsp;<span>Usage</span>
												</div>
											</div>
											<div class="card-inner">
												<p>Use <code>.datepicker-adv</code> to apply material datepicker styles and activate the datepicker via simple javascript, for example: <code>$('.datepicker-adv').datepicker();</code></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="datepicker-adv-2">Material Datepicker with Pre-Set Date</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="datepicker-adv datepicker-adv-doc-2 form-control" id="datepicker-adv-2" type="text" value="01-Jan-2010">
									<div class="card">
										<div class="card-main">
											<div class="card-header">
												<div class="card-inner">
													<span class="icon">info_outline</span>&nbsp;<span>Options</span>
												</div>
											</div>
											<div class="card-inner">
												<p>Alternatively, options can be passed to override some default material datepicker behaviours:</p>
												<ul>
													<li><code>format</code> to change date format</li>
													<li><code>selectMonths</code> and <code>selectYears</code> to hide/show dropdown menus for picking month and year. The number of years to be shown in the dropdown can also be specified using an even integer.</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>Switch</legend>
						<div class="form-group">
							<div class="checkbox switch">
								<label for="input-switch-1">
									<input class="access-hide" id="input-switch-1" name="input-switch" type="checkbox"><span class="switch-toggle"></span>Default switch inherits accent colour
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="checkbox switch">
								<label for="input-switch-2">
									<input class="access-hide" id="input-switch-2" name="input-switch" type="checkbox"><span class="switch-toggle switch-toggle-brand"></span>Brand switch
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="checkbox switch">
								<label for="input-switch-3">
									<input class="access-hide" id="input-switch-3" name="input-switch" type="checkbox"><span class="switch-toggle switch-toggle-amber"></span>Amber switch
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="checkbox switch">
								<label for="input-switch-4">
									<input class="access-hide" id="input-switch-4" name="input-switch" type="checkbox"><span class="switch-toggle switch-toggle-green"></span>Green switch
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="checkbox switch">
								<label for="input-switch-6">
									<input class="access-hide" id="input-switch-6" name="input-switch" type="checkbox"><span class="switch-toggle switch-toggle-red"></span>Red switch
								</label>
							</div>
						</div>
					</fieldset>
					<div class="form-group-btn">
						<button class="btn btn-brand-accent waves-attach waves-button waves-light" type="submit">Submit Button</button><button class="btn waves-attach waves-button" type="button">Cancel Button</button>
					</div>
				</form>
</cfoutput>

</material:bodyWrap>