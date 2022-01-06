<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Calon Asisten</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Calon Asisten</li>
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
				
			    // cari data calon asisten dengan
			    $sql=mysqli_query($koneksi, "SELECT COUNT(nim) As jumlah FROM calon_asisten WHERE username='$_POST[nim]'");
			    $data=mysqli_fetch_array($sql);
			    if($data["jumlah"]>0)
				{
					?>
						<script type="text/javascript">
							alert("Data sudah diinput, jika ada perubahan silahkan lakukan pengeditan data");
							window.location.href="?module=calon_asisten";
						</script>
					<?php  
				}else{
					//pengecekan tipe harus pdf
						$tipe_file = $_FILES['file']['type']; //mendapatkan mime type
						if ($tipe_file == "application/pdf") //mengecek apakah file tersebu pdf atau bukan
							{
							 $nama_file_pdf 	    = $_FILES['file']['name'];
							 $file_temp 		    = $_FILES['file']['tmp_name']; //data temp yang di upload
							 $folder    		    = "file"; //folder tujuan

							 $nim					= $_POST['nim'];
							 $nama					= $_POST['nama'];
							 $username				= $_SESSION['username'];
							 $nilai_ddp				= $_POST["nilai_ddp"];
							 $ipk					= $_POST['ipk'];
							 $fileName              = $_FILES['foto']['name'];
			                 
			                 move_uploaded_file($_FILES['foto']['tmp_name'], "foto/" . $_FILES['foto']['name']);

							 move_uploaded_file($file_temp, "$folder/$nama_file_pdf"); //fungsi upload
							 $insert = mysqli_query($koneksi, "INSERT INTO calon_asisten(
																 					nim, 
																 					nama, 
																 					nilai_ddp, 
																 					ipk,
																 					transkip_nilai, 
																 					foto,
																 					username)
															 				 VALUES('$nim', 
																 					'$nama', 
																 					'$nilai_ddp',
																 					'$ipk',
																 					'$nama_file_pdf',
																 				    '$fileName',
																 				    '$username')") or die(mysqli_error($koneksi));
							
							if($insert){
								echo '<div class="alert alert-success" role="alert" window.location.replace="?module=calon_asisten";>
									  <strong>Berhasil</strong> Simpan Data Berhasil
									  </div>';
							}else{
								echo '<div class="alert alert-danger" role="alert" window.location.replace="?module=calon_asisten";>
									  <strong>failed!</strong> Simpan Data gagal
									  </div>';
							}	
						}else{
							?>
								<script type="text/javascript">
									alert("File Trnaskip Nilai harus dalam format PDF");
									window.location.href="?module=calon_asisten";
								</script>
							<?php  
						}
				}	
			}
			
			?>
			<div class="card card-warning">
              	<div class="card-header">
                    <h3 class="card-title">Form</h3>
                      </div>
						
						<form class="form-horizontal" action="" method="post" enctype='multipart/form-data'>
							<div class="form-group">
								<label class="col-sm-3 control-label">NIM</label>
								<div class="col-sm-12">
									<input type="text" name="nim" class="form-control" placeholder="NIM" required>
								</div>
							</div>							
							<div class="form-group">
								<label class="col-sm-3 control-label">Nama Calon Asisten</label>
								<div class="col-sm-12">
									<input type="text" name="nama" class="form-control" placeholder="Nama Calon Asisten" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Nilai DDP</label>
								<div class="col-sm-12">
									<input type="text" name="nilai_ddp" class="form-control" placeholder="Nilai DDP" required>
								</div>
							</div>		
							<div class="form-group">
								<label class="col-sm-3 control-label">IPK</label>
								<div class="col-sm-12">
									<input type="text" name="ipk" class="form-control" placeholder="IPK" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Transkip Nilai (File PDF)</label>
								<div class="col-sm-12">
									<input type="file" name="file" class="form-control">
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
									<input type="submit" name="add" class="btn btn-sm btn-warning" value="Simpan">
									<a href="?module=sub_kriteria" class="btn btn-sm btn-danger">Batal</a>
								</div>
							</div>

						</form>
						
					</div>	
			</div>
		</div>
	</div>
</section>


<script>
	function Desimal(obj){
    a=obj.value; 
    var reg=new RegExp(/[0-9]+(?:\.[0-9]{0,2})?/g)
    b=a.match(reg,'');
    if(b==null){
        obj.value='';
    }else{
        obj.value=b[0];
    }
   
}
</script>