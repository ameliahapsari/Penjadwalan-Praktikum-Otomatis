
<?php 
$id_semester  = $_SESSION['id_semester'];
$id_kelas  = $_SESSION['id_kelas'];
?>
<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0 text-dark">Jadwal Praktikum</h1>
			</div><!-- /.col -->
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="?module=home">Home</a></li>
					<li class="breadcrumb-item active">Jadwal Praktikum</li>
				</ol>
			</div><!-- /.col -->
		</div><!-- /.row -->
	</div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->
<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-12">

			<div class="card">
				<!-- /.card-header -->
				<div class="card-body">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>No</th>
								<th>Hari</th>
								<th>Jam</th>
								<th>Matakuliah</th>
								<th>SKS</th>
								<th>Kelompok</th>
								<th>Semester</th>
								<th>Tahun</th>
								<th>Ruang</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$sql =  mysqli_query($koneksi, 'SELECT *, asisten.nama as nama_asisten, mp.nama as nama_pelajaran, hari.nama as nama_hari, ruang.nama as nama_ruang 
								FROM riwayat_penjadwalan as rp 
								JOIN pengampu as p on p.kode = rp.kode_pengampu 
								JOIN matapelajaran as mp on mp.kode = p.kode_mk 
								JOIN tahun_akademik as th on th.kode = p.tahun_akademik 
								JOIN prodi on prodi.kode = p.kode_prodi 
								JOIN asisten on asisten.kode = p.kode_asisten 
								JOIN hari on hari.kode = rp.kode_hari 
								JOIN jam2 on jam2.kode = rp.kode_jam 
								JOIN ruang on ruang.kode = rp.kode_ruang
								JOIN kelas on kelas.kode = p.kelas
								JOIN semester on semester.kode = p.semester  
								WHERE p.semester = '.$id_semester.' AND p.kelas = '.$id_kelas.' AND p.tahun_akademik = '.$_POST['tahun'].' ')  or die(mysqli_error($koneksi));
							$no = 1;
							while($row = mysqli_fetch_array($sql)){
								?>

								<tr>

									<td><?php echo $angka++ ?></td>
									<td><?php echo $row['nama_hari'];?></td>
									<td><?php echo $row['range_jam'];?></td>
									<td><?php echo $row['nama_pelajaran'];?></td>
									<td><?php echo $row['sks'];?></td>
									<td><?php echo $row['nama_kelas'];?></td>
									<td><?php echo $row['nama_semester'];?></td>
									<td><?php echo $row['tahun'];?></td>
									<td><?php echo $row['nama_ruang'];?></td>
								</tr>

								<?php
								$no++;

							}
							?>
						</tbody>
					</table>


				</div>
				<!-- /.card-body -->
			</div>
			<!-- /.card -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
</section>
    <!-- /.content --

	