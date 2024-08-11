<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class coreapi_model extends CI_Model {

    public function __construct()
	{
		parent::__construct();
    }

    function apisystem($method, $url, $data){
        $curl = curl_init();
        switch ($method){
        case "POST":
            curl_setopt($curl, CURLOPT_POST, 1);
            if ($data)
                curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
            break;
        case "PUT":
            curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "PUT");
            if ($data)
                curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
            break;
        case "DELETE":
            curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "DELETE");
            if ($data)
                curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
            break;	
        default:
            if ($data){
                $url = sprintf("%s?%s", $url, http_build_query($data));
                break;
            }else{
                $url = $url;
                break;
            }	
        }
        // OPTIONS:
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HTTPHEADER, array(	
        'Authorization: Token eec26954f90c751680f245212a0573e096c0c5e8',
        'Content-Type: application/json',
        'cache-control: no-cache'
        ));
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
        // EXECUTE:
        $result = curl_exec($curl);
        if(!$result){die("Connection Failure");}
        curl_close($curl);
        return $result;
    }

}