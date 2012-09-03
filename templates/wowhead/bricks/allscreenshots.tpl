{strip}
var lv_screenshots = [
{foreach name=foo from=$screenshots key=number item=screenshot}
	{ldelim}
		number:{$screenshot.number},
		user:'{$screenshot.user}',
		date:'{$screenshot.date|date_format:"%Y/%m/%d %H:%M:%S"}',
		body:'{$screenshot.body}',
		width:{$screenshot.width},
		height:{$screenshot.height},
		type:{$screenshot.type},
		typeId:{$screenshot.typeId},
		id:{$screenshot.id}
	{rdelim}
	{if $smarty.foreach.foo.last}{else},{/if}
{/foreach}
];
{/strip}