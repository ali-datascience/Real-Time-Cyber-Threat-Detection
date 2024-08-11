<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class main extends CI_Controller {

    public $status;
   
    function __construct(){
        parent::__construct();
        $this->load->model('coreapi_model');
        $this->load->model('mailsender_model');
        $this->load->library(array('form_validation','template'));
		$this->load->helper(array('text','url', 'html', 'pdf'));
		$this->load->library('encrypt');
    }

	public function index()
	{
        $user = $this->session->userdata('user');
        if(!empty($user)){
            $datapost =  array(
                "user" => 6120
            );
            $result = $this->coreapi_model->apisystem("POST",$this->config->item("APIURL")."/coreapi/api/getlogfraud", json_encode($datapost));
            $jsonresponse = json_decode($result, true);
            $data['data']=$jsonresponse['result'];
            $this->load->view('index',$data); 
        }else{
            redirect('main/login');
        }
    }

    public function login(){
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        if(!empty($username)&&!empty($password)){
            $user_agent = $_SERVER['HTTP_USER_AGENT'];
            $browser_name = "Unknown";

            if (strpos($user_agent, 'MSIE') !== false || strpos($user_agent, 'Trident/') !== false) {
                $browser_name = 'Internet Explorer';
            } elseif (strpos($user_agent, 'Edge') !== false) {
                $browser_name = 'Microsoft Edge';
            } elseif (strpos($user_agent, 'Firefox') !== false) {
                $browser_name = 'Mozilla Firefox';
            } elseif (strpos($user_agent, 'Chrome') !== false) {
                $browser_name = 'Google Chrome';
            } elseif (strpos($user_agent, 'Safari') !== false) {
                $browser_name = 'Apple Safari';
            } elseif (strpos($user_agent, 'Opera') !== false || strpos($user_agent, 'OPR') !== false) {
                $browser_name = 'Opera';
            }
            $datapost =  array(
                "user" => $username,
                "password"=>$password,
                'ip'=>$ip,
                'browser'=>$browser_name
            );
            $url=$this->config->item("APIURL")."/coreapi/api/login";
            $craw =$this->coreapi_model->apisystem("POST", $url, json_encode($datapost));
            $jsonres = json_decode($craw, true);
            if(!empty($jsonres['result'])){
                $cekcust = $jsonres['result'];                                   
                if($cekcust!='Anda terdeteksi melakukan serangan cyber'&&$cekcust!='user atau password salah'){
                    //login
                    $data = array(
                        'user' => $username
                    );
                    $this->session->set_userdata($data);
                    redirect('main');
                }else{
                    $data['error'] =$cekcust;
                    $this->load->view('login',$data);
                }
            }else{
                $this->session->sess_destroy();
                $data['error'] ='';
                $this->load->view('login',$data);
            }
        }else{
            $this->session->sess_destroy();
            $data['error'] ='';
            $this->load->view('login',$data);
        }
    }

}
