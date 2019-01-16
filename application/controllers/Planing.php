<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Planing extends CI_Controller {

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
			// library untuk fullcalendar
			// base_url("assets/adminlte/bower_components/fullcalendar/dist/fullcalendar.min.css"),
			
			// library untuk dhtmlx 			
			base_url("assets/dhtmlx/dhtmlxscheduler_material.css?v=20190111"),
			base_url("assets/dhtmlx/dhtmlx.css"),

			// base_url("assets/toast/dist/tui-calendar.min.css"),
			// base_url("assets/toast/css/default.css"),
			// base_url("assets/toast/css/icons.css"),

		];

		$footer['js_files'] = [
			// library untuk full calendar 
			// base_url("assets/adminlte/bower_components/jquery-ui/jquery-ui.min.js"),
			// base_url("assets/adminlte/bower_components/moment/min/moment.min.js"),
			// base_url("assets/adminlte/bower_components/fullcalendar/dist/fullcalendar.min.js"),

			// library untuk dhtmlx
			base_url("assets/dhtmlx/dhtmlxscheduler.js?v=20190111"),
			base_url("assets/dhtmlx/ext/dhtmlxscheduler_serialize.js"),
			base_url("assets/dhtmlx/ext/dhtmlxscheduler_editors.js"),
			
			// base_url("assets/dhtmlx/dhtmlx.js"),
			
			// base_url("assets/adminlte/bower_components/fullcalendar/dist/fullcalendar.min.js"),


			// base_url("assets/adminlte/bower_components/moment/min/moment.min.js"),
			// base_url("assets/toast/dist/tui-calendar.min.js"),
			// base_url("assets/toast/js/default.js"),

			base_url("assets/mdp/config.js"),
			base_url("assets/mdp/global.js"),
			base_url("assets/mdp/planing.dhtmlx.js"),
		];
		
		$output['content'] = '';
		
		$nama_pabrik = $this->session->user;
		$kategori = $this->session->kategori;

		$query = $this->db->query("SELECT nama FROM master_pabrik;");

		$output['dropdown_pabrik']= "";
		if($kategori<2){
			$output['dropdown_pabrik']= "<select id=\"pabrik\">";
		}else{
			$output['dropdown_pabrik']= "<select id=\"pabrik\" disabled>";
		}
		
		foreach ($query->result() as $row)
		{
			if($nama_pabrik==$row->nama){
				$output['dropdown_pabrik'] = $output['dropdown_pabrik']."<option selected=\"selected\">".$row->nama."</option>";
			}else{
				$output['dropdown_pabrik'] = $output['dropdown_pabrik']."<option>".$row->nama."</option>";
			}
		}
		$output['dropdown_pabrik'] .= "/<select>";
		$output['dropdown_station'] = "<select id=\"station\"></select>";

		$this->load->view('header',$header);
		$this->load->view('content-planing-dhtmlx',$output);
		$this->load->view('footer',$footer);

		// $this->load->view('footer-planing',$footer);

	}

	public function load(){
		$id_pabrik = $_REQUEST['id_pabrik'];
		$id_station = $_REQUEST['id_station'];

		$query = $this->db->query(
			"SELECT station,unit,problem,jenis,tipe,tindakan,mulai,selesai,keterangan
			FROM m_breakdown_pabrik where id_pabrik = '$id_pabrik' AND tanggal = '$tanggal';
		");

		$i = 0;
		$d = [];
		foreach ($query->result() as $row)
		{
			$d[$i][0] = $row->station;
			$d[$i][1] = $row->unit;
			$d[$i][2] = $row->problem;
			$d[$i][3] = $row->jenis;
			$d[$i][4] = $row->tipe;
			$d[$i][5] = $row->tindakan;
			$d[$i][6] = $row->mulai;
			$d[$i][7] = $row->selesai;
			$d[$i++][8] = $row->keterangan;
		}
		echo json_encode($d);
	}

	public function load_default(){
		$id_pabrik = $_REQUEST['id_pabrik'];
		$id_station = $_REQUEST['id_station'];

		$query = $this->db->query(
			"SELECT m_wo.station,m_wo.unit,m_wo.problem,m_activity.jenis_breakdown,m_activity.tipe,tindakan,mulai,selesai,keterangan
			FROM m_breakdown_pabrik where id_pabrik = '$id_pabrik' AND tanggal = '$tanggal';
		");

		$i = 0;
		$d = [];
		foreach ($query->result() as $row)
		{
			$d[$i][0] = $row->station;
			$d[$i][1] = $row->unit;
			$d[$i][2] = $row->problem;
			$d[$i][3] = $row->jenis;
			$d[$i][4] = $row->tipe;
			$d[$i][5] = $row->tindakan;
			$d[$i][6] = $row->mulai;
			$d[$i][7] = $row->selesai;
			$d[$i++][8] = $row->keterangan;
		}
		echo json_encode($d);
	}
}
