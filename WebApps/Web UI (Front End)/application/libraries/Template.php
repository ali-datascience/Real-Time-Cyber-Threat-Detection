<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Template
{

   function __construct()
   {
      // $this->ci =&get_instance();
   }

   function admin($template, $data='')
   {

      $data_content['content'] = $this->ci->load->view($template, $data, TRUE);
      $data_content['nav']  = $this->ci->load->view('admin/nav', $data, TRUE);

      $this->ci->load->view('admin/dashboard', $data_content);

   }

   function olshop($template, $data='')
   {    
      
      $data_content['content'] = $this->ci->load->view($template, $data, TRUE);
      $this->ci->load->view('index', $data_content);

   }
}
