<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


if (!function_exists('theme')){
    function theme(){
		$CI =& get_instance();
		
		return $CI->config->item('theme');		
	}	
}

if (!function_exists('media')){
    function media(){
		$CI =& get_instance();
		
		return $CI->config->item('media');		
	}	
}

if (!function_exists('app_path')){
    function app_path(){
		$CI =& get_instance();
		
		return $CI->config->item('app_path');		
	}	
}

if (!function_exists('media_path')){
    function media_path(){
		$CI =& get_instance();
		
		return $CI->config->item('media_path');		
	}	
}

