<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mahasiswa extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->database();
		$this->load->model("M_Mahasiswa");

		$this->load->library('pagination');
		$this->load->helper("date");
		
		$this->load->helper(array('url','download'));
		
		
	}
	public function index()
	{	
		if($this->session->userdata('logged_in')==false) redirect('admin/index');
		
		$data['aside']='mahasiswa_bar';
        $this->load->view('head',$data);   
        $this->load->view('mahasiswa');   
        $this->load->view('footer');   
	}
	
	public function cek_mahasiswa($id){
		$result = $this->M_Mahasiswa->cek_mahasiswa($id);
		$msg['success'] = false;
		if($result){
			$msg['success'] = true;
		}
		echo json_encode($msg);
	}
	
	public function cek_mahasiswa_awal(){
		$result = $this->M_Mahasiswa->cek_mahasiswa_awal();
		$msg['success'] = false;
		if($result){
			$msg['success'] = true;
		}
		echo json_encode($msg);
	}
	
	public function simpan_mahasiswa(){
		
	        $nama= $this->input->post('nama');
	        $alamat= $this->input->post('alamat');
	        $telepon= $this->input->post('telepon');
	        $nim= $this->input->post('nim');
	        $password= $this->input->post('password');
	        $jurusan= $this->input->post('jurusan');
			$password= $this->input->post('nim');
	        $id_kelas= $this->input->post('id_kelas');
	        $id_semester= $this->input->post('id_semester');
	        $result= $this->M_Mahasiswa->simpan_mahasiswa($nama,$alamat,$telepon,$nim,$jurusan,$password,$id_semester,$id_kelas);
	        echo json_encode($result);
		}
		
	public function detail_mahasiswa(){
		$result = $this->M_Mahasiswa->detail_mahasiswa();
		echo json_encode($result);
	}
	
	public function semua_mahasiswa(){
		$result = $this->M_Mahasiswa->semua_mahasiswa();
		echo json_encode($result);
	}
		
	public function simpan_edit($id){
		$result = $this->M_Mahasiswa->edit_mahasiswa($id);
		echo json_encode($result);
	}

	public function hapus_mahasiswa($id){

			$delete = $this->M_Mahasiswa->hapus_mahasiswa($id);			
			echo json_encode($delete);
	}	
	
	
}
?>