
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<?php 

			echo "Mahasiswa";
			?>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
			<li class="active"><?php echo 'Mahasiswa';?></li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<!-- /.box-header -->
					<div class="box-body">
						<!-- <a href="<?php echo base_url();?>index.php/jurusan/index"><button id="hapus_jadwal" class="btn btn-success pull-right" ><i class="icon-plus"></i> Status</button></a> -->
						<button type="button" class="btn btn-primary tambah_lelang" data-toggle="modal" data-target="#tambah_mahasiswa" ><i class="fa fa-plus"></i> Create Mahasiswa</button> <br><br>
						<table id="example1" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>No</th>
									<th>NIM</th>
									<th>Nama</th>
									<th>Alamat</th>
									<th>Telepon</th>
									<th>Jurusan</th>
									<th>Semester</th>

									<th></th>

								</tr>
							</thead>
							<tbody id="semua_mahasiswa">
								<?php  
								$i=1;
								$semua_mahasiswa = $this->M_Mahasiswa->semua_mahasiswa();
								foreach($semua_mahasiswa as $b){
									echo'<tr>
									<td> '.$i.'</td>
									<td>'.$b->nim.'</td>
									<td>'.$b->nama.'</td>
									<td> '.$b->alamat.'</td>
									<td> '.$b->telp.'</td>
									<td> '.$b->nama_jurusan.'</td>
									<td> '.$b->nama_semester.'</td>

									<td><button type="button" id="'.$b->kode.'"class="btn btn-info edit" data-toggle="modal" data-target="#edit_mahasiswa" ><i class="fa fa-edit"></i> Update</button> <button type="button" id="'.$b->kode.'" class="btn btn-danger hapus" data-toggle="modal" data-target="#hapus_mahasiswa" ><i class="fa fa-ban"></i> Delete</button></td>

									</tr>';
									$i++;
								}

								?>

							</tbody>
							<tfoot>
								<tr>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>


<div class="modal fade" id="tambah_mahasiswa">
	<div class="modal-dialog-tambah">
		<div class="modal-content-tambah">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">Create Mahasiswa</h4>
				</div>
				<div class="modal-body">
					<div class="box-body">
						<form id="simpan_mahasiswa">
							<!-- text input -->
							<div class="form-group">
								<label>Nama Mahasiswa</label>
								<input type="text" name="nama" class="form-control" placeholder="Nama">
							</div>
							<div class="form-group">
								<label>NIM</label>
								<input type="text" name="nim"  class="form-control" placeholder="NIM">
							</div>
							<div class="form-group">
								<label>Alamat</label>
								<input type="text" name="alamat" class="form-control" placeholder="Alamat">
							</div>
							<div class="form-group">
								<label>Telepon</label>
								<input type="text" name="telepon" class="form-control" placeholder="Telepon">
							</div>
							<div class="form-group">
								<label>Jurusan</label>
								<select name="jurusan" class="form-control" role="menu">
									<?php 
									$jurusan=$this->M_Mahasiswa->semua_jurusan();
									foreach($jurusan as $g) {      
										echo'
										<li><option value="'.$g->kode.'">'.$g->nama_jurusan.'</option></li>
										';
									}	
									?>	
								</select>
							</div>	
							<div class="form-group">
								<label>Semester</label>
								<select name="id_semester" class="form-control" role="menu">
									<?php 
									$semester=$this->M_Mahasiswa->semua_semester();
									foreach($semester as $h) {      
										echo'
										<li><option value="'.$h->kode.'">'.$h->nama_semester.'</option></li>
										';
									}	
									?>	
								</select>
							</div>
							<div class="form-group">
								<label>Kelas</label>
								<select name="id_kelas" class="form-control" role="menu">
									<?php 
									$kelas=$this->M_Mahasiswa->semua_kelas();
									foreach($kelas as $i) {      
										echo'
										<li><option value="'.$i->kode.'">'.$i->nama_kelas.'</option></li>
										';
									}	
									?>	
								</select>
							</div>	
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save</button>
					</div>
				</form> 
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>


	<div class="modal fade" id="edit_mahasiswa">
		<div class="modal-dialog">
			<div class="modal-content" id="form_edit">

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>


	<div class="modal fade" id="hapus_mahasiswa">
		<div class="modal-dialog">
			<div class="modal-content" id="form_hapus">

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<script type='text/javascript'>
		$(document).ready(function() {

			$('.edit').on("click", function(){
				var id= this.id;
				$.ajax({
					type: 'ajax',
					method: 'get',
					url: '<?php echo base_url('index.php/mahasiswa/detail_mahasiswa'); ?>',
					data: {id: id},
					async: false,
					dataType: 'json',
					success: function(data){
						var html = '';
						var i;
						for(i=0; i<data.length; i++){

							html ='<form class="userregisterModal" id="simpan_edit">'+
							'<div class="modal-header">'+
							'<button type="button" class="close" data-dismiss="modal" aria-label="Close">'+
							'<span aria-hidden="true">&times;</span>'+
							'</button>'+
							'<h4 class="modal-title">Update Mahasiswa</h4>'+
							'</div>'+
							'<div class="modal-body">'+
							'<div class="box-body" >'+
							'<div class="form-group">'+
							'<label>Nama Mahasiswa</label>'+
							'<input type="text" name="nama" value="'+data[i].nama+'"class="form-control" placeholder="Nama">'+
							'</div>'+
							'<div class="form-group">'+
							'<label>NIM</label>'+
							'<input type="text" name="nim"  value="'+data[i].nim+'" class="form-control" placeholder="NIM">'+
							'</div>'+
							'<div class="form-group">'+
							'<label>Alamat</label>'+
							'<input type="text" name="alamat"  value="'+data[i].alamat+'" class="form-control" placeholder="Alamat">'+
							'</div>'+
							'<div class="form-group">'+
							'<label>Telepon</label>'+
							'<input type="text" name="telepon"  value="'+data[i].telp+'" class="form-control" placeholder="Telepon">'+
							'</div>'+
							'<div class="form-group">'+
							'<label>Jurusan</label>'+
							'<select id="jurusan_edit" name="jurusan" role="menu" class="form-control"  >'+
							'<option value="'+data[i].kode+'">'+data[i].nama_jurusan+'</option>'+
							'</select>'+
							'</div>'+
							'</div>'+
							'</div>'+
							'<div class="modal-footer">'+
							'<button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>'+
							'<button type="submit" class="btn btn-primary" >Save</button>'+
							'</div>'+
							'</form>';

							$('#form_edit').html(html);
							$.ajax({
								type: 'ajax',
								method: 'get',
								url: '<?php echo base_url('index.php/jurusan/semua_jurusan'); ?>',
								async: false,
								dataType: 'json',
								success: function(data){
									var html = '';
									var j;
									for(j=0; j<data.length; j++){
										html+='<option value="'+data[j].kode+'">'+data[j].nama_jurusan+'</option>';
									}
									$('#jurusan_edit').append(html);
								},
								error: function(){
									alert('Could not get Data from Database');
								}
							});
						}	
					},
					error: function(){
						alert('Could not get Data from Database');
					}
				});

				$('#simpan_edit').submit(function(e){
					e.preventDefault(); 
					var formData = new FormData(this);
					$.ajax({
						url:'<?php echo base_url();?>index.php/mahasiswa/cek_mahasiswa/'+id,
						type:'post',
						data:formData,
						dataType: 'json',
						processData:false,
						contentType:false, 
						cache:false,
						async:false,
						success: function(data){
							if(data.success){
								alert("Mahasiswa Sudah ada.");
								$('#simpan_edit')[0].reset();
							}
							else{
								$.ajax({
									url:'<?php echo base_url();?>index.php/mahasiswa/simpan_edit/'+id,
									type:'post',
									data:formData,
									dataType: 'json',
									processData:false,
									contentType:false, 
									cache:false,
									async:false,
									success: function(data){
										if(data==true){
											alert("Berhasil Mengedit Mahasiswa.");
											$('#edit_mahasiswa').modal('hide');
											$('#simpan_edit')[0].reset();
											document.location.reload(true);
										}
										else{
											alert('Gagal mengedit Mahasiswa');
										}
										$('#edit_mahasiswa').modal('hide');
										$('#simpan_edit')[0].reset();

									},
									error: function(){
										alert('Could not get Data from Database');

									}
								});
							}

						},
						error: function(){
							alert('Could not get Data from Database');

						}
					});


				});
			});

$('#simpan_mahasiswa').submit(function(e){
	e.preventDefault(); 
	var formData = new FormData(this);
	$.ajax({
		url:'<?php echo base_url();?>index.php/mahasiswa/cek_mahasiswa_awal',
		type:'post',
		data:formData,
		dataType: 'json',
		processData:false,
		contentType:false, 
		cache:false,
		async:false,
		success: function(data){
			if(data.success){
				alert("Mahasiswa Sudah ada.");
				document.location.reload(true);
			}
			else{
				$.ajax({
					url:'<?php echo base_url();?>index.php/mahasiswa/simpan_mahasiswa',
					type:'post',
					data:formData,
					dataType: 'json',
					processData:false,
					contentType:false, 
					cache:false,
					async:false,
					success: function(data){
						if(data==true){
							alert("Berhasil Menambahkan Mahasiswa.");
							document.location.reload(true);
						}
						else{
							alert('Gagal Menambahkan Mahasiswa');
						}
						$('#tambah_mahasiswa').modal('hide');
						$('#simpan_mahasiswa')[0].reset();

					},
					error: function(){
						alert('Could not get Data from Database');

					}
				});
			}
			$('#tambah_mahasiswa').modal('hide');
			$('#simpan_mahasiswa')[0].reset();

		},
		error: function(){
			alert('Could not get Data from Database');

		}
	});



});
$('.hapus').on("click", function(){
	var id= this.id;
	$.ajax({
		type: 'ajax',
		method: 'get',
		url: '<?php echo base_url('index.php/mahasiswa/detail_mahasiswa'); ?>',
		data: {id: id},
		async: false,
		dataType: 'json',
		success: function(data){
			var html = '';
			var i;
			for(i=0; i<data.length; i++){

				html ='<form class="userregisterModal" id="delete">'+
				'<div class="modal-header">'+
				'<button type="button" class="close" data-dismiss="modal" aria-label="Close">'+
				'<span aria-hidden="true">&times;</span>'+
				'</button>'+
				'<h4 class="modal-title">Delete Mahasiswa '+data[i].nama+' ?</h4>'+
				'</div>'+

				'<div class="modal-footer">'+
				'<button type="button" class="btn btn-success pull-left" data-dismiss="modal">Batal</button>'+
				'<button type="submit" class="btn btn-danger" >Delete</button>'+
				'</div>'+
				'</form>';
			}
			$('#form_hapus').html(html);
		},
		error: function(){
			alert('Could not get Data from Database');
		}
	});
	$('#delete').submit(function(){

		$.ajax({
			url:'<?php echo base_url();?>index.php/mahasiswa/hapus_mahasiswa/'+id,
			dataType: 'json',
			processData:false,
			contentType:false, 
			cache:false,
			async:false,
			success: function(data){
				if(data==true){
					alert("Berhasil Menghapus Mahasiswa.");
					document.location.reload(true);
				}
				else{
					alert('Gagal menghapus Mahasiswa');
				}
				$('#hapus_mahasiswa').modal('hide');

			},
			error: function(){
				alert('Could not get Data from Database');

			}
		});


	});

});


});
</script>