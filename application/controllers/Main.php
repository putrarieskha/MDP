<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

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

	public function __construct()
	{
		parent::__construct();

		$this->load->database();
		$this->load->helper('url');

		$this->load->library('grocery_CRUD');
	}

	public function _example_output($output = null)
	{
		$this->load->view('example.php',(array)$output);
	}

	public function index()
	{
		$header['css_files'] = [
			base_url("assets/jexcel/css/jquery.jexcel.css"),
			// base_url("assets/jexcel/css/jquery.jcalendar.css"),
		];

		$footer['js_files'] = [
			// base_url('assets/adminlte/plugins/jQuery/jQuery-2.1.4.min.js'),
			base_url("assets/jexcel/js/jquery.jexcel.js"),
			// base_url("assets/jexcel/js/jquery.jcalendar.js"),
			base_url("assets/adminlte/bower_components/Flot/jquery.flot.js"),
			base_url("assets/adminlte/bower_components/Flot/jquery.flot.pie.js"),
			base_url("assets/mdp/config.js"),
			base_url("assets/mdp/global.js"),

			base_url("assets/mdp/main.js"),
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


		// $this->load->helper('url');
		// $output = "";
		$this->load->view('header',$header);
		$this->load->view('content-main',$output);
		$this->load->view('footer',$footer);
	}

	public function statistik()
	{
		$nama_pabrik = $_REQUEST['id_pabrik'];
		$tanggal = $_REQUEST['tanggal']; //"2018-11-22";
		$tgl = date("Y-m-d");
		$m = date("m");
		// $t = explode("-",$tanggal);

		//nilai data jumlah wo belum close atau selesai
		$query = $this->db->query("SELECT count(no_wo) as jumlah FROM `m_wo` WHERE `status` = 'open' and id_pabrik = '$nama_pabrik'");
		$row = $query->row();
		$jumlah_no_wo = $row->jumlah;

		//nilai data jumlah wo bulan ini
		$query = $this->db->query("SELECT count(no_wo) as jumlah FROM `m_wo` WHERE `status` = 'open' and id_pabrik = '$nama_pabrik' and tanggal LIKE '%-$m-%' ");
		$row = $query->row();
		$jumlah_wo_baru = $row->jumlah;

		//nilai data jumlah unit yang bermasalah
		$query = $this->db->query("SELECT DISTINCT count(unit) as unit FROM `m_wo` WHERE `status` = 'open' and id_pabrik = '$nama_pabrik'");
		$row = $query->row();
		$jumlah_unit_trouble = $row->unit;

		//nilai data mill avaibility
		$query = $this->db->query("SELECT ROUND(sum(acm)/count(acm)*100,2) as jumlah FROM `m_acm` where tanggal = '$tgl' and id_pabrik = '$nama_pabrik';");
		$row = $query->row();
		$mill_avaibility = $row->jumlah;

		// data array list pekerjaan maintenance hari ini
		$query = $this->db->query("SELECT m_wo.id_pabrik,m_wo.station,m_wo.unit,m_wo.problem,m_wo.tanggal,nama_teknisi,t_mulai,t_selesai FROM `m_activity_detail`,m_wo where m_wo.no_wo = m_activity_detail.no_wo and m_activity_detail.tanggal = '$tanggal' and m_activity_detail.id_pabrik = '$nama_pabrik';");
		$i = 0;
		$job_list = [];
		foreach ($query->result() as $row)
		{
			$job_list[$i][0] = $row->station;
			$job_list[$i][1] = $row->unit;
			$job_list[$i][2] = $row->problem;
			$job_list[$i++][3] = $row->nama_teknisi;
		}

		// $query = $this->db->query("SELECT jenis_breakdown,count(id) as jumlah FROM `m_activity` where tanggal LIKE '%$t[1]%' and id_pabrik = '$nama_pabrik' group by jenis_breakdown");

		$out['wo_unfinished'] = $jumlah_no_wo;
		$out['unit_problem'] = $jumlah_unit_trouble;
		$out['wo_baru'] = $jumlah_wo_baru;
		$out['mill_avaibility'] = $mill_avaibility;
		$out['job_today'] = $job_list; 

		// print_r($out);
		// echo $m;
		echo json_encode($out);
	}

	public function wo_unfinished(){

	}
}
