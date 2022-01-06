<?php
class M_Asisten extends CI_Model{	
	
	public function cek_asisten($id){
		$nama = $this->input->post('nama');
		
		$query = $this->db->query("SELECT nama FROM asisten WHERE nama='$nama'" );
		$query2 = $this->db->query("SELECT * FROM asisten WHERE nama='$nama' AND kode='$id'" );
		if($query2->num_rows() > 0){
			return false;
		}else{
			if($query->num_rows() > 0){
				return $query->result();
			}
			else{
				return false;
			}	
		}

	}
	
	public function cek_asisten_awal(){
		$nama = $this->input->post('nama');
		
		$query = $this->db->query("SELECT nama FROM asisten WHERE nama='$nama'" );
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return false;
		}

	}
	
	public function detail_asisten(){
		$id = $this->input->get('id');
		$query = $this->db->query("SELECT a.*, b.status, b.kode as kode_status FROM asisten a 
									LEFT JOIN status_asisten b
									ON a.status_asisten = b.kode
									WHERE a.kode='$id' order by nama asc");
		return $query->result();

	}
	
	public function edit_asisten($id){
		$nama= $this->input->post('nama');
	        $alamat= $this->input->post('alamat');
	        $telepon= $this->input->post('telepon');
	        $nim= $this->input->post('nim');
	        $status= $this->input->post('status');
	        $id_asisten= $this->input->post('nim');
			
		$data = array(
						'nim' => $nim,
						'nama' => $nama,
						'alamat' => $alamat,
						'telp' => $telepon,
						'status_asisten' => $status,
						'id_asisten' => $id_asisten
					);
		$this->db->where('kode', $id);
		$result = $this->db->update('asisten', $data);
		return $result;
	}
	
	public function hapus_asisten($id){
		$this->db->where('kode', $id);
		$result = $this->db->delete('asisten');
		return $result;
	}
	
	public function semua_asisten(){
		$query = $this->db->query("SELECT a.*, b.status, b.kode as kode_status FROM asisten a 
									LEFT JOIN status_asisten b
									ON a.status_asisten = b.kode
									order by a.nama asc");
		return $query->result();
	
	}
	
	
	public function simpan_asisten($nama,$alamat,$telepon,$nim,$status,$id_asisten,$password){
		
		$data = array(
						'nim' => $nim,
						'nama' => $nama,
						'alamat' => $alamat,
						'telp' => $telepon,
						'status_asisten' => $status,
						'id_asisten' => $id_asisten,
						'password' => $password
					);
		$result=$this->db->insert('asisten',$data);
		
		return $result;
	}
	
	public function cek_status($id){
		$status = $this->input->post('status');
		
		$query = $this->db->query("SELECT status FROM status_asisten WHERE status='$status'" );
		$query2 = $this->db->query("SELECT * FROM status_asisten WHERE status='$status' AND kode='$id'" );
		if($query2->num_rows() > 0){
			return false;
		}else{
			if($query->num_rows() > 0){
				return $query->result();
			}
			else{
				return false;
			}	
		}

	}
	
	public function cek_status_awal(){
		$status = $this->input->post('status');
		
		$query = $this->db->query("SELECT status FROM status_asisten WHERE status='$status'" );
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return false;
		}

	}
	
	public function detail_status(){
		$id = $this->input->get('id');
		$query = $this->db->query("SELECT * FROM status_asisten WHERE kode='$id'" );
		return $query->result();

	}
	
	public function edit_status($id){
		$status= $this->input->post('status');
		
		$data = array(
						'status' => $status
					);
		$this->db->where('kode', $id);
		$result = $this->db->update('status_asisten', $data);
		return $result;
	}
	
	public function hapus_status($id){
		$this->db->where('kode', $id);
		$result = $this->db->delete('status_asisten');
		return $result;
	}
	
	public function semua_status(){
		$query = $this->db->query("SELECT * FROM status_asisten order by kode asc");
		return $query->result();
	
	}
	
	
	public function simpan_status($status){
		
		$data = array(
						'status' => $status
					);
		$result=$this->db->insert('status_asisten',$data);
		
		return $result;
	}
	
	
}
?>
