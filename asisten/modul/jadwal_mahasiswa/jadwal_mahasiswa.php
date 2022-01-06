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
<section class="content">
      <div class="container-fluid">
      <div class="row">
        <div class="col-12">
			<div class="card card-info">
              	<div class="card-header">
                	<h3 class="card-title">&nbsp;</h3>
              	</div>
						
						<form class="form-horizontal" action="?module=aksi_jadwal_mahasiswa" method="post">
							<div class="form-group">
								<label class="col-sm-3 control-label">Program Studi</label>
								<div class="col-sm-12">
									<?php  
									$sql=mysqli_query($koneksi, "SELECT * FROM prodi");
									?>
									<select name="prodi" class="form-control">
										<option value="">Pilih</option>
										<?php  
											while($data=mysqli_fetch_array($sql))
											{
												?>
													<option value="<?php echo $data['kode']?>"><?php echo $data["nama_prodi"] ?></option>
												<?php 
											}
										?>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Tahun Akademik</label>
								<div class="col-sm-12">
									<?php  
									$sql=mysqli_query($koneksi, "SELECT * FROM tahun_akademik");
									?>
									<select name="tahun" class="form-control">
										<option value="">Pilih</option>
										<?php  
											while($data=mysqli_fetch_array($sql))
											{
												?>
													<option value="<?php echo $data['kode']?>"><?php echo $data["tahun"] ?></option>
												<?php 
											}
										?>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Kelompok</label>
								<div class="col-sm-12">
									<?php  
									$sql=mysqli_query($koneksi, "SELECT * FROM kelas");
									?>
									<select name="kelas" class="form-control">
										<option value="">Pilih</option>
										<?php  
											while($data=mysqli_fetch_array($sql))
											{
												?>
													<option value="<?php echo $data['kode']?>"><?php echo $data["nama_kelas"] ?></option>
												<?php 
											}
										?>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Semester</label>
								<div class="col-sm-12">
									<?php  
									$sql=mysqli_query($koneksi, "SELECT * FROM semester");
									?>
									<select name="semester" class="form-control">
										<option value="">Pilih</option>
										<?php  
											while($data=mysqli_fetch_array($sql))
											{
												?>
													<option value="<?php echo $data['kode']?>"><?php echo $data["nama_semester"] ?></option>
												<?php 
											}
										?>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">&nbsp;</label>
								<div class="col-sm-12">
									<input type="submit" name="submit" class="btn btn-sm btn-primary" value="Proses">
								</div>
							</div>

						</form>
						
					</div>	
			</div>
		</div>
	</div>
</section>