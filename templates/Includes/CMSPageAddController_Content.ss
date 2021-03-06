<% with AddForm %>
	<form $FormAttributes data-layout-type="border">

		<div class="cms-content-header north">
			<div>
				<h2><% _t('CMSAddPageController.Title','Add pages') %></h2>
			</div>
		</div>

		<div class="cms-content-fields center cms-panel-content cms-panel-padded">

			<% if Message %>
			<p id="{$FormName}_error" class="message $MessageType">$Message</p>
			<% else %>
			<p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
			<% end_if %>

			<fieldset>
				<% if Legend %><legend>$Legend</legend><% end_if %> 
				<% control Fields %>
					$FieldHolder
				<% end_control %>
			</fieldset>
		</div>

		<div class="cms-content-actions south">
			<% if Actions %>
			<div class="Actions">
				<% control Actions %>
					$Field
				<% end_control %>
			</div>
			<% end_if %>
		</div>

	</form>
<% end_with %>
