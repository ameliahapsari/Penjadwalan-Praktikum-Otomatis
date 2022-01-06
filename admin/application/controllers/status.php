<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Status extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->database();
		$this->load->model("M_Asisten");
		$this->load->model("M_Mapel");
		$this->load->model("M_Ruang");
		$this->load->model("M_User");
		$this->load->library('pagination');
		$this->load->helper("date");
		
		$this->load->helper(array('url','download'));
		
		
	}
	public function index()
	{	
		if($this->session->userdata('logged_in')==false) redirect('admin/index');
		
		$data['aside']='asisten_bar';
        $this->load->view('head',$data);   
        $this->load->view('status');   
        $this->load->view('footer');   
	}
	
	public function cek_status($id){
		$result = $this->M_Asisten->cek_status($id);
		$msg['success'] = false;
		if($result){
			$msg['success'] = true;
		}
		echo json_encode($msg);
	}
	
	public function cek_status_awal(){
		$result = $this->M_Asisten->cek_status_awal();
		$msg['success'] = false;
		if($result){
			$msg['success'] = true;
		}
		echo json_encode($msg);
	}
	
	public function simpan_status(){
		
	        $nama= $this->input->post('status');
			
	        $result= $this->M_Asisten->simpan_status($nama);
	        echo json_encode($result);
		}
		
	public function detail_status(){
		$result = $this->M_Asisten->detail_status();
		echo json_encode($result);
	}
	
	public function semua_status(){
		$result = $this->M_Asisten->semua_status();
		echo json_encode($result);
	}
		
	public function simpan_edit($id){
		$result = $this->M_Asisten->edit_status($id);
		echo json_encode($result);
	}

	public function hapus_status($id){

			$delete = $this->M_Asisten->hapus_status($id);			
			echo json_encode($delete);
	}	
	
	
}
?>