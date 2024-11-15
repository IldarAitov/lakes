<?php
$cont = [1 =>'Австралия', 'Азия', 'Африка', 'Европа', 'Северная Америка', 'Южная Америка'];

$query = 'SELECT name, continent_id, slug FROM lakes
JOIN lakes_pages
ON lake_id = lakes.id';

$nav = '<nav role="navigation"><ul>';

$res = $db->queryAll($query);


foreach($cont as $id=>$cont_name){
    $nav .= '<li>'.$cont_name.'<ul class="dropdown">';

    foreach($res as $lake){
        if($lake['continent_id'] == $id){
            $nav .= '<li><a href="/'.$lake['slug'].'">'.$lake['name'].'</a></li>';
        }

    }
    $nav .= '</ul></li>';

}
$nav .= '</ul></nav>';

return $nav;
?>