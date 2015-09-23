<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/core/" prefix="core" />
<cfimport taglib="/farcry/plugins/material/tags/" prefix="material" />




<material:bodyWrap heading="Google Material - Forms Basic">

<cfoutput>
<form class="form">
					<fieldset>
						<legend class="col-lg-10 col-lg-offset-2 col-md-9 col-md-offset-3 col-sm-8 col-sm-offset-4">Basic Form Elements</legend>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-color">Input Type = Color</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-color" type="color">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-date">Input Type = Date</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-date" type="date">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-datetime">Input Type = Datetime</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-datetime" type="datetime">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-datetime-local">Input Type = Datetime-local</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-datetime-local" type="datetime-local">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-email">Input Type = Email</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-email" type="email">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-month">Input Type = Month</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-month" type="month">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-number">Input Type = Number</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-number" type="number">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-password">Input Type = Password</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-password" type="password">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-search">Input Type = Search</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-search" type="search">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-tel">Input Type = Tel</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-tel" type="tel">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-text">Input Type = Text</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-text" type="text">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-time">Input Type = Time</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-time" type="time">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-url">Input Type = URL</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-url" type="url">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-week">Input Type = Week</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="input-week" type="week">
								</div>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend class="col-lg-10 col-lg-offset-2 col-md-9 col-md-offset-3 col-sm-8 col-sm-offset-4">Checkboxes, Radio Buttons &amp; More</legend>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<span class="form-label">Checkbox and Radio</span>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<div class="checkbox">
										<label for="input-checkbox-1">
											<input id="input-checkbox-1" name="input-checkbox" type="checkbox">Option 1
										</label>
									</div>
									<div class="checkbox">
										<label for="input-checkbox-2">
											<input id="input-checkbox-2" name="input-checkbox" type="checkbox">Option 2
										</label>
									</div>
									<div class="checkbox">
										<label for="input-checkbox-3">
											<input id="input-checkbox-3" name="input-checkbox" type="checkbox">Option 3
										</label>
									</div>
									<hr>
									<div class="radio">
										<label for="input-radio-1">
											<input id="input-radio-1" name="input-radio" type="radio">Option 1
										</label>
									</div>
									<div class="radio">
										<label for="input-radio-2">
											<input id="input-radio-2" name="input-radio" type="radio">Option 2
										</label>
									</div>
									<div class="radio">
										<label for="input-radio-3">
											<input id="input-radio-3" name="input-radio" type="radio">Option 3
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<span class="form-label">Disabled Checkbox and Radio</span>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<div class="checkbox disabled">
										<label for="input-checkbox-1-disabled">
											<input id="input-checkbox-1-disabled" name="input-checkbox-disabled" type="checkbox" disabled>Option 1
										</label>
									</div>
									<div class="checkbox disabled">
										<label for="input-checkbox-2-disabled">
											<input id="input-checkbox-2-disabled" name="input-checkbox-disabled" type="checkbox" disabled>Option 2
										</label>
									</div>
									<div class="checkbox disabled">
										<label for="input-checkbox-3-disabled">
											<input id="input-checkbox-3-disabled" name="input-checkbox-disabled" type="checkbox" disabled>Option 3
										</label>
									</div>
									<hr>
									<div class="radio disabled">
										<label for="input-radio-1-disabled">
											<input id="input-radio-1-disabled" name="input-radio-disabled" type="radio" disabled>Option 1
										</label>
									</div>
									<div class="radio disabled">
										<label for="input-radio-2-disabled">
											<input id="input-radio-2-disabled" name="input-radio-disabled" type="radio" disabled>Option 2
										</label>
									</div>
									<div class="radio disabled">
										<label for="input-radio-3-disabled">
											<input id="input-radio-3-disabled" name="input-radio-disabled" type="radio" disabled>Option 3
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-file">File Select</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input id="input-file" type="file">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-range">Range</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input id="input-range" type="range">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-select">Select</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<select class="form-control" id="input-select">
										<option>1</option>
										<option>2</option>
										<option>3</option>
									</select>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-select-multi">Select (Multiple)</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<select class="form-control" id="input-select-multi" multiple>
										<option selected>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
										<option>7</option>
										<option>8</option>
										<option>9</option>
									</select>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-textarea">Textarea</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<textarea class="form-control" id="input-textarea" rows="5"></textarea>
								</div>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend class="col-lg-10 col-lg-offset-2 col-md-9 col-md-offset-3 col-sm-8 col-sm-offset-4">Inline Form Controls</legend>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-inline">Inline Input Field</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control form-control-inline" id="input-inline" type="text">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="input-select-inline">Inline Select</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<select class="form-control form-control-inline" id="input-select-inline">
										<option>&nbsp;</option>
										<option>1</option>
										<option>2</option>
										<option>3</option>
									</select>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<span class="form-label">Inline Checkbox</span>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<div class="checkbox checkbox-inline">
										<label for="input-checkbox-inline-1">
											<input id="input-checkbox-inline-1" name="input-checkbox-inline" type="checkbox">Option 1
										</label>
									</div>
									<div class="checkbox checkbox-inline">
										<label for="input-checkbox-inline-2">
											<input id="input-checkbox-inline-2" name="input-checkbox-inline" type="checkbox">Option 2
										</label>
									</div>
									<div class="checkbox checkbox-inline">
										<label for="input-checkbox-inline-3">
											<input id="input-checkbox-inline-3" name="input-checkbox-inline" type="checkbox">Option 3
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<span class="form-label">Inline Radio</span>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<div class="radio radio-inline">
										<label for="input-radio-inline-1">
											<input id="input-radio-inline-1" name="input-radio-inline" type="radio">Option 1
										</label>
									</div>
									<div class="radio radio-inline">
										<label for="input-radio-inline-2">
											<input id="input-radio-inline-2" name="input-radio-inline" type="radio">Option 2
										</label>
									</div>
									<div class="radio radio-inline">
										<label for="input-radio-inline-3">
											<input id="input-radio-inline-3" name="input-radio-inline" type="radio">Option 3
										</label>
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend class="col-lg-10 col-lg-offset-2 col-md-9 col-md-offset-3 col-sm-8 col-sm-offset-4">Static Form Controls</legend>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<span class="form-label">Static</span>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<p class="form-control-static">Static Form Control Value</p>
								</div>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend class="col-lg-10 col-lg-offset-2 col-md-9 col-md-offset-3 col-sm-8 col-sm-offset-4">Validation</legend>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label text-sec" for="text-disable">Disabled Input</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="text-disable" placeholder="Disabled Input" type="text" disabled>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label text-sec" for="select-disable">Disabled Select</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<select class="form-control" id="select-disable" disabled>
										<option>Disabled Select</option>
										<option>Option One</option>
										<option>Something Else</option>
										<option>Another Option</option>
									</select>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label text-sec" for="textarea-disable">Disabled Textarea</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<textarea class="form-control" id="textarea-disable" rows="5" placeholder="Disabled Textarea" disabled></textarea>
								</div>
							</div>
						</div>
						<div class="form-group form-group-brand">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="text-brand">Brand Text Input</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="text-brand" placeholder="Brand Text Input" type="text">
									<span class="form-help form-help-msg text-brand">Help message<i class="form-help-icon icon">error</i></span>
								</div>
							</div>
						</div>
						<div class="form-group form-group-brand-accent">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="text-brand-accent">Accent Text Input</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="text-brand-accent" placeholder="Accent Text Input" type="text">
									<span class="form-help form-help-msg text-brand-accent">Help message<i class="form-help-icon icon">error</i></span>
								</div>
							</div>
						</div>
						<div class="form-group form-group-amber">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="text-amber">Amber Text Input</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="text-amber" placeholder="Amber Text Input" type="text">
									<span class="form-help form-help-msg text-amber">Help message<i class="form-help-icon icon">error</i></span>
								</div>
							</div>
						</div>
						<div class="form-group form-group-green">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="text-green">Green Text Input</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="text-green" placeholder="Green Text Input" type="text">
									<span class="form-help form-help-msg text-green">Help message<i class="form-help-icon icon">error</i></span>
								</div>
							</div>
						</div>
						<div class="form-group form-group-red">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-4">
									<label class="form-label" for="text-red">Red Text Input</label>
								</div>
								<div class="col-lg-4 col-md-6 col-sm-8">
									<input class="form-control" id="text-red" placeholder="Red Text Input" type="text">
									<span class="form-help form-help-msg text-red">Help message<i class="form-help-icon icon">error</i></span>
								</div>
							</div>
						</div>
					</fieldset>
					<div class="form-group-btn">
						<div class="row">
							<div class="col-lg-4 col-lg-push-2 col-md-6 col-md-push-3 col-sm-8 col-sm-push-4">
								<button class="btn btn-brand-accent waves-attach waves-button waves-light" type="submit">Submit Button</button><button class="btn waves-attach waves-button" type="button">Cancel Button</button>
								<hr>
								<a href="ui-form-default.html"><span class="icon margin-right-sm">link</span>Default Form Elements</a><br>
								<a href="ui-form-adv.html"><span class="icon margin-right-sm">link</span>Materialised Form Elements</a>
							</div>
						</div>
					</div>
				</form>
</cfoutput>

</material:bodyWrap>