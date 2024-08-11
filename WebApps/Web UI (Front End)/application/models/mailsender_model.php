<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class mailsender_model extends CI_Model {

   public function __construct()
	{
		parent::__construct();
    }
    public function sendemail($to,$bcc,$subject,$message)
    {
        $config = [
          'mailtype'  => 'html',
          'charset'   => 'utf-8',
          'protocol'  => 'smtp',
          'smtp_host' => 'order.wingstop.co.id',
          'smtp_user' => 'noreply@order.wingstop.co.id',
          'smtp_pass'   => 'MahadyaSU@123',
          'smtp_crypto' => 'ssl',
          'smtp_port'   => 465,
          'crlf'    => "\r\n",
          'newline' => "\r\n",
          '_smtp_auth' => TRUE,
          'validate' => FALSE,
          'validation' => TRUE,
            // 'bcc_batch_mode' => TRUE,
            // 'bcc_batch_size' => '200'
        ];

        // Load library email dan konfigurasinya
        $this->load->library('email', $config);

        //Filter Email
        $email = str_replace('tenable.com','',$to);

        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            // Email dan nama pengirim
            $this->email->from('noreply@wingstop.co.id', 'wingstop.co.id');
            $this->email->to($email);
            $this->email->bcc($bcc);
            $this->email->subject($subject);
            $this->email->message($message);
            $this->email->send();
          } else {

          }


    }
    public function sendemailattendance($to,$bcc,$subject,$message)
   {
     $config = [
         'mailtype'  => 'html',
         'charset'   => 'utf-8',
         'protocol'  => 'smtp',
         'smtp_host' => 'mail.mailcarlsjr.id',
         'smtp_user' => 'order@mailcarlsjr.id',  // Email gmail
         'smtp_pass'  => 'J@karta#2022',
         'smtp_crypto' => 'ssl',
         'smtp_port'   => 465,
         'crlf'    => "\r\n",
         'newline' => "\r\n",
         '_smtp_auth' => TRUE,
         'validate' => FALSE,
         'validation' => TRUE,
     ];

    // $config = [
    //         'mailtype'  => 'html',
    //         'charset'   => 'utf-8',
    //         'protocol'  => 'smtp',
    //         'smtp_host' => 'mail.wingstop.co.id',
    //         'smtp_user' => 'noreply@wingstop.co.id',
    //         'smtp_pass'   => 'J@karta#2022',
    //         'smtp_crypto' => 'tls',
    //         'smtp_port'   => 587,
    //         'crlf'    => "\r\n",
    //         'newline' => "\r\n",
    //         '_smtp_auth' => TRUE,
    //         'validate' => FALSE,
    //         'validation' => TRUE,
    //         // 'bcc_batch_mode' => TRUE,
    //         // 'bcc_batch_size' => '200'
    //     ];


   // Load library email dan konfigurasinya
   $this->load->library('email', $config);

    //Filter Email
    $email = str_replace('tenable.com','',$to);

    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        // Email dan nama pengirim
        $this->email->from('noreply@wingstop.co.id', 'wingstop.co.id');
        $this->email->to($email);
        $this->email->bcc($bcc);
        $this->email->subject($subject);
        $this->email->message($message);
        $this->email->send();
      } else {

      }
}

    public function sendemailonly($to,$subject,$message)
    {
        $config = [
          'mailtype'  => 'html',
          'charset'   => 'utf-8',
          'protocol'  => 'smtp',
          'smtp_host' => 'order.wingstop.co.id',
          'smtp_user' => 'noreply@order.wingstop.co.id',
          'smtp_pass'   => 'MahadyaSU@123',
          'smtp_crypto' => 'ssl',
          'smtp_port'   => 465,
          'crlf'    => "\r\n",
          'newline' => "\r\n",
          '_smtp_auth' => TRUE,
          'validate' => FALSE,
          'validation' => TRUE,
            // 'bcc_batch_mode' => TRUE,
            // 'bcc_batch_size' => '200'
        ];

        // Load library email dan konfigurasinya
        $this->load->library('email', $config);
        //Filter Email
        $email = str_replace('tenable.com','',$to);

        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            // Email dan nama pengirim
            $this->email->from('noreply@wingstop.co.id', 'wingstop.co.id');
            $this->email->to($email);
            // $this->email->bcc($bcc);
            $this->email->subject($subject);
            $this->email->message($message);
            $this->email->send();
        }else{

        }
    }

    public function sendemailmahadya($to,$bcc,$subject,$message)
    {
        $config = [
          'mailtype'  => 'html',
          'charset'   => 'utf-8',
          'protocol'  => 'smtp',
          'smtp_host' => 'order.wingstop.co.id',
          'smtp_user' => 'noreply@order.wingstop.co.id',
          'smtp_pass'   => 'MahadyaSU@123',
          'smtp_crypto' => 'ssl',
          'smtp_port'   => 465,
          'crlf'    => "\r\n",
          'newline' => "\r\n",
          '_smtp_auth' => TRUE,
          'validate' => FALSE,
          'validation' => TRUE,
            // 'bcc_batch_mode' => TRUE,
            // 'bcc_batch_size' => '200'
        ];

        // Load library email dan konfigurasinya
        $this->load->library('email', $config);
        //Filter Email
        $email = str_replace('tenable.com','',$to);

        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            // Email dan nama pengirim
            $this->email->from('noreply@wingstop.co.id', 'wingstop.co.id');
            $this->email->to($email);
            $this->email->bcc($bcc);
            $this->email->subject($subject);
            $this->email->message($message);
            $this->email->send();
        }else{

        }
    }


}
