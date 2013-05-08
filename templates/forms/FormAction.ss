<% if UseButtonTag %>
<div class="control-group">
	<button class="btn" $AttributesHTML>
		<% if ButtonContent %>$ButtonContent<% else %>$Title<% end_if %>
	</button>
</div>
<% else %>
<div class="control-group">
	<input class="btn" $AttributesHTML />
</div>
<% end_if %>