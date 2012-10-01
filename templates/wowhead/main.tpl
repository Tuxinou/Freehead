<html>
<head>
	{include file='head_main.tpl'}
	<style type="text/css">
{literal}
        .top { margin-left: auto; margin-right: auto; max-width: 1240px; min-width: 998px; }
		.menu-buttons a { border-color: black }
		.news { position: relative; text-align: left; width: 415px; height: 191px; margin: 30px auto 0 auto; background: url(templates/wowhead/images/{/literal}{$language}{literal}/mainpage-bg-news.png) no-repeat }
		.news-list { padding: 26px 0 0 26px; margin: 0 }
		.news-list li { line-height: 2em }
		.news-img1 { position: absolute; left: 60px; top: 155px; width: 172px; height: 17px }
		.news-img2 { position: absolute; left: 246px; top: 48px; width: 145px; height: 127px }
		.news-talent { position: absolute; left: 240px; top: 29px; width: 152px; height: 146px }
{/literal}
	</style>
</head>
<body>
	<div id="layers"></div>

    <div class="top">
     <div id="toplinks" class="toplinks">{if $user} {#Greetings#}, <a href="?user={$user.name}">{$user.name}</a>|<a href="?account=signout">{#Sign_out#}</a>{else}<a href="?account=signin">{#Sign_in#}</a> |<a href="?account=signup">{#Sign_up#}</a>        {/if}
| <a href="#" id="toplinks-feedback" class="icon-email">{#Feedback#}</a> <br>
{#Language#}: <a href="/">Русский</a> |  <a href="/en">English</a> |  <a href="/fr">Français</a> |  <a href="/de">Deutsch</a> <br> 
       <script type="text/javascript">g_initHeaderMenus()</script>
     </div>
    </div>


	<div id="home">

		
		<div class="pad"></div>
<br>
		<div class="home-search" id="home-search">
		<form name="searchform" method="get" action="." onsubmit="if(trim(this.elements[0].value) == '') return false">
			<input name="search" type="text" id="kghjklvhj43v6" />
		<a href="javascript:;" onclick="document.searchform.submit();"></a></form>
		</div>
		
		<script type="text/javascript">var _ = ge('kghjklvhj43v6'); LiveSearch.attach(_); _.focus();</script>
<br>
		<h1>{$title}</h1>
		<span id="h43jv6jk346" class="menu-buttons"></span>
		<script type="text/javascript">
			Menu.addButtons(ge('h43jv6jk346'), mn_path);
		</script>

<br>
{if $news}
		<div class="news">
			<div class="news-list text">
				<ul>
{foreach from=$news item=item}
					<li><div>{$item.text}</div></li>
{/foreach}
				</ul>
			</div>
		</div>
{/if}
		

	</div>
	
	<div id="footer">
	</div>
	<noscript><div id="noscript-bg"></div><div id="noscript-text"><b>{#js_err#}</div></noscript>
	<script type="text/javascript">DomContentLoaded.now()</script>
</body>
</html>