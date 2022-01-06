<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Asisten extends CI_Controller {

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
        $this->load->view('asisten');   
        $this->load->view('footer');   
	}
	
	public function cek_asisten($id){
		$result = $this->M_Asisten->cek_asisten($id);
		$msg['success'] = false;
		if($result){
			$msg['success'] = true;
		}
		echo json_encode($msg);
	}
	
	public function cek_asisten_awal(){
		$result = $this->M_Asisten->cek_asisten_awal();
		$msg['success'] = false;
		if($result){
			$msg['success'] = true;
		}
		echo json_encode($msg);
	}
	
	public function simpan_asisten(){
		
	        $nama= $this->input->post('nama');
	        $alamat= $this->input->post('alamat');
	        $telepon= $this->input->post('telepon');
	        $nim= $this->input->post('nim');
	        $status= $this->input->post('status');
			$id_asisten= $this->input->post('nim');
			$password= $this->input->post('nim');
	        $result= $this->M_Asisten->simpan_asisten($nama,$alamat,$telepon,$nim,$status,$id_asisten,$password);
	        echo json_encode($result);
		}
		
	public function detail_asisten(){
		$result = $this->M_Asisten->detail_asisten();
		echo json_encode($result);
	}
	
	public function semua_asisten(){
		$result = $this->M_Asisten->semua_asisten();
		echo json_encode($result);
	}
		
	public function simpan_edit($id){
		$result = $this->M_Asisten->edit_asisten($id);
		echo json_encode($result);
	}

	public function hapus_asisten($id){

			$delete = $this->M_Asisten->hapus_asisten($id);			
			echo json_encode($delete);
	}	
	
	
}
?>