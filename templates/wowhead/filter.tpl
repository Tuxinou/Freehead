<div id="fi">
    <div class="block-bg">
        <div id="ad-content">
        </div>
    </div>
        <script type="text/javascript">//<![CDATA[ 
    {literal}
    Menu.modifyUrl(
        Menu.findItem(mn_database, [0]), { filter: '+=si=-1' }, { onAppendCollision: fi_mergeFilterParams, onAppendEmpty: fi_setFilterParams, menuUrl: Menu.getItemUrl(Menu.findItem(mn_database, [0])) });
{/literal}
//]]></script>



<form action="" method="get" name="fi" onsubmit="return fi_submit(this)" onreset="return fi_reset(this)">
<input type="hidden" name="items" value="filter" />
<div class="rightpanel">
<div style="float: left">Качество: </div><small><a href="javascript:;" onclick="document.forms['fi'].elements['qu[]'].selectedIndex = -1; return false" onmousedown="return false">очистить</a></small>
<div class="clear"></div>
<select name="qu[]" size="8" multiple="multiple" class="rightselect" style="background-color: #181818">
<option value="0" class="q0">Низкий</option>
<option value="1" class="q1">Обычный</option>
<option value="2" class="q2">Необычный</option>
<option value="3" class="q3">Редкий</option>
<option value="4" class="q4">Эпический</option>
<option value="5" class="q5">Легендарный</option>
<option value="6" class="q6">Артифакт</option>
<option value="7" class="q7">Фамильная черта</option>
</select>
</div>

<div class="rightpanel2">
<div style="float: left">Слот: </div><small><a href="javascript:;" onclick="document.forms['fi'].elements['sl[]'].selectedIndex = -1; return false" onmousedown="return false">clear</a></small>
<div class="clear"></div>
<select name="sl[]" size="7" multiple="multiple" class="rightselect">
<option value="16">Спина</option>
<option value="18">Сумка</option>
<option value="5">Грудь</option>
<option value="8">Ступни</option>
<option value="11">Палец</option>
<option value="10">Кисти рук</option>
<option value="1">Голова</option>
<option value="23">Левая рука</option>
<option value="7">Ноги</option>
<option value="21">Правая рука</option>
<option value="2">Шея</option>
<option value="22">Левая рука</option>
<option value="13">Одноручное</option>
<option value="24">Боеприпасы</option>
<option value="15">Дальний бой</option>
<option value="28">Реликвия</option>
<option value="14">Щит</option>
<option value="4">Рубашка</option>
<option value="3">Плечи</option>
<option value="19">Гербовая накидка</option>
<option value="25">Метательное</option>
<option value="12">Аксессуар</option>
<option value="17">Двуручное</option>
<option value="6">Пояс</option>
<option value="9">Запястья</option>
</select>
</div>

<table>
<tr>
<td>Название: </td>
<td colspan="2">&nbsp;<input type="text" name="na" size="30" /></td>
<td></td>
</tr><tr>
<td class="padded">Уровень: </td><td class="padded">&nbsp;<input type="text" name="minle" maxlength="3" class="smalltextbox2" /> - <input type="text" name="maxle" maxlength="3" class="smalltextbox2" /></td>
<td class="padded"><table><tr><td>Требуется уровень: </td><td>&nbsp;<input type="text" name="minrl" maxlength="2" class="smalltextbox" /> - <input type="text" name="maxrl" maxlength="2" class="smalltextbox" /></td></tr></table></td><td></td>
</tr><tr><td class="padded">Используется (кем): </td><td class="padded">&nbsp;<select name="si" style="margin-right: 0.5em">
<option></option>
<option value="1">Альянс</option>
<option value="-1">Альянс только</option>
<option value="2">Орда</option>
<option value="-2">Орда только</option>
<option value="3">Обе</option>
</select>
</td>
<td class="padded"><select name="ub">
<option></option>
<option value="6">Рыцарь Смерти</option>
<option value="11">Друид</option>
<option value="3">Охотник</option>
<option value="8">Маг</option>
<option value="2">Паладин</option>
<option value="5">Жрец</option>
<option value="4">Разбойник</option>
<option value="7">Шаман</option>
<option value="9">Чернокнижник</option>
<option value="1">Воин</option>
</select></td></tr><tr>
</table>



</div>



<div class="clear"></div><div class="padded">Группировать:
    <input type="radio" name="gb" value="" id="gb-none" checked="checked" /><label for="gb-none">Нет</label>
    <input type="radio" name="gb" value="1" id="gb-slot" /><label for="gb-slot">Слот</label>
    <input type="radio" name="gb" value="2" id="gb-level" /><label for="gb-level">Уровень</label>
    <input type="radio" name="gb" value="3" id="gb-source" /><label for="gb-source">Источник</label>
</div><div class="clear"></div><div class="beta"><input type="checkbox" name="eb" value="1" >Исключить результаты из Туманы Пандарии</div><div class="padded"></div><input type="submit" value="Применить фильтр" />

<input type="hidden" name="upg" />

<div class="pad"></div>

</form>
</div>