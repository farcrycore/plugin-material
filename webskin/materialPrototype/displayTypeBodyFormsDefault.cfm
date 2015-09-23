<cfimport taglib="/farcry/core/tags/webskin/" prefix="skin" />
<cfimport taglib="/farcry/core/tags/formtools/" prefix="ft" />
<cfimport taglib="/farcry/core/tags/core/" prefix="core" />
<cfimport taglib="/farcry/plugins/material/tags/" prefix="material" />




<material:bodyWrap heading="Google Material - Forms Default">

<cfoutput>
<form class="form">
					<div class="form-group">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<p>A form element can be reverted back to a more traditional look by adding the <code>.form-control-default</code> class.</p>
								<label for="input-color">Input Type = Color</label>
								<input class="form-control form-control-default" id="input-color" type="color">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-date">Input Type = Date (<code>disabled</code>)</label>
								<input class="form-control form-control-default" id="input-date" type="date" disabled>
							</div>
						</div>
					</div>
					<div class="form-group form-group-brand">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-datetime">Input Type = Datetime (<code>.form-group-brand</code>)</label>
								<input class="form-control form-control-default" id="input-datetime" type="datetime">
							</div>
						</div>
					</div>
					<div class="form-group form-group-brand-accent">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-datetime-local">Input Type = Datetime-local (<code>.form-group-brand-accent</code>)</label>
								<input class="form-control form-control-default" id="input-datetime-local" type="datetime-local">
							</div>
						</div>
					</div>
					<div class="form-group form-group-amber">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-email">Input Type = Email (<code>.form-group-amber</code>)</label>
								<input class="form-control form-control-default" id="input-email" type="email">
							</div>
						</div>
					</div>
					<div class="form-group form-group-green">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-month">Input Type = Month (<code>.form-group-green</code>)</label>
								<input class="form-control form-control-default" id="input-month" type="month">
							</div>
						</div>
					</div>
					<div class="form-group form-group-red">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-number">Input Type = Number (<code>.form-group-red</code>)</label>
								<input class="form-control form-control-default" id="input-number" type="number">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-password">Input Type = Password</label>
								<input class="form-control form-control-default" id="input-password" type="password">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-search">Input Type = Search</label>
								<input class="form-control form-control-default" id="input-search" type="search">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-tel">Input Type = Tel</label>
								<input class="form-control form-control-default" id="input-tel" type="tel">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-text">Input Type = Text</label>
								<input class="form-control form-control-default" id="input-text" type="text">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-time">Input Type = Time</label>
								<input class="form-control form-control-default" id="input-time" type="time">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-url">Input Type = URL</label>
								<input class="form-control form-control-default" id="input-url" type="url">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-week">Input Type = Week</label>
								<input class="form-control form-control-default" id="input-week" type="week">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-select">Select</label>
								<select class="form-control form-control-default" id="input-select">
									<option>1</option>
									<option>2</option>
									<option>3</option>
								</select>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-select-multi">Select (Multiple)</label>
								<select class="form-control form-control-default" id="input-select-multi" multiple>
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
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-textarea">Textarea</label>
								<textarea class="form-control form-control-default" id="input-textarea" rows="5"></textarea>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<label for="input-datepicker">Datepicker</label>
								<input class="datepicker-adv datepicker-adv-default form-control form-control-default" id="input-datepicker" type="text">
							</div>
						</div>
					</div>
					<div class="form-group-btn">
						<div class="row">
							<div class="col-lg-6 col-md-8 col-sm-10">
								<button class="btn btn-brand-accent waves-attach waves-button waves-light" type="submit">Submit Button</button><button class="btn waves-attach waves-button" type="button">Cancel Button</button>
							</div>
						</div>
					</div>
				</form>

</cfoutput>

</material:bodyWrap>