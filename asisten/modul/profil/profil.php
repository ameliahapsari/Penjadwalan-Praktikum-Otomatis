<?php  
$query = mysqli_query($koneksi, "SELECT * FROM asisten  WHERE kode='$_SESSION[kode]'");
$row = mysqli_fetch_array($query);
?>

<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Profile</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Profile</li>
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<section class="content">
      <div class="container-fluid">
      <div class="row">
        <div class="col-12">
			<?php
			if(isset($_POST['add'])){
				
							 
							 $kode					= $_POST['kode'];
							 $nim					= $_POST['nim'];
							 $nama					= $_POST['nama'];
							 $alamat				= $_POST['alamat'];
							 $telepon				= $_POST["telepon"];
							 $fileName              = $_FILES['foto']['name'];
			                 
			                 move_uploaded_file($_FILES['foto']['tmp_name'], "foto/" . $_FILES['foto']['name']);

							 $insert = mysqli_query($koneksi, "UPDATE asisten SET
																 					nim 			='$nim', 
																 					nama 			='$nama', 
																 					telp 			='$telepon', 
																 					alamat 			='$alamat',
																 					foto 			='$fileName'
																 			  WHERE kode='$kode'") or die(mysqli_error($koneksi));
							
							if($insert){
								echo '<div class="alert alert-success" role="alert" window.location.replace="?module=calon_asisten";>
									  <strong>Berhasil</strong> Simpan Data Berhasil
									  </div>';
							}else{
								echo '<div class="alert alert-danger" role="alert" window.location.replace="?module=calon_asisten";>
									  <strong>failed!</strong> Simpan Data gagal
									  </div>';
							}	
						
			}
			?>

			<div class="card card-info">
              	<div class="card-header">
                    <h3 class="card-title">Form</h3>

                    <div class="card-tools">
                      <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                      </button>
                      <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                    </div>
                  </div>
						<form class="form-horizontal" action="" method="post" enctype='multipart/form-data'>
							<input type="hidden" name="kode" value="<?php echo $row['kode'] ?>" class="form-control" placeholder="NIM" required>
							<div class="form-group">
								<label class="col-sm-3 control-label">NIM</label>
								<div class="col-sm-12">
									<input type="text" name="nim" value="<?php echo $row['nim'] ?>" class="form-control" placeholder="NIM" required>
								</div>
							</div>							
							<div class="form-group">
								<label class="col-sm-3 control-label">Nama Asisten</label>
								<div class="col-sm-12">
									<input type="text" name="nama" value="<?php echo $row['nama'] ?>" class="form-control" placeholder="Nama Asisten" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Alamat</label>
								<div class="col-sm-12">
									<input type="text" name="alamat" value="<?php echo $row['alamat'] ?>" class="form-control" placeholder="Alamat" required>
								</div>
							</div>		
							<div class="form-group">
								<label class="col-sm-3 control-label">Telepon</label>
								<div class="col-sm-12">
									<input type="text" name="telepon" value="<?php echo $row['telp'] ?>" class="form-control" placeholder="Telepon" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Password</label>
								<div class="col-sm-12">
									<input type="password" name="password" value="<?php echo $row['password'] ?>" class="form-control" placeholder="Password" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Foto (JPG)</label>
								<div class="col-sm-12">
									<input type="file" name="foto" class="form-control" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">&nbsp;</label>
								<div class="col-sm-12">
									<input type="submit" name="add" class="btn btn-sm btn-primary" value="Simpan">
									<a href="?module=sub_kriteria" class="btn btn-sm btn-danger">Batal</a>
								</div>
							</div>

						</form>
						
					</div>	
			</div>
		</div>
	</div>
</section>