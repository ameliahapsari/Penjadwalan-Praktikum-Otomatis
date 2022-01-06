
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
				$sql =  mysqli_query($koneksi, "SELECT jadwalpelajaran.*, 
					                            matapelajaran.nama as mapel, 
					                            jam2.range_jam, jam2.sks, 
					                            kelas.nama_kelas, hari.nama as nama_hari, 
					                            ruang.nama as nama_ruang, 
					                            semester.nama_semester, tahun_akademik.tahun 
					                            FROM jadwalpelajaran, asisten, 
					                            matapelajaran, pengampu, 
					                            kelas, Ruang, hari, jam2, 
					                            semester, tahun_akademik
												WHERE jadwalpelajaran.kode_jam=jam2.kode AND 
												jadwalpelajaran.kode_ruang=ruang.kode AND 
												jadwalpelajaran.kode_hari=hari.kode AND 
												jadwalpelajaran.kode_pengampu=pengampu.kode AND 
												pengampu.kode_mk=matapelajaran.kode AND
												pengampu.kelas=kelas.kode AND 
												pengampu.kode_asisten=asisten.kode AND 
												pengampu.semester=semester.kode AND 
												pengampu.tahun_akademik=tahun_akademik.kode AND  
												pengampu.kelas='$_POST[kelas]' AND
												pengampu.semester='$_POST[semester]' AND
												pengampu.tahun_akademik='$_POST[tahun]'"
											) or die(mysqli_error($koneksi));
					$no = 1;
					while($row = mysqli_fetch_array($sql)){
				?>
						
						<tr>
							
							<td><?php echo $angka++ ?></td>
							<td><?php echo $row['nama_hari'];?></td>
							<td><?php echo $row['range_jam'];?></td>
							<td><?php echo $row['mapel'];?></td>
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
				<!-- <tfoot>
					<tr>
						<th>No</th>
						<th>Hari</th>
						<th>Jam</th>
						<th>Matakuliah</th>
						<th>SKS</th>
						<th>Kelas</th>
						<th>Semester</th>
						<th>Tahun</th>
						<th>Ruang</th>
					</tr>
				</tfoot> -->
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

	