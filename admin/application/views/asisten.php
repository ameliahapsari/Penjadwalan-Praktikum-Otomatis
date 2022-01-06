
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?php 
		
		echo "Asisten ";
		?>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
        <li class="active"><?php echo 'Asisten';?></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-body">
			<a href="<?php echo base_url();?>index.php/status/index"><button id="hapus_jadwal" class="btn btn-success pull-right" ><i class="icon-plus"></i> Status</button></a>
			<button type="button" class="btn btn-primary tambah_lelang" data-toggle="modal" data-target="#tambah_asisten" ><i class="fa fa-plus"></i> Create Asisten</button> <br><br>
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No</th>
                  <th>NIM</th>
                  <th>Nama</th>
                  <th>Alamat</th>
                  <th>Telepon</th>
                  <th>Status</th>
                  
                  <th></th>
                  
                </tr>
                </thead>
                <tbody id="semua_asisten">
				 <?php  
				 $i=1;
				  $semua_asisten = $this->M_Asisten->semua_asisten();
				  foreach($semua_asisten as $b){
					echo'<tr>
					  <td> '.$i.'</td>
					  <td>'.$b->nim.'</td>
					  <td>'.$b->nama.'</td>
					  <td> '.$b->alamat.'</td>
					  <td> '.$b->telp.'</td>
					  <td> '.$b->status.'</td>
					  <td><button type="button" id="'.$b->kode.'"class="btn btn-info edit" data-toggle="modal" data-target="#edit_asisten" ><i class="fa fa-edit"></i> Update</button> <button type="button" id="'.$b->kode.'" class="btn btn-danger hapus" data-toggle="modal" data-target="#hapus_asisten" ><i class="fa fa-ban"></i> Delete</button></td>
					  
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
  
  
	<div class="modal fade" id="tambah_asisten">
          <div class="modal-dialog-tambah">
            <div class="modal-content-tambah">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Create Asisten</h4>
              </div>
              <div class="modal-body">
                <div class="box-body">
              <form id="simpan_asisten">
                <!-- text input -->
                <div class="form-group">
                  <label>Nama Asisten</label>
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
                  <label>Status Asisten</label>
                  <select name="status" class="form-control" role="menu">
				  <?php 
				  $status=$this->M_Asisten->semua_status();
				  foreach($status as $g) {      
						echo'
						<li><option value="'.$g->kode.'">'.$g->status.'</option></li>
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
		
	
	<div class="modal fade" id="edit_asisten">
          <div class="modal-dialog">
            <div class="modal-content" id="form_edit">
              
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
    </div>
	
	
	<div class="modal fade" id="hapus_asisten">
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
				url: '<?php echo base_url('index.php/asisten/detail_asisten'); ?>',
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
								'<h4 class="modal-title">Update Asisten</h4>'+
							  '</div>'+
							  '<div class="modal-body">'+
								'<div class="box-body" >'+
								
								'<div class="form-group">'+
								  '<label>Nama Asisten</label>'+
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
								  '<label>Status Asisten</label>'+
								  '<select id="status_edit" name="status" role="menu" class="form-control"  >'+
										'<option value="'+data[i].kode_status+'">'+data[i].status+'</option>'+
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
							url: '<?php echo base_url('index.php/status/semua_status'); ?>',
							async: false,
							dataType: 'json',
						   success: function(data){
								var html = '';
								var j;
								for(j=0; j<data.length; j++){
								html+='<option value="'+data[j].kode+'">'+data[j].status+'</option>';
								}
							  $('#status_edit').append(html);
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
							 url:'<?php echo base_url();?>index.php/asisten/cek_asisten/'+id,
							 type:'post',
							 data:formData,
							 dataType: 'json',
							 processData:false,
							 contentType:false, 
							 cache:false,
							 async:false,
							  success: function(data){
							  if(data.success){
							  alert("Asisten Sudah ada.");
							  $('#simpan_edit')[0].reset();
							  }
							  else{
								$.ajax({
									 url:'<?php echo base_url();?>index.php/asisten/simpan_edit/'+id,
									 type:'post',
									 data:formData,
									 dataType: 'json',
									 processData:false,
									 contentType:false, 
									 cache:false,
									 async:false,
									  success: function(data){
									  if(data==true){
									  alert("Berhasil Mengedit Asisten.");
									  $('#edit_asisten').modal('hide');
										$('#simpan_edit')[0].reset();
									  document.location.reload(true);
									  }
									  else{
									  alert('Gagal mengedit Asisten');
									  }
									  $('#edit_asisten').modal('hide');
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

		$('#simpan_asisten').submit(function(e){
		    e.preventDefault(); 
			var formData = new FormData(this);
				$.ajax({
							 url:'<?php echo base_url();?>index.php/asisten/cek_asisten_awal',
							 type:'post',
							 data:formData,
							 dataType: 'json',
							 processData:false,
							 contentType:false, 
							 cache:false,
							 async:false,
							  success: function(data){
							  if(data.success){
							  alert("Asisten Sudah ada.");
							  document.location.reload(true);
							  }
							  else{
								$.ajax({
									 url:'<?php echo base_url();?>index.php/asisten/simpan_asisten',
									 type:'post',
									 data:formData,
									 dataType: 'json',
									 processData:false,
									 contentType:false, 
									 cache:false,
									 async:false,
									  success: function(data){
									  if(data==true){
									  alert("Berhasil Menambahkan Asisten.");
									  document.location.reload(true);
									  }
									  else{
									  alert('Gagal Menambahkan Asisten');
									  }
									  $('#tambah_asisten').modal('hide');
									  $('#simpan_asisten')[0].reset();
									  
								   },
								   error: function(){
									alert('Could not get Data from Database');
									
								   }
								 });
							  }
							  $('#tambah_asisten').modal('hide');
							  $('#simpan_asisten')[0].reset();
							  
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
				url: '<?php echo base_url('index.php/asisten/detail_asisten'); ?>',
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
								'<h4 class="modal-title">Delete Asisten '+data[i].nama+' ?</h4>'+
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
									 url:'<?php echo base_url();?>index.php/asisten/hapus_asisten/'+id,
									 dataType: 'json',
									 processData:false,
									 contentType:false, 
									 cache:false,
									 async:false,
									  success: function(data){
									  if(data==true){
									  alert("Berhasil Menghapus Asisten.");
									  document.location.reload(true);
									  }
									  else{
									  alert('Gagal menghapus Asisten');
									  }
									  $('#hapus_asisten').modal('hide');
									  
								   },
								   error: function(){
									alert('Could not get Data from Database');
									
								   }
								 });
								 
				
				});
			
			});
			
	
	});
</script>