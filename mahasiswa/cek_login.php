<?php 
// mengaktifkan session pada php
session_start();

// menghubungkan php dengan koneksi database
include("koneksi.php");

// menangkap data yang dikirim dari form login
$username = $_REQUEST['username'];
$password =$_REQUEST['password'];

// menyeleksi data user dengan username dan password yang sesuai
$login = mysqli_query($koneksi,"SELECT * FROM mahasiswa WHERE nim='$username' AND password='$password'");
// menghitung jumlah data yang ditemukan
$cek = mysqli_num_rows($login);

// cek apakah username dan password di temukan pada database
if($cek > 0){

	$data = mysqli_fetch_assoc($login);
	$_SESSION['nama'] = $data["nama"];
	$_SESSION['kode'] = $data["kode"];
	$_SESSION['id_kelas'] = $data["id_kelas"];
	$_SESSION['id_semester'] = $data["id_semester"];

	$_SESSION['jurusan'] = $data["jurusan"];
		// alihkan ke halaman dashboard admin
	header("location:dashboard.php?module=home");

	// cek jika user login sebagai pegawai
}else{
	header("location:index.php?pesan=gagal");
}

?>