
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
<!-- /.content-header -->
  <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
        	<?php
				if(isset($_GET['aksi']) == 'delete'){
					
					$delete = mysqli_query($koneksi, "DELETE FROM calon_asisten WHERE id_calon_asisten='$_GET[id]'");
					if($delete){
						echo '<div class="alert alert-success" role="alert">
							  <strong>Sukses!</strong> Data berhasil Dihapus
							  </div>';
					}else{
						echo '<div class="alert alert-danger" role="alert">
							  <strong>Sukses!</strong> Data berhasil Dihapus
							  </div>';
					}
				}
				
			?>
          <div class="card">
            <!-- <div class="card-header">
              <h3 class="card-title"> <a href="?module=input_calon_asisten"><button class="btn btn-warning">Input Data Calon Asisten</button></a></h3>
            </div> -->
            <!-- /.card-header -->
            <div class="card-body">
           	<div class="box-body table-responsive no-padding">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
				<tr>
					<th>No</th>
					<th>NIM</th>
					<th>Nama Calon Asisten</th>
					<th>Nilai DDP</th>
					<th>IPK</th>
					<th>Transkip Nilai</th>
					<th>Foto</th>
					<th>Username</th>
					<th>Aksi</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$sql =  mysqli_query($koneksi, "SELECT * FROM calon_asisten, user WHERE calon_asisten.username=user.username") or die(mysqli_error($koneksi));
					$no = 1;
					while($row = mysqli_fetch_array($sql)){
				?>
						
						<tr>
							
							<td><?php echo $no ?></td>
							<td><?php echo $row['nim'];?></td>
							<td><?php echo $row['nama'];?></td>
							<td><?php echo $row['nilai_ddp'];?></td>
							<td><?php echo $row['ipk'];?></td>
							<td><a href="file/<?php echo $row['transkip_nilai'];?>">Download File</a></td>
							<td><img src="foto/<?php echo $row['foto'];?>" width="100px"></td>
							<td><?php echo $row['username'];?></td>
							<td width="100">
								<a href="?module=edit_calon_asisten&id=<?php echo $row['id_calon_asisten']; ?>" title="Edit Data" class="btn btn-warning btn-sm"><i class="nav-icon fas fa-edit"></i></a>
								
								<a href="?module=calon_asisten&aksi=delete&id=<?php echo $row['id_calon_asisten']; ?>" title="Hapus Data" onclick="return confirm('Anda yakin akan menghapus data')" class="btn btn-danger btn-sm"> <i class="nav-icon fas fa-trash"></i></a>
							</td>
						</tr>
						
						<?php
						$no++;
					
				}
				?>
				</tbody>
				<tfoot>
					<tr>
						<th>No</th>
						<th>NIM</th>
						<th>Nama Calon Asisten</th>
						<th>Nilai DDP</th>
						<th>IPK</th>
						<th>Transkip Nilai</th>
						<th>Foto</th>
						<th>Username</th>
						<th>Aksi</th>
					</tr>
				</tfoot>
				</table>
				</div>
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

	