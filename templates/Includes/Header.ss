<div class="navbar navbar-fixed-top" role="banner">
    <div class="navbar-inner">
        <div class="container">
            <button class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="$BaseHref">$SiteConfig.Title</a>
            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <% if $CurrentMember %>
                        <li class="dropdown">
                            <a href="#" id="header-avatar" class="dropdown-toggle" data-toggle="dropdown">
                                $CurrentMember.FirstName
                                <img src="//image.eveonline.com/character/{$CurrentMember.CharacterID}_32.jpg">
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="{$BaseHref}profile" title="Profile">Profile</a></li>
                                <li><a href="{$BaseHref}Security/Logout" title="Logout">Logout</a></li>
                            </ul>
                        </li>

                    <% else %>
                        <li>
                            $BootstrapMemberLoginForm
                        </li>
                    <% end_if %>
                </ul>
          		<% include Navigation %>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>
