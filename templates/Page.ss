<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	$MetaTags(false)
    <script>
    themedir = '{$ThemeDir}';
    </script>
    <!-- script src="{$ThemeDir}/javascript/libs/modernizr-2.6.2.min.js"></script //-->
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="favicon.png">
</head>
<body>


<% include Header %>

<!--[if lt IE 8]>
<div class="container chromeframe">
    <div class="row">
        <div class="span12">
    		<div class="alert alert-error">
    		  You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.
    		</div>
        </div>
    </div>
</div>
<![endif]-->

<div class="container">
    $Layout
</div>



<div id="back-to-top" data-spy="affix" data-offset-top="100"><a href="#" class="btn"><i class="icon-chevron-up"><span class="hide">Back to Top</span></i></a></div>
</body>
</html>
