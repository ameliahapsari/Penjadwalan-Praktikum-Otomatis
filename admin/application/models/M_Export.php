<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Export extends CI_Model {

	public $limit;
	public $offset;
	public $sort;
	public $order;

	function __construct(){

		parent::__construct();

	}

	function get($semester_tipe,$tahun_akademik){
		$rs = $this->db->query(	"SELECT  e.nama as hari,".
			
			"        b.kuota,".
			"        c.nama as nama_mk,".
			"        c.jumlah_jam as jumlah_jam,".
			"        c.semester as semester,".
			"        d.nama as asisten,".
			"        f.nama as ruang, ".
			"        g.range_jam as jam_kuliah, ".
			"        g.sesi , ".
			"        f.kapasitas , ".
			"       h.kode as `kode_kelas`,".
			"       h.nama_kelas as  `nama_kelas`,".
			"       i.kode as `kode_prodi`,".
			"       i.nama_prodi as  `nama_prodi`,".
			"       j.kode as `kode_semester_tipe`,".
			"       j.tipe_semester as  `semester_tipe`,".
			"       k.kode as `kode_tahun`,".
			"       k.tahun as  `nama_tahun`,".
			"       l.kode as `kode_semester`,".
			"       l.nama_semester as  `nama_semester`,".
			"       m.kode as `kode_jurusan`,".
			"       m.nama_jurusan as  `nama_jurusan`".
			"FROM riwayat_penjadwalan a ".
			"LEFT JOIN pengampu b ".
			"ON a.kode_pengampu = b.kode ".
			"LEFT JOIN matapelajaran c ".
			"ON b.kode_mk = c.kode ".
			"LEFT JOIN asisten d ".
			"ON b.kode_asisten = d.kode ".
			"LEFT JOIN hari e ".
			"ON a.kode_hari = e.kode ".
			"LEFT JOIN ruang f ".
			"ON a.kode_ruang = f.kode ".
			"LEFT JOIN jam2 g ".
			"ON a.kode_jam = g.kode ".
			"LEFT JOIN kelas h ".
			"ON b.kelas = h.kode ".
			"LEFT JOIN prodi i ".
			"ON b.kode_prodi = i.kode ".
			"LEFT JOIN semester_tipe j ".
			"ON c.semester = j.kode ".
			"LEFT JOIN tahun_akademik k ".
			"ON b.tahun_akademik = k.kode ".
			"LEFT JOIN semester l ".
			"ON b.semester = l.kode ".
			"LEFT JOIN jurusan m ".
			"ON i.kode_jurusan = m.kode ".
			"WHERE l.semester_tipe='$semester_tipe' AND b.tahun_akademik='$tahun_akademik'".
			"order by e.kode asc,Jam_Kuliah asc;");
		return $rs;
	}

	function get_perprodi($semester_tipe,$tahun_akademik,$jurusan){
		$rs = $this->db->query(	"SELECT  e.nama as hari,".
			"        b.kuota,".
			"        c.nama as nama_mk,".
			"        c.jumlah_jam as jumlah_jam,".
			"        c.semester as semester,".
			"        d.nama as asisten,".
			"        f.nama as ruang, ".
			"        g.range_jam as jam_kuliah, ".
			"        g.sesi , ".
			"        f.kapasitas , ".
			"       h.kode as `kode_kelas`,".
			"       h.nama_kelas as  `nama_kelas`,".
			"       i.kode as `kode_prodi`,".
			"       i.nama_prodi as  `nama_prodi`,".
			"       j.kode as `kode_semester_tipe`,".
			"       j.tipe_semester as  `semester_tipe`,".
			"       k.kode as `kode_tahun`,".
			"       k.tahun as  `nama_tahun`,".
			"       l.kode as `kode_semester`,".
			"       l.nama_semester as  `nama_semester`,".
			"       m.kode as `kode_jurusan`,".
			"       m.nama_jurusan as  `nama_jurusan`".
			"FROM riwayat_penjadwalan a ".
			"LEFT JOIN pengampu b ".
			"ON a.kode_pengampu = b.kode ".
			"LEFT JOIN matapelajaran c ".
			"ON b.kode_mk = c.kode ".
			"LEFT JOIN asisten d ".
			"ON b.kode_asisten = d.kode ".
			"LEFT JOIN hari e ".
			"ON a.kode_hari = e.kode ".
			"LEFT JOIN ruang f ".
			"ON a.kode_ruang = f.kode ".
			"LEFT JOIN jam2 g ".
			"ON a.kode_jam = g.kode ".
			"LEFT JOIN kelas h ".
			"ON b.kelas = h.kode ".
			"LEFT JOIN prodi i ".
			"ON b.kode_prodi = i.kode ".
			"LEFT JOIN semester_tipe j ".
			"ON c.semester = j.kode ".
			"LEFT JOIN tahun_akademik k ".
			"ON b.tahun_akademik = k.kode ".
			"LEFT JOIN semester l ".
			"ON b.semester = l.kode ".
			"LEFT JOIN jurusan m ".
			"ON i.kode_jurusan = m.kode ".
			"WHERE l.semester_tipe='$semester_tipe' AND b.tahun_akademik='$tahun_akademik' AND b.kode_prodi='$jurusan'".
			"order by e.kode asc,Jam_Kuliah asc;");
		return $rs;
	}

}

/* End of file M_Export.php */
/* Location: ./application/models/M_Export.php */