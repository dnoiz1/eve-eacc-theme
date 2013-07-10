<% if Message %>
	<% if MessageType == "good" %>
		<div id="{$FormName}_error" class="alert alert-success">$Message</div>
	<% else_if MessageType == "info" %>
		<div id="{$FormName}_error" class="alert alert-info">$Message</div>	
	<% else_if MessageType == "bad" %>
		<div id="{$FormName}_error" class="alert alert-error">$Message</div>	
	<% end_if %>
<% end_if %>

<% if IncludeFormTag %>
<form class="form-signin" $AttributesHTML>
<% end_if %>
    <% if $CurrentUser %>
        <h2 class="form-signin-heading text-center">Already Signed In</h2>

        <p class="text-center">
            <img src="//image.eveonline.com/character/{$CurrentUser.CharacterID}_256.jpg">
        </p>
        <div class="input-prepend input-block-level">
            <span class="add-on"><i class="icon-envelope"></i></span>
            <input type="text" class="input-block-level" readonly value="{$CurrentMember.Email}" />
       </div>

    <% else %>
        <h2 class="form-signin-heading">Sign in</h2>
	
    	<fieldset>
            <div class="input-prepend input-block-level">
                <span class="add-on"><i class="icon-envelope"></i></span>
                $Fields.dataFieldByName(Email)
            </div>
            <div class="input-prepend input-block-level">
                <span class="add-on"><i class="icon-lock"></i></span>
                $Fields.dataFieldByName(Password)
            </div>
            <label class="checkbox">
                $Fields.dataFieldByName(Remember)
                Remember me
            </label>

            $Fields.dataFieldByName(BackURL)
            $Fields.dataFieldByName(AuthenticationMethod)
            $Fields.dataFieldByName(SecurityID)

    	</fieldset>

    	<% if Actions %>
    	<div class="form-inline text-center">
    		<% loop Actions %>
    			$Field
    		<% end_loop %>
    	</div>
    	<% end_if %>
    <% end_if %>

<% if IncludeFormTag %>
</form>
<% end_if %>

<% if $CurrentUser %><% else %>
    <div class="text-center">
        <a href="/Security/lostpassword">Reset Password</a>
    </div>
<% end_if %>
