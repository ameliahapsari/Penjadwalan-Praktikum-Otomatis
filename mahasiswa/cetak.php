<?php  
session_start();
include "koneksi.php";
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SPK CPI (Composite Performance Index) | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="images/logo.png" />
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed" onload="window.print()">
	<center><h2>HASIL PERHITUNGAN METODE CPI</h2></center>
	<HR>
<section class="content">
      <div class="row">
        <div class="col-12">

          <div class="card">
            <!-- /.card-header -->
            <div class="card-body">
            	<b>Matrik Perbandingan Berpasangan (X)</b>
            	<table id="example" class="table table-bordered table-striped">
                <thead>
					<tr>
						<th width="50">No</th>
						<th>Alternatif</th>
			            <?php
			            $stmt2x = mysqli_query($koneksi, "select * from kriteria");
			            while($row2x = mysqli_fetch_array($stmt2x)){
			            ?>
						<th><?php echo $row2x['nama_kriteria'] ?></th>
			            <?php
			            }
			            ?>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>-</td>
						<td>Bobot</td>
			            <?php
			            $stmt2x1 = mysqli_query($koneksi, "select * from kriteria");
			            while($row2x1 = mysqli_fetch_array($stmt2x1)){
			            ?>
						<td><?php echo $row2x1['bobot_kriteria'] ?> % ( <?php echo $row2x1['jenis_kriteria'] ?> )</td>
			            <?php
			            }
			            ?>
					</tr>
					<?php
					$stmtx = mysqli_query($koneksi, "select * from alternatif");
					$noxx = 1;
					while($rowx = mysqli_fetch_array($stmtx)){
					?>
					<tr>
						<td><?php echo $noxx++ ?></td>
						<td><?php echo $rowx['nama_alternatif'] ?></td>
			            <?php
			            $stmt3x = mysqli_query($koneksi, "select * from kriteria");
			            
			            while($row3x = mysqli_fetch_array($stmt3x)){
			            ?>
						<td>
			                <?php
			                $stmt4x = mysqli_query($koneksi, "select * from nilai where id_kriteria='".$row3x['id_kriteria']."' and id_alternatif='".$rowx['id_alternatif']."'");
			                while($row4x = mysqli_fetch_array($stmt4x)){
			                	
			                    echo $row4x['nilai'];
			                    
			                }
			                ?>
			            </td>
			            <?php
			            }
			            ?>
					</tr>
					<?php
					}
					?>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="2">Nilai Min</th>
			            <?php
			            $stmt3x = mysqli_query($koneksi, "select * from kriteria"); 
			            while($row3x = mysqli_fetch_array($stmt3x)){
			            	
			            		$min=mysqli_fetch_array(mysqli_query($koneksi, "SELECT nilai FROM nilai ORDER BY id_nilai ASC LIMIT 1"));
			            		$sql2=mysqli_query($koneksi, "SELECT * FROM nilai WHERE id_kriteria='$row3x[id_kriteria]'");
			            		while ($r2=mysqli_fetch_array($sql2)) {
			            			
			            			if($min<$r2["nilai"]){
			            				$min=$min;
			            			}else{
			            				$min=$r2["nilai"];
			            			}
			            		}
			            ?>
						<th>
			                <?php echo $min; ?>
			            </th>
			            <?php
			            }
			            ?>
					</tr>
				</tfoot>
				</table>
				</table>

				<br>
				<b>Bobot Kepentingan (P) Dan Tren nya </b>

              <table id="example" class="table table-bordered table-striped">
                <thead>
					<tr>
						
						<th>Kriteria</th>
			            <?php
			            $stmt2x = mysqli_query($koneksi, "select * from kriteria");
			            while($row2x = mysqli_fetch_array($stmt2x)){
			            ?>
						<th><?php echo $row2x['nama_kriteria'] ?></th>
			            <?php
			            }
			            ?>
					</tr>
				</thead>
				<tbody>
					<tr>
						
						<td>Bobot</td>
			            <?php
			            $stmt2x1 = mysqli_query($koneksi, "select * from kriteria");
			            while($row2x1 = mysqli_fetch_array($stmt2x1)){
			            ?>
						<td><?php echo $row2x1['bobot_kriteria'] ?> %</td>
			            <?php
			            }
			            ?>
					</tr>
					<tr>
						
						<td>Tren</td>
			            <?php
			            $stmt2x1 = mysqli_query($koneksi, "select * from kriteria");
			            while($row2x1 = mysqli_fetch_array($stmt2x1)){
			            ?>
						<td><?php echo $row2x1['jenis_kriteria'] ?></td>
			            <?php
			            }
			            ?>
					</tr>
				</tbody>
				
				</table>

				<br>
				
				<?php  
					//kosongkan tabel hasil perhitungan kriteria
					mysqli_query($koneksi, "DELETE FROM hasil_perhitungan_kriteria");
					$query=mysqli_query($koneksi, "SELECT * FROM kriteria");
					while($data=mysqli_fetch_array($query)){
						?>
						<h3>Perhitungan Nilai <?php echo $data["nama_kriteria"] ?></h3>
						<table id="example" class="table table-bordered table-striped">
		                <thead>
							<tr>
								<th width="50">No</th>
								<th>Alternatif</th>
					            <?php
					            $stmt2x = mysqli_query($koneksi, "SELECT * FROM kriteria WHERE id_kriteria='$data[id_kriteria]'");
					            while($row2x = mysqli_fetch_array($stmt2x)){
					            ?>
								<th colspan="3"><?php echo $row2x['nama_kriteria'] ?></th>
					            <?php
					            }
					            ?>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>-</td>
								<td></td>
								<td>Nilai N</td>
					            <?php
					            $stmt2x1 = mysqli_query($koneksi, "SELECT * FROM kriteria WHERE id_kriteria='$data[id_kriteria]'");
					            $row2x1 = mysqli_fetch_array($stmt2x1);
					            ?>
								<td>
									<?php 
										if ($row2x1["jenis_kriteria"]=="Positif") {
											echo "Nilai N/Min";
										}else{
											echo "Min/Nilai N";
										}

									 ?>
							    </td>
					            
					            <?php
					            $stmt2x2 = mysqli_query($koneksi, "SELECT * FROM kriteria WHERE id_kriteria='$data[id_kriteria]'");
					            $row2x2 = mysqli_fetch_array($stmt2x2)
					            ?>
								<td>
									<?php 
										if ($row2x2["jenis_kriteria"]=="Positif") {
											echo "Nilai N/Min * 100";
										}else{
											echo "Min/Nilai N * 100";
										}

									 ?>
							    </td>
					            
							</tr>

							<?php
							
							$stmtx = mysqli_query($koneksi, "select * from alternatif");
							$noxx = 1;
							while($rowx = mysqli_fetch_array($stmtx)){
							?>
							<tr>
								<td><?php echo $noxx++ ?></td>
								<td><?php echo $rowx['nama_alternatif'] ?></td>
					            <?php
					            $stmt3x = mysqli_query($koneksi, "SELECT * FROM kriteria WHERE id_kriteria='$data[id_kriteria]'"); 
					            while($row3x = mysqli_fetch_array($stmt3x)){
					            	$max=0;
					            	
					            	$sql=mysqli_query($koneksi, "SELECT * FROM kriteria WHERE id_kriteria='$row3x[id_kriteria]'");
					            	while($r=mysqli_fetch_array($sql)){
					            		$sql2=mysqli_query($koneksi, "SELECT * FROM nilai WHERE id_kriteria='$r[id_kriteria]'");
					            		while ($r2=mysqli_fetch_array($sql2)) {
					            			if($max>$r2["nilai"]){
					            				$max=$max;
					            			}else{
					            				$max=$r2["nilai"];
					            			}
					            		}

					            		$min=mysqli_fetch_array(mysqli_query($koneksi, "SELECT nilai FROM nilai ORDER BY id_nilai ASC LIMIT 1"));
					            		$sql2=mysqli_query($koneksi, "SELECT * FROM nilai WHERE id_kriteria='$r[id_kriteria]'");
					            		while ($r2=mysqli_fetch_array($sql2)) {
					            			
					            			if($min<$r2["nilai"]){
					            				$min=$min;
					            			}else{
					            				$min=$r2["nilai"];
					            			}
					            		}
					            	}
					            ?>
								<td>
					                <?php
					                $stmt4x = mysqli_query($koneksi, "select * from nilai where id_kriteria='".$row3x['id_kriteria']."' and id_alternatif='".$rowx['id_alternatif']."'");
					                while($row4x = mysqli_fetch_array($stmt4x)){
					                	
					            
					                    echo $row4x["nilai"];
					                    
					                }
					                ?>
					            </td>
					            <td>
					                <?php
					                $stmt4x = mysqli_query($koneksi, "select * from nilai where id_kriteria='".$row3x['id_kriteria']."' and id_alternatif='".$rowx['id_alternatif']."'");
					                while($row4x = mysqli_fetch_array($stmt4x)){
					                	
					                	if($row3x["jenis_kriteria"]=="Positif"){
					                		$nilai=$row4x["nilai"]/$min;
					                	}elseif($row3x["jenis_kriteria"]=="Negatif"){
					                		$nilai=$min/$row4x["nilai"];
					                	}
					                    echo $nilai;
					                    
					                }
					                ?>
					            </td>
					            <td>
					                <?php
					                $stmt4x = mysqli_query($koneksi, "select * from nilai where id_kriteria='".$row3x['id_kriteria']."' and id_alternatif='".$rowx['id_alternatif']."'");
					                while($row4x = mysqli_fetch_array($stmt4x)){
					                	
					                	if($row3x["jenis_kriteria"]=="Positif"){
					                		$nilai=$row4x["nilai"]/$min*100;
					                	}elseif($row3x["jenis_kriteria"]=="Negatif"){
					                		$nilai=$min/$row4x["nilai"]*100;
					                	}
					                    echo $nilai;
					                    //isert hasil perhitungan tiap kriteria masing masing alternatif
										mysqli_query($koneksi, "INSERT INTO hasil_perhitungan_kriteria (id_alternatif, id_kriteria, hasil) VALUES ('$rowx[id_alternatif]', '$row3x[id_kriteria]','$nilai')");
					                    
					                }
					                ?>
					            </td>
					            <?php
					            }
					            ?>
							</tr>
							<?php

							}
							?>
						</tbody>
						
						</table>
						<br>
						<?php 
					}
				?>
              
			<h3>Perhitungan CPI</h3>
              <table id="example" class="table table-bordered table-striped">
                <thead>
					<tr>
						<th width="50">No</th>
						<th>Alternatif</th>
			            <th>Perhitungan CPI</th>
			            <th>Hasil</th>
					</tr>
				</thead>
				<tbody>
					<?php

					//kosongkan terlebih dahulu tabekl hasil
					mysqli_query($koneksi, "DELETE FROM hasil");
					$stmtx = mysqli_query($koneksi, "SELECT * FROM alternatif");
					$noxx = 1;
					while($rowx = mysqli_fetch_array($stmtx)){
						$cpi=0;
					?>
					<tr>
						<td><?php echo $noxx++ ?></td>
						<td><?php echo $rowx['nama_alternatif'] ?></td>
			            <td>	
			            <?php  
			            $no=1;
			            $r=mysqli_fetch_array(mysqli_query($koneksi,"SELECT count(id_kriteria) AS jumlah FROM kriteria"));
			            $batas=$r["jumlah"]-1;
			            //hitung CPI setiap alternatif
			            $sql=mysqli_query($koneksi, "SELECT * FROM hasil_perhitungan_kriteria, alternatif, kriteria
						WHERE hasil_perhitungan_kriteria.id_alternatif=alternatif.id_alternatif AND hasil_perhitungan_kriteria.id_kriteria=kriteria.id_kriteria AND hasil_perhitungan_kriteria.id_alternatif='$rowx[id_alternatif]'");
						while($result=mysqli_fetch_array($sql))
						{
							echo"( ";
							echo $result["hasil"]." x ".$result["bobot_kriteria"]/100;
							echo " )";
							if($no<=$batas)
							{
								echo " + ";
							}
			            	$cpi=$cpi + ($result["hasil"]*($result["bobot_kriteria"]/100));
			            	$no++;
						}
						

						//insert ke tabel hasil
						mysqli_query($koneksi, "INSERT INTO hasil (id_alternatif, hasil) VALUES ('$rowx[id_alternatif]', '$cpi')");
			            ?>
			            
			            </td>
			            <td><?php echo $cpi; ?></td>
					</tr>
					<?php
					}
					?>
				</tbody>
				
				</table>
				<br>
				
				<br>
				<h3>Rangking</h3>
              <table id="example" class="table table-bordered table-striped">
                <thead>
					<tr>
						<th width="50">No</th>
						<th>Alternatif</th>
			            <th>Hasil</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$stmtx = mysqli_query($koneksi, "SELECT * FROM hasil, alternatif WHERE hasil.id_alternatif=alternatif.id_alternatif ORDER BY hasil.hasil DESC");
					$noxx = 1;
					while($rowx = mysqli_fetch_array($stmtx)){
					?>
					<tr>
						<td><?php echo $noxx++ ?></td>
						<td><?php echo $rowx['nama_alternatif'] ?></td>
						<td><?php echo $rowx['hasil'] ?></td>
			            
					</tr>
					<?php } ?>
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
    <!-- /.content -->
 <!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

</body>
</html>
