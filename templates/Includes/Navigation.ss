        <ul class="nav">
        <% loop $Menu(1) %>
            <li<% if LinkOrCurrent = current %> class="active"<% end_if %>><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
        <% end_loop %>

        <% if CurrentMember %>
            <% if $NextOpTimer %>
                <li>
                    <a href="{$BaseHref}op-timers">
                        <strong>Next Op:</strong> <span class="countdown">$NextOpTimer.TimerEnds.Format(U)</span>
                    </a>
                </li>
            <% end_if %>
        <% else %>
            <li><a href="{$BaseHref}profile" title="Register">Register</a></li>
            <li><a href="{$BaseHref}profile/api-keys" title="Login">Login</a></li>
        <% end_if %>

        </ul>
