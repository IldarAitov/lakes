<?php

	//подключаем класс для работы с шаблоном
	include 'modules/Template/Template.php';

	//подключаем БД
	$db = require 'view/connect.php';

	$url = $_SERVER['REQUEST_URI']; //ури
	$u = urldecode($_SERVER["REQUEST_URI"]);

	//создаем экземпляр класса для работы с шаблоном
	$layout = new Template;

	//в перменную $page передается ассоц. массив 
	if (preg_match('#^/(?<slug>[a-z0-9_-]+)$#', $url, $params)) {

		$page = include 'view/show.php';
		
		if(empty($page['slug'])){
			$tpl = 'templates/404.html';
		} else {
			$tpl = 'templates/show.html';
		}
	
	} else if($url == '/' and $u == '/') {

		$page = include 'view/main.php';
		$tpl = 'templates/layout.html';

	} else {

		$page = [];
		$tpl = 'templates/404.html';

	}
	
	//передаем шаблон
	$layout->set_html($tpl);

	//усанавливаем переменные
	$layout->set_values_arr($page);

	//вставляем пепременные в шаблон
	$layout->html_parse();

	//выводим шаблон
	echo $layout->get_html();



?>
