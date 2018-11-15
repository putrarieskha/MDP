<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Breakdown extends CI_Controller {

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
			base_url("assets/mdp/breakdown.js"),
		];
		
		$output['content'] = '
		<table id="table_id" class="table">
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
				</tr>
			</tbody>
		</table>
		';
		
		$query = $this->db->query("SELECT nama FROM master_pabrik;");
		$output['dropdown_pabrik']= "<select id=\"pabrik\">";
		foreach ($query->result() as $row)
		{
			$output['dropdown_pabrik'] = $output['dropdown_pabrik']."<option>".$row->nama."</option>";
		}
		$output['dropdown_pabrik'] .= "/<select>";
		
		$this->load->view('header',$header);
		$this->load->view('content-breakdown',$output);
		$this->load->view('footer',$footer);

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
