<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Unit extends CI_Controller {

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
		$output['main_title'] = "Data Asset Mesin";
		
		$header['css_files'] = [
			base_url("assets/jexcel/css/jquery.jexcel.css"),
			base_url("assets/jexcel/css/jquery.jcalendar.css"),
		];

		$footer['js_files'] = [
			// base_url('assets/adminlte/plugins/jQuery/jQuery-2.1.4.min.js'),
			base_url("assets/jexcel/js/jquery.jexcel.js"),
			base_url("assets/jexcel/js/jquery.jcalendar.js"),
			base_url("assets/mdp/config.js"),
			base_url("assets/mdp/global.js"),
			base_url("assets/mdp/unit.js"),
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
		$this->load->view('content-unit',$output);
		$this->load->view('footer',$footer);

	}

	public function load()
	{
		$id_pabrik = $_REQUEST['id_pabrik'];
		$id_station = $_REQUEST['id_station'];

		$query = $this->db->query("SELECT kode_asset,nama FROM master_unit where id_pabrik = '$id_pabrik' AND id_station = '$id_station';");

		$i = 0;
		$d = [];
		foreach ($query->result() as $row)
		{
			// $d[$i][0] = $row->nama; // access attributes
			// $d[$i][0] = $row->id_station; // or methods defined on the 'User' class
			$d[$i][0] = $row->kode_asset; // or methods defined on the 'User' class
			$d[$i++][1] = $row->nama; // or methods defined on the 'User' class
		}
		echo json_encode($d);
	}

	public function simpan()
	{
		$pabrik = $_REQUEST['pabrik'];
		$station = $_REQUEST['station'];

		$this->db->query("DELETE FROM `master_unit` where id_pabrik = '$pabrik' AND id_station = '$station' ");
		$data_json = $_REQUEST['data_json'];
		$data = json_decode($data_json);
		foreach ($data as $key => $value) {
			// $this->db->insert
			$data = array(
				'id_pabrik' => $pabrik,
				'id_station' => $station,
				'kode_asset' => $value[0],
				'nama' => $value[1],
				// 'tipe' => $value[1],
				// 'date' => 'My date'
			);
			// print_r($data);
			$this->db->insert('master_unit', $data);
		}
	}

	public function ajax()
	{
		// $id_pabrik = $_REQUEST['id_pabrik'];
		$id_pabrik = $this->uri->segment(3, 0);
		$query = $this->db->query("SELECT nama FROM master_unit where id_pabrik = '$id_pabrik';");

		$i = 0;
		$d = [];
		foreach ($query->result() as $row)
		{
				// $d[$i][0] = $row->nama; // access attributes
				$a['name'] = $row->nama;
				$a['id'] = $row->nama;
				$d[$i++] = $a;
		}
		echo json_encode($d);
	}

	public function ajax_default_list()
	{
		$id_pabrik = $_REQUEST['id_pabrik'];
		$id_station = $_REQUEST['id_station'];
		// $id_pabrik = $this->uri->segment(3, 0);
		$query = $this->db->query("SELECT nama FROM master_unit where id_pabrik = '$id_pabrik' AND id_station = '$id_station';");

		$i = 0;
		$d = [];
		foreach ($query->result() as $row)
		{
				$d[$i++][0] = $row->nama; // access attributes
				// $a['name'] = $row->nama;
				// $a['id'] = $row->nama;
				// $d[$i++] = $;
		}
		echo json_encode($d);
	}


	public function site(){
		$output['content'] = "test";
		$output['main_title'] = "Breakdown";
		
		$header['css_files'] = [
			// base_url("assets/datatables/css/jquery.dataTables.min.css"),
			// base_url("assets/datatables/css/responsive.dataTables.min.css"),
			base_url("assets/datatables/css/datatables.min.css"),
		];

		$footer['js_files'] = [
			// base_url('assets/adminlte/plugins/jQuery/jQuery-2.1.4.min.js'),
			// base_url("assets/datatables/js/jquery.dataTables.min.js"),
			// base_url("assets/datatables/js/dataTables.responsive.min.js"),
			base_url("assets/datatables/js/datatables.min.js"),
			base_url("assets/mdp/breakdown.js"),
		];
		


		$output['content'] = '
		<div id="Bfrtip"></div>
		<table id="table_id" class="display responsive nowrap" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>station</th>
					<th>equipment</th>
					<th>problem</th>
					<th>jenis</th>
					<th>tipe</th>
					<th>tindakan</th>
					<th>mulai</th>
					<th>selesai</th>
					<th>keterangan</th>
					<th>action</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>station</td>
					<td>equipment</td>
					<td>problem</td>
					<td>jenis</td>
					<td>tipe</td>
					<td>tindakan</td>
					<td>mulai</td>
					<td>selesai</td>
					<td>keterangan</td>
					<td><a>edit</a><a>delete</a></td>
				</tr>
				<tr>
					<td>station</td>
					<td>equipment</td>
					<td>problem</td>
					<td>jenis</td>
					<td>tipe</td>
					<td>tindakan</td>
					<td>mulai</td>
					<td>selesai</td>
					<td>keterangan</td>
					<td><a>edit</a><a>delete</a></td>
				</tr>
			</tbody>
		</table>
		';
		
		
		
		$this->load->view('header',$header);
		$this->load->view('content-breakdown',$output);
		$this->load->view('footer',$footer);
	}
}
