<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require('./application/third_party/phpoffice/vendor/autoload.php');

use PhpOffice\PhpSpreadsheet\Helper\Sample;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpWord\PhpWord;
use PhpOffice\PhpWord\Writer\Word2007;
use PhpOffice\PhpSpreadsheet\Reader\Csv;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;

class Riwayat_Penjadwalan3 extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->database();
		$this->load->model("M_Jam");
		$this->load->model("M_Riwayat3");
		$this->load->model("M_Waktu_Tidak_Bersedia");
		$this->load->model("M_Kelas");
		$this->load->model("M_Prodi");
		$this->load->model("M_Jurusan");
		$this->load->model("M_Semester");
		$this->load->model("M_Pengampu");
		$this->load->model("M_Tahun");
		$this->load->model("M_Asisten");
		$this->load->model("M_Hari");
		$this->load->model("M_User");
		$this->load->model("M_Mapel");
		$this->load->model("M_Ruang");
		$this->load->library('pagination');
		$this->load->helper("date");
		define('IS_TEST','FALSE');
		$this->load->helper(array('url','download'));
	}
	
	function index($semester_tipe = null , $tahun_akademik = null, $prodi = null){	
		$data = array();
		$data['ses_nama'] = $this->session->userdata('ses_nama');
		$data['ses_level'] = $this->session->userdata('ses_level');
		
		// jika null maka
		// jika session ada maka gunakan session
		// jika session null maka default
		// else
		// 	ubah session
		

		// echo $this->session->userdata('pengampu_semester_tipe');
		// echo $this->session->userdata('pengampu_tahun_akademik');


		if(!$this->session->userdata('pengampu_semester_tipe') && !$this->session->userdata('tahun_akademik') && !$this->session->userdata('prodi')){
			$this->session->set_userdata('pengampu_semester_tipe',1);
			$this->session->set_userdata('tahun_akademik',7);
			$this->session->set_userdata('prodi','0');
		}


		if($semester_tipe == null && $tahun_akademik == null && $prodi == null){
			$semester_tipe = $this->session->userdata('pengampu_semester_tipe');
			$tahun_akademik = $this->session->userdata('tahun_akademik');
			$prodi = $this->session->userdata('prodi');
		}else{

			$this->session->set_userdata('pengampu_semester_tipe',$semester_tipe);
			$this->session->set_userdata('tahun_akademik',$tahun_akademik);
			$this->session->set_userdata('prodi',$prodi);

			$semester_tipe = $this->session->userdata('pengampu_semester_tipe');
			$tahun_akademik = $this->session->userdata('tahun_akademik');
			$prodi = $this->session->userdata('prodi');
		}


		if($prodi==0){
			$data['rs_riwayat'] = $this->M_Riwayat3->get($semester_tipe,$tahun_akademik);
		}
		else{
			$data['rs_riwayat'] = $this->M_Riwayat3->get_perprodi($semester_tipe,$tahun_akademik,$prodi);
		}

		$data['semester_a'] = $semester_tipe;
		$data['tahun_a'] = $tahun_akademik;
		$data['prodi'] = $prodi;
		$data['rs_tahun'] = $this->M_Tahun->semua_tahun();

		//$data['semester_tipe'] = $semester_tipe;
		//$data['tahun_akademik'] = $tahun_akademik;		


		$datas['aside']='riwayat_bar';
		$this->load->view('head',$datas);   
		$this->load->view('riwayat_penjadwalan',$data);   
		$this->load->view('footer');   		

	}

	public function hapus_jadwal(){
		$semester_tipe = $this->session->userdata('pengampu_semester_tipe');
		$tahun_akademik = $this->session->userdata('tahun_akademik');
		$prodi = $this->session->userdata('prodi');

		if($prodi==0){
			$this->M_Riwayat3->hapus_semua_jadwal($semester_tipe,$tahun_akademik);
		}
		else{
			$this->M_Riwayat3->hapus_jadwal($semester_tipe,$tahun_akademik,$prodi);
		}

		if($prodi==0){
			$data['rs_riwayat'] = $this->M_Riwayat3->get($semester_tipe,$tahun_akademik);
		}
		else{
			$data['rs_riwayat'] = $this->M_Riwayat3->get_perprodi($semester_tipe,$tahun_akademik,$prodi);
		}

		$data['semester_a'] = $semester_tipe;
		$data['tahun_a'] = $tahun_akademik;
		$data['prodi'] = $prodi;
		$data['rs_tahun'] = $this->M_Tahun->semua_tahun();
		$data['hapus'] = "Berhasil menghapus jadwal";	
		//$data['semester_tipe'] = $semester_tipe;
		//$data['tahun_akademik'] = $tahun_akademik;		


		$datas['aside']='riwayat_bar';
		$this->load->view('head',$datas);   
		$this->load->view('riwayat_penjadwalan',$data);   
		$this->load->view('footer');   		
	}


	function excel_report($semester_tipe = null , $tahun_akademik = null, $prodi = null){
		$data = array();
		$data['ses_nama'] = $this->session->userdata('ses_nama');
		$data['ses_level'] = $this->session->userdata('ses_level');
		
		// jika null maka
		// jika session ada maka gunakan session
		// jika session null maka default
		// else
		// 	ubah session
		

		// echo $this->session->userdata('pengampu_semester_tipe');
		// echo $this->session->userdata('pengampu_tahun_akademik');


		if(!$this->session->userdata('pengampu_semester_tipe') && !$this->session->userdata('tahun_akademik') && !$this->session->userdata('prodi')){
			$this->session->set_userdata('pengampu_semester_tipe',1);
			$this->session->set_userdata('tahun_akademik',7);
			$this->session->set_userdata('prodi','0');
		}

		if($semester_tipe == null && $tahun_akademik == null && $prodi == null){
			$semester_tipe = $this->session->userdata('pengampu_semester_tipe');
			$tahun_akademik = $this->session->userdata('tahun_akademik');
			$prodi = $this->session->userdata('prodi');
		}else{

			$this->session->set_userdata('pengampu_semester_tipe',$semester_tipe);
			$this->session->set_userdata('tahun_akademik',$tahun_akademik);
			$this->session->set_userdata('prodi',$prodi);

			$semester_tipe = $this->session->userdata('pengampu_semester_tipe');
			$tahun_akademik = $this->session->userdata('tahun_akademik');
			$prodi = $this->session->userdata('prodi');
		}


		if($prodi==0){
			$rs_riwayat = $this->M_Riwayat3->get($semester_tipe,$tahun_akademik)->result();
		}
		else{
			$rs_riwayat = $this->M_Riwayat3->get_perprodi($semester_tipe,$tahun_akademik,$prodi)->result();
		}

		$spreadsheet = new Spreadsheet();

		$spreadsheet->getProperties()->setCreator('Windhu - MIDO Indonesia')
		->setLastModifiedBy('Windhu - WAC Indonesia')
		->setTitle('Office 2007 XLSX Test Document')
		->setSubject('Office 2007 XLSX Test Document')
		->setDescription('Test document for Office 2007 XLSX, generated using PHP classes.')
		->setKeywords('office 2007 openxml php')
		->setCategory('Test result file');

		$spreadsheet->setActiveSheetIndex(0)
		->setCellValue('A1', 'No')
		->setCellValue('B1', 'Hari')
		->setCellValue('C1', 'Sesi')
		->setCellValue('D1', 'Jam')
		->setCellValue('E1', 'Mata Kuliah')
		->setCellValue('F1', 'Asisten')
		->setCellValue('G1', 'SKS')
		->setCellValue('H1', 'Kelas')
		->setCellValue('I1', 'Semester')
		->setCellValue('J1', 'Prodi')
		->setCellValue('K1', 'Ruang')
		;

		// Miscellaneous glyphs, UTF-8
		$i = 2; 
		$no = 1;
		foreach($rs_riwayat as $rs_riwayat) {

			$spreadsheet->setActiveSheetIndex(0)
			->setCellValue('A'.$i, $no)
			->setCellValue('B'.$i, $rs_riwayat->hari)
			->setCellValue('C'.$i, $rs_riwayat->sesi)
			->setCellValue('D'.$i, $rs_riwayat->jam_kuliah)
			->setCellValue('E'.$i, $rs_riwayat->nama_mk)
			->setCellValue('F'.$i, $rs_riwayat->asisten)
			->setCellValue('G'.$i, $rs_riwayat->jumlah_jam)
			->setCellValue('H'.$i, $rs_riwayat->nama_kelas)
			->setCellValue('I'.$i, $rs_riwayat->nama_semester)
			->setCellValue('J'.$i, $rs_riwayat->nama_prodi)
			->setCellValue('K'.$i, $rs_riwayat->ruang)
			;
			$i++;
			$no++;
		}

		// Rename worksheet
		$spreadsheet->getActiveSheet()->setTitle('Jadwal Praktikum');

		// Set active sheet index to the first sheet, so Excel opens this as the first sheet
		$spreadsheet->setActiveSheetIndex(0);

		// Redirect output to a client’s web browser (Xlsx)
		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment;filename="Jadwal Praktikum.xlsx"');
		header('Cache-Control: max-age=0');
		// If you're serving to IE 9, then the following may be needed
		header('Cache-Control: max-age=1');


		header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
		header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); // always modified
		header('Cache-Control: cache, must-revalidate'); // HTTP/1.1
		header('Pragma: public'); // HTTP/1.0

		$writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
		$writer->save('php://output');
		exit;
	}
}
?>