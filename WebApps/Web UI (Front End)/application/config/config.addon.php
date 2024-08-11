<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// general configuration
$app_dir = str_replace(basename($_SERVER['SCRIPT_NAME']), '', $_SERVER['SCRIPT_NAME']);
$path =  realpath($_SERVER['DOCUMENT_ROOT']) . $app_dir;
$media = 'public/media/';
$media_path = $path . $media;

// Application Title
$config['website_title']		= "Mahadasha";					// Title websitenya
$config['short_app_title']		= "Mahadasha";
$config['footer_title']			= "2020 &copy; Mahadasha Group"; 		// Title untuk Footer
$config['website_login_title']	= "Mahadahsa Login"; 					// Title websitenya login
// $config['footer_login_title']	= "&copy; 2020. Mahadya Group.";		 			// Title untuk Footer Login
$config['footer_login_title']	= "&copy; 2020. Mahadya Group.";

// Application Logo
$config['wingstop']			= $app_dir.$media.'logo/Wingstop.png';
$config['mahadya']			= $app_dir.$media.'logo/mahadya.png';
$config['mahadyawhite']			= $app_dir.$media.'logo/mahadyawhite.png';
$config['cjwhite']			= $app_dir.$media.'logo/Logocjwhite.png';
$config['cjblack']				= $app_dir.$media.'logo/logocjblack.png';
$config['wswhite']				= $app_dir.$media.'logo/logowswhitemain.png';
$config['wscjwhite']				= $app_dir.$media.'logo/logocjdanws.png';
$config['cjheadermail']				= $app_dir.$media.'logo/CJ-HeaderEmail.jpg';
$config['wsheadermail']				= $app_dir.$media.'logo/WS-HeaderEmail.jpg';
// Application & Media Path
$config['app_path']				= $path; 														// Alamat path dari aplikasi, misal: c:\xampp\htdoc\aplikasi, digunakan utk Upload
$config['media_path']			= $media_path; 													// Alamat path untuk media, misal c:\xampp\htdoc\aplikasi\media\, digunakan utk Upload

//Themes & Media URL
$config['media']				= $app_dir.$media; 												// Alamat URL media, misal http://localhost/aplikasi
$config['theme']				= $app_dir.'public/themes'; 									// Alamat URL untuk themes, misal http://localhost/aplikasi/media

// EMAIL
$config['email']				= 'info@ali.com';
$config['emailsms']				= 'sms@ali.com';

$config['email_alert']			= 'ali@gmail.com';
$config['sms_alert']			= '';



// PAGINATION
$config['page']['full_tag_open']		= '<div><ul class="pagination">';
$config['page']['full_tag_close']		= '</ul></div>';
$config['page']['first_tag_open']		= '<li>';
$config['page']['first_tag_close']		= '</li>';
$config['page']['last_tag_open']		= '<li>';
$config['page']['last_tag_close']		= '</li>';
$config['page']['cur_tag_open']			= '<li class="active"><a href="#">';
$config['page']['cur_tag_close']		= '</a></li>';
$config['page']['next_tag_open']		= '<li>';
$config['page']['next_tag_close']		= '</li>';
$config['page']['next_link']			= 'Next';
$config['page']['prev_tag_open']		= '<li>';
$config['page']['prev_tag_close']		= '</li>';
$config['page']['prev_link']			= 'Prev';
$config['page']['num_tag_open']			= '<li>';
$config['page']['num_tag_close']		= '</li>';
$config['page']['use_page_numbers']		= TRUE;
