<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once("./application/libraries/dompdf/autoload.inc.php");
use Dompdf\Dompdf;

 function generate($html, $filename='', $stream=TRUE, $paper = 'A4', $orientation = "portrait")
  {
    // $dompdf = new DOMPDF();
    $dompdf = new Dompdf(array('enable_remote' => true));
    $dompdf->loadHtml($html);
    $dompdf->setPaper($paper, $orientation);
    $dompdf->render();
    if ($stream) {
        $dompdf->stream($filename.".pdf", array("Attachment" => 0));
    } else {
        return $dompdf->output();
    }
  }

  function save($html, $filename='', $stream=FALSE, $paper = 'A4', $orientation = "portrait")
  {
    // $dompdf = new DOMPDF();
    $dompdf = new Dompdf(array('enable_remote' => true));
    $dompdf->load_html($html);
    $dompdf->setPaper($paper, $orientation);
    $dompdf->render();
    $output = $dompdf->output();
    file_put_contents('pdfs/'.$filename, $output);
  }

