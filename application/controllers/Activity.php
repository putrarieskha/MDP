<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Activity extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		// $this->load->view('welcome_message');

		$output['content'] = "test";
		$output['main_title'] = "Breakdown";
		
		$header['css_files'] = [
			base_url("assets/jexcel/css/jquery.jexcel.css"),
			base_url("assets/jexcel/css/jquery.jcalendar.css"),
		];

		$footer['js_files'] = [
			// base_url('assets/adminlte/plugins/jQuery/jQuery-2.1.4.min.js'),
			base_url("assets/jexcel/js/jquery.jexcel.js"),
			base_url("assets/jexcel/js/jquery.jcalendar.js"),
			base_url("assets/jexcel/js/jquery.mask.min.js"),
			base_url("assets/mdp/config.js"),
			base_url("assets/mdp/activity.js"),
		];
		
		$query = $this->db->query("SELECT nama FROM master_pabrik;");
		$output['dropdown_pabrik']= "<select id=\"pabrik\">";
		foreach ($query->result() as $row)
		{
			$output['dropdown_pabrik'] = $output['dropdown_pabrik']."<option>".$row->nama."</option>";
		}
		$output['dropdown_pabrik'] .= "/<select>";

		$output['content'] = '';
		
		$this->load->view('header',$header);
		$this->load->view('content-activity',$output);
		$this->load->view('footer',$footer);

	}



	public function load()
	{
		$id_pabrik = $_REQUEST['id_pabrik'];
		$tanggal = $_REQUEST['y']."-".$_REQUEST['m']."-".$_REQUEST['d'];		
		$query = $this->db->query("SELECT no_wo,perbaikan FROM m_activity where id_pabrik = '$id_pabrik' AND tanggal='$tanggal';");

		$i = 0;
		$d = [];
		foreach ($query->result() as $row)
		{
			// $d[$i][0] = $row->nama; // access attributes
			$d[$i][0] = $row->no_wo; // or methods defined on the 'User' class
			$d[$i][1] = $row->station; // or methods defined on the 'User' class
			$d[$i][2] = $row->unit; // or methods defined on the 'User' class
			$d[$i][3] = $row->problem; // or methods defined on the 'User' class
			$d[$i][4] = $row->desc_masalah; // or methods defined on the 'User' class
			$d[$i][5] = $row->hm; // or methods defined on the 'User' class
			$d[$i][6] = $row->kategori; // or methods defined on the 'User' class
			$d[$i++][7] = $row->status; // or methods defined on the 'User' class
		}
		echo json_encode($d);
	}
}
