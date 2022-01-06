<?php
class M_Mahasiswa extends CI_Model{	
	
	public function cek_mahasiswa($id){
		$nama = $this->input->post('nama');
		
		$query = $this->db->query("SELECT nama FROM mahasiswa WHERE nama='$nama'" );
		$query2 = $this->db->query("SELECT * FROM mahasiswa WHERE nama='$nama' AND kode='$id'" );
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
	
	public function cek_mahasiswa_awal(){
		$nama = $this->input->post('nama');
		
		$query = $this->db->query("SELECT nama FROM mahasiswa WHERE nama='$nama'" );
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return false;
		}

	}
	
	public function detail_mahasiswa(){
		$id = $this->input->get('id');
		$query = $this->db->query("SELECT a.*, b.nama_jurusan, b.kode as kode_jurusan, s.kode as kode_semester, s.nama_semester, k.kode as kode_kelas, k.nama_kelas FROM mahasiswa a 
			LEFT JOIN jurusan b
			ON a.jurusan = b.kode
			LEFT JOIN semester s
			ON a.id_semester = s.kode
			LEFT JOIN kelas k
			ON a.id_kelas = k.kode
			WHERE a.kode='$id' order by nama asc");
		return $query->result();

	}
	
	public function edit_mahasiswa($id){
		$nama= $this->input->post('nama');
		$alamat= $this->input->post('alamat');
		$telepon= $this->input->post('telepon');
		$nim= $this->input->post('nim');
		$jurusan= $this->input->post('jurusan');
		$id_kelas= $this->input->post('id_kelas');
		$id_semester= $this->input->post('id_semester');


		$data = array(
			'nim' => $nim,
			'nama' => $nama,
			'alamat' => $alamat,
			'telp' => $telepon,
			'jurusan' => $jurusan,
			'id_semester' => $id_semester,
			'id_kelas' => $id_kelas
		);
		$this->db->where('kode', $id);
		$result = $this->db->update('mahasiswa', $data);
		return $result;
	}
	
	public function hapus_mahasiswa($id){
		$this->db->where('kode', $id);
		$result = $this->db->delete('mahasiswa');
		return $result;
	}
	
	public function semua_mahasiswa(){
		$query = $this->db->query("SELECT a.*, b.nama_jurusan, b.kode as kode_jurusan, s.nama_semester FROM mahasiswa a 
			LEFT JOIN jurusan b
			ON a.jurusan = b.kode
			LEFT JOIN semester s ON s.kode = a.id_semester
			order by a.nama asc");
		return $query->result();

	}
	
	
	public function simpan_mahasiswa($nama,$alamat,$telepon,$nim,$jurusan,$password,$id_semester, $id_kelas){
		
		$data = array(
			'nim' => $nim,
			'nama' => $nama,
			'alamat' => $alamat,
			'telp' => $telepon,
			'password' => $password,
			'jurusan' => $jurusan,
			'id_semester' => $id_semester,
			'id_kelas' => $id_kelas
		);
		$result=$this->db->insert('mahasiswa',$data);
		
		return $result;
	}
	
	public function cek_jurusan($id){
		$jurusan = $this->input->post('jurusan');
		
		$query = $this->db->query("SELECT jurusan FROM jurusan WHERE jurusan='$jurusan'" );
		$query2 = $this->db->query("SELECT * FROM jurusan WHERE jurusan='$jurusan' AND kode='$id'" );
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
	
	public function cek_jurusan_awal(){
		$jurusan = $this->input->post('jurusan');
		
		$query = $this->db->query("SELECT jurusan FROM jurusan WHERE jurusan='$jurusan'" );
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return false;
		}

	}
	
	public function detail_jurusan(){
		$id = $this->input->get('id');
		$query = $this->db->query("SELECT * FROM jurusan WHERE kode='$id'" );
		return $query->result();

	}
	
	public function edit_jurusan($id){
		$jurusan= $this->input->post('jurusan');
		
		$data = array(
			'jurusan' => $jurusan
		);
		$this->db->where('kode', $id);
		$result = $this->db->update('jurusan', $data);
		return $result;
	}
	
	public function hapus_jurusan($id){
		$this->db->where('kode', $id);
		$result = $this->db->delete('jurusan');
		return $result;
	}
	
	public function semua_jurusan(){
		$query = $this->db->query("SELECT * FROM jurusan order by kode asc");
		return $query->result();

	}
	
	
	public function simpan_jurusan($jurusan){
		
		$data = array(
			'jurusan' => $jurusan
		);
		$result=$this->db->insert('jurusan',$data);
		
		return $result;
	}
	public function semua_semester(){
		$query = $this->db->query("SELECT * FROM semester order by kode asc");
		
		return $query->result();

	}
	public function semua_kelas(){
		$query = $this->db->query("SELECT * FROM kelas order by kode asc");
		return $query->result();

	}
	
}
?>
