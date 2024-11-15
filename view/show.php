<?php
	include 'menu.php';
	
	$slug   = $params['slug'];
	
	$query  = 
		"SELECT name, slug, title, content, area, max_depth, description FROM lakes
		JOIN lakes_pages
		ON lakes.id = lakes_pages.lake_id
		WHERE slug=:slug";

	$page = $db->query($query, ['slug' => $slug]);
	$page['menu'] = $nav;
	
	
	return $page;


	
?>
