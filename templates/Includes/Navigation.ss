        <ul class="nav">
        <% loop $Menu(1) %>
            <li<% if LinkOrCurrent = current %> class="active"<% end_if %>><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
        <% end_loop %>

        <% if CurrentMember %>
            <li><a href="{$BaseHref}profile" title="Profile">Profile</a></li>
            <li><a href="{$BaseHref}Security/Logout" title="Logout">Logout</a></li>
        <% else %>
            <li><a href="{$BaseHref}profile" title="Register">Register</a></li>
            <li><a href="{$BaseHref}profile/api-keys" title="Login">Login</a></li>
        <% end_if %>

        </ul>
