<% if IncludeFormTag %>
<form class="form-horizontal" $AttributesHTML>
<% end_if %>
	<% if Message %>
	<div id="{$FormName}_message" class="alert message $MessageType">
		$Message
	</div>
	<% else %>
	<div id="{$FormName}_message" class="alert message $MessageType" style="display: none"></div>
	<% end_if %>

	<fieldset>
		<% if Legend %><legend>$Legend</legend><% end_if %>
		<% loop Fields %>
			$FieldHolder
		<% end_loop %>
	</fieldset>

	<% if Actions %>
	<div class="form-actions">
		<% loop Actions %>
			$Field
		<% end_loop %>

	</div>
	<% end_if %>
<% if IncludeFormTag %>
</form>
<% end_if %>
