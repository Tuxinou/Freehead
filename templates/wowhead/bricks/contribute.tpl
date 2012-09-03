<div class="text">
<h2>{#Contributel#}</h2>
</div>
<div id="tabs_contribute-generic" style="width: 50%"></div>
<div class="text" style="margin-right: 310px">
	<div class="tabbed-contents" style="clear: none">
		<div id="tab-add-your-comment" style="display: none">
			<form name="addcomment" action="?comment=add&amp;type={$page.type}&amp;typeid={$page.typeid}" method="post" onsubmit="return co_validateForm(this)">
				<div id="replybox-generic" style="display: none">
					{#Replying_to_comment_by#} <span></span>. &nbsp;<a href="javascript:;" onclick="co_cancelReply()">{#Cancel#}</a>
					<div class="pad"></div>
				</div>
				<div id="funcbox-generic"></div>
				<script type="text/javascript">Listview.funcBox.coEditAppend(ge('funcbox-generic'), {ldelim}body: ''{rdelim}, 1)</script>
				<div class="pad"></div>
				<input type="submit" value="{#Submit#}"></input>
				<input type="hidden" name="replyto" value=""></input>
			</form>
		</div>
<div id="tab-submit-a-screenshot" style="display: none">

{#Screenshots_help#}

<ul>
<li><div>{#Screenshots_prefered#}</div></li>
<li><div>{#Screenshots_quality#}</div></li>
</ul>

<form action="?screenshot=add&amp;type={$page.type}&amp;typeid={$page.typeid}" method="post" enctype="multipart/form-data" onsubmit="return ss_validateForm(this)">

<input type="file" name="screenshotfile" /><br />
<small>{#Screenshots_info#}</small>

<div class="pad"></div>
<input type="submit"  />

<div class="pad3"></div>
<small class="q0">{#Screenshots_mod#}</small>

</form>
		</div>

<div id="tab-submit-your-data" style="display: none">

  <p><b>Freedom DB Client</b> (клиент Freedom DB) — небольшое приложение, с помощью которого вы можете обновить данные на сайте, а так же воспользоваться дополнительными возможностями! &nbsp;</p>
  <div class="pad2"></div>
  <p>Клиент Freedom DB делает две вещи: &nbsp;</p>

  <ol>
  <li><div>Он устанавливает и обновляет аддон <b>Freedom Looter</b>, который собирает данные, пока вы играете! &nbsp;</div></li>
  <li><div>Он загружает <b>собранные данные</b> на FreedomWoW, обновляя базу данных! &nbsp;</div></li>
  </ol>

  <p>Вы также можете использовать Freedom DB Client, чтобы просматривать выученные рецепты, выполненные задания, собранные ездовые животные и спутники и полученные звания!&nbsp;</p>
  <div class="pad2"></div>
  <p>Чего же вы ждете? <a href="/client">Скачайте клиент Freedom DB </a>.&nbsp;</p>

</div>

	</div>
</div>
<script type="text/javascript">
	var tabsContribute = new Tabs({ldelim}parent: ge('tabs_contribute-generic'){rdelim});
	tabsContribute.add(LANG.tab_addyourcomment, {ldelim}id: 'add-your-comment'{rdelim});
	tabsContribute.add(LANG.tab_submitascreenshot, {ldelim}id: 'submit-a-screenshot'{rdelim});
	tabsContribute.add(LANG.tab_submityourdata, {ldelim}id: 'submit-your-data'{rdelim});
	tabsContribute.flush();
</script>
<div class="clear"></div>
