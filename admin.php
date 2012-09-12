<?php

//  Заготовка Панели Администратора
$smarty->config_load($conf_file, 'admin');


// --Передаем данные шаблонизатору--
// Количество MySQL запросов
$smarty->assign('mysql', $DB->getStatistics());
// Запускаем шаблонизатор
$smarty->display('admin.tpl');
?>