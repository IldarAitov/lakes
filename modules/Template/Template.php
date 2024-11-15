<?php

	class Template
	{

		private $values = array();
		private $html;
		
		//функция устанавливает переменные
		public function set_value($key, $val){
			$key = '{{ '.$key.' }}';
			$this->values[$key] = $val;
		}
		
		//функция принимает переменные в виде массива
		public function set_values_arr($arr){
			if(!empty($arr)){
				foreach($arr as $key => $val){
					$this->set_value($key, $val);
				}
			}
		}


		//функция загрузки шаблона
		public function set_html($html_name){
			if(empty($html_name) || !file_exists($html_name)){
				return false;
			} else {
				$this->html = file_get_contents($html_name);
				//$this->html = join('', file($tpl_name));
			};
		}

		
		//функция вывода шаблона
		public function get_html(){
			return $this->html;
		}
		
		//заменяет переменные в шаблоне
		public function html_parse(){

			if(!empty($this->values)){
				foreach($this->values as $find => $replace){
					$this->html = str_replace($find, $replace, $this->html);
				};
			}

		}
	}
?>