	<title>{$app_name} : {php}

function array_random($arr, $num = 1) {
    shuffle($arr);
    
    $r = array();
    for ($i = 0; $i < $num; $i++) {
        $r[] = $arr[$i];
    }
    return $num == 1 ? $r[0] : $r;
}


if($AoWoWconf['locale'] = 8)
{ include('configs/phrases/ruru.php'); }
elseif ($AoWoWconf['locale'] = 0)
{ include('configs/phrases/enen.php'); }

print_r(array_random($titlephrases));
 {/php}</title>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="chrome=1">
	<meta name="copyright" content="FreedomHead 2012 <http://freedomwow.ru>">
	<meta name="generator" content="FreedomHead Public Version 1.2">
	<link rel="SHORTCUT ICON" href="templates/wowhead/images/favicon.ico">

	<link rel="stylesheet" type="text/css" href="templates/wowhead/css/global.css?{$AOWOW_REVISION}" />
	<link rel="stylesheet" type="text/css" href="templates/wowhead/css/locale_{$language}.css?{$AOWOW_REVISION}" />
	<!--[if IE]><link rel="stylesheet" type="text/css" href="templates/wowhead/css/global_ie.css?{$AOWOW_REVISION}" /><![endif]-->
	<!--[if lte IE 6]><link rel="stylesheet" type="text/css" href="templates/wowhead/css/global_ie6.css?{$AOWOW_REVISION}" /><![endif]-->
	<!--[if lte IE 7]><link rel="stylesheet" type="text/css" href="templates/wowhead/css/global_ie67.css?{$AOWOW_REVISION}" /><![endif]-->
{if $page.Book}
	<link rel="stylesheet" type="text/css" href="templates/wowhead/css/Book.css?{$AOWOW_REVISION}">
{/if}
{if $page.Mapper}
	<link href="templates/wowhead/css/Mapper.css?{$AOWOW_REVISION}" type="text/css" rel="stylesheet">
	<!--[if lte IE 6]><link href="templates/wowhead/css/Mapper_ie6.css?{$AOWOW_REVISION}" type="text/css" rel=stylesheet><![endif]-->
{/if}
{if $page.Talent}
		<link rel="stylesheet" type="text/css" href="templates/wowhead/css/talentcalc.css?{$AOWOW_REVISION}" />
		<link rel="stylesheet" type="text/css" href="templates/wowhead/css/talent.css?{$AOWOW_REVISION}" />
		<!--[if lte IE 6]><link rel="stylesheet" type="text/css" href="templates/wowhead/css/TalentCalc_ie6.css?{$AOWOW_REVISION}" /><![endif]-->
		<!--[if lte IE 7]><link rel="stylesheet" type="text/css" href="templates/wowhead/css/TalentCalc_ie67.css?{$AOWOW_REVISION}" /><![endif]-->
{/if}
    <script type="text/javascript">
        var DOMAIN = "http://{$smarty.server.HTTP_HOST}"; 
    </script>

	<script src="templates/wowhead/js/locale_{$language}.js?{$AOWOW_REVISION}" type="text/javascript"></script>
	<script src="templates/wowhead/js/swfobject.js?{$AOWOW_REVISION}" type="text/javascript"></script>
	<script src="templates/wowhead/js/global.js?{$AOWOW_REVISION}" type="text/javascript"></script>
	<script src="templates/wowhead/js/Markup.js?{$AOWOW_REVISION}" type="text/javascript"></script>
{if $page.Mapper}
	<script src="templates/wowhead/js/Mapper.js?{$AOWOW_REVISION}" type="text/javascript"></script>
	<style type="text/css">{literal}.zone-picker { margin-left: 4px }{/literal}</style>
{/if}
{if $page.Book}
	<script src="templates/wowhead/js/Book.js?{$AOWOW_REVISION}" type="text/javascript"></script>
{/if}
{if $page.Talent}
	<script src="?data=glyphs" type="text/javascript"></script>
	<script src="templates/wowhead/js/TalentCalc_{$language}.js?{$AOWOW_REVISION}" type="text/javascript"></script>
	<script src="templates/wowhead/js/TalentCalc.js?{$AOWOW_REVISION}" type="text/javascript"></script>
	<script src="templates/wowhead/js/talent.js?{$AOWOW_REVISION}" type="text/javascript"></script>
{/if}
{if $page.maps}
	<script src="templates/wowhead/js/maps.js?{$AOWOW_REVISION}" type="text/javascript"></script>
{/if}

	<script type="text/javascript">
		var g_serverTime = new Date('{$smarty.now|date_format:"%Y/%m/%d %H:%M:%S"}');
		g_locale = {ldelim} id: {$locale}, name: '{$language}' {rdelim};
{if $user}g_user = {ldelim} id: {$user.id}, name: '{$user.name|escape:"quotes"}', roles: {$user.roles}, permissions: {$user.perms} {rdelim};{/if}
	</script>