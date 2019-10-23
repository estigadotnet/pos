<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Produk By Mfikri.com">
    <meta name="author" content="M Fikri Setiadi">

    <title>Welcome To Point of Sale Apps</title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url().'assets/css/bootstrap.min.css'?>" rel="stylesheet">
	  <link href="<?php echo base_url().'assets/css/style.css'?>" rel="stylesheet">
	  <link href="<?php echo base_url().'assets/css/font-awesome.css'?>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?php echo base_url().'assets/css/4-col-portfolio.css'?>" rel="stylesheet">
    <link href="<?php echo base_url().'assets/css/dataTables.bootstrap.min.css'?>" rel="stylesheet">
    <link href="<?php echo base_url().'assets/css/jquery.dataTables.min.css'?>" rel="stylesheet">

</head>

<body>

    <!-- Navigation -->
   <?php
        $this->load->view('admin/menu');
   ?>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
            <center><?php echo $this->session->flashdata('msg');?></center>
                <h1 class="page-header">Data
                    <small>Toko</small>
                    <!-- <div class="pull-right"><a href="#" class="btn btn-sm btn-success" data-toggle="modal" data-target="#largeModal"><span class="fa fa-plus"></span> Tambah Pengguna</a></div> -->
                </h1>
            </div>
        </div>
        <!-- /.row -->
        <!-- Projects Row -->
        <div class="row">
            <div class="col-lg-12">
            <table class="table table-bordered table-condensed" style="font-size:11px;" id="mydata">
                <thead>
                    <tr>
                        <!-- <th style="text-align:center;width:40px;">No</th> -->
                        <th>Nama</th>
                        <th>Alamat</th>
                        <th>Kota</th>
                        <th>No. HP</th>
                        <th style="width:140px;text-align:center;">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                    $no=0;
                    foreach ($data->result_array() as $a):
                        $no++;
                        $toko_id=$a['toko_id'];
                        $toko_nama=$a['toko_nama'];
                        $toko_alamat=$a['toko_alamat'];
                        $toko_nohp=$a['toko_nohp'];
                        $toko_kota=$a['toko_kota'];
                ?>
                    <tr>
                        <!-- <td style="text-align:center;"><?php echo $no;?></td> -->
                        <td><?php echo $toko_nama;?></td>
                        <td><?php echo $toko_alamat;?></td>
                        <td><?php echo $toko_kota;?></td>
                        <td><?php echo $toko_nohp;?></td>
                        <td style="text-align:center;">
                            <a class="btn btn-xs btn-warning" href="#modalEditPelanggan<?php echo $toko_id?>" data-toggle="modal" title="Edit"><span class="fa fa-edit"></span> Edit</a>
                            <!-- <a class="btn btn-xs btn-danger" href="#modalHapusPelanggan<?php echo $id?>" data-toggle="modal" title="Hapus"><span class="fa fa-close"></span> Nonaktifkan</a> -->
                        </td>
                    </tr>
                <?php endforeach;?>
                </tbody>
            </table>
            </div>
        </div>
        <!-- /.row -->
        <!-- ============ MODAL ADD =============== -->
        <div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
            <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 class="modal-title" id="myModalLabel">Setup Toko</h3>
            </div>
            <form class="form-horizontal" method="post" action="<?php echo base_url().'admin/toko/tambah_toko'?>">
                <div class="modal-body">

                    <div class="form-group">
                        <label class="control-label col-xs-3" >Nama</label>
                        <div class="col-xs-9">
                            <input name="toko_nama" class="form-control" type="text" placeholder="Input Nama Toko..." style="width:280px;" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-3" >Alamat</label>
                        <div class="col-xs-9">
                            <input name="toko_alamat" class="form-control" type="text" placeholder="Input Alamat..." style="width:280px;" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-3" >Kota</label>
                        <div class="col-xs-9">
                            <input name="toko_kota" class="form-control" type="text" placeholder="Input Kota..." style="width:280px;" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-3" >No. HP</label>
                        <div class="col-xs-9">
                            <input name="toko_nohp" class="form-control" type="text" placeholder="Input No. HP..." style="width:280px;" required>
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
                    <button class="btn btn-info">Simpan</button>
                </div>
            </form>
            </div>
            </div>
        </div>

        <!-- ============ MODAL EDIT =============== -->
        <?php
                    foreach ($data->result_array() as $a) {
                        $toko_id=$a['toko_id'];
                        $toko_nama=$a['toko_nama'];
                        $toko_alamat=$a['toko_alamat'];
                        $toko_nohp=$a['toko_nohp'];
                        $toko_kota=$a['toko_kota'];
                    ?>
                <div id="modalEditPelanggan<?php echo $toko_id?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
                    <div class="modal-dialog">
                    <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h3 class="modal-title" id="myModalLabel">Edit Toko</h3>
                    </div>
                    <form class="form-horizontal" method="post" action="<?php echo base_url().'admin/toko/edit_toko'?>">
                        <div class="modal-body">
                            <input name="toko_id" type="hidden" value="<?php echo $toko_id;?>">

                    <div class="form-group">
                        <label class="control-label col-xs-3" >Nama</label>
                        <div class="col-xs-9">
                            <input name="toko_nama" class="form-control" type="text" value="<?php echo $toko_nama;?>" placeholder="Input Nama Toko..." style="width:280px;" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-3" >Alamat</label>
                        <div class="col-xs-9">
                            <input name="toko_alamat" class="form-control" type="text" value="<?php echo $toko_alamat;?>" placeholder="Input Alamat..." style="width:280px;" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-3" >Kota</label>
                        <div class="col-xs-9">
                            <input name="toko_kota" class="form-control" type="text" value="<?php echo $toko_kota;?>" placeholder="Input Kota..." style="width:280px;" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-3" >No. HP</label>
                        <div class="col-xs-9">
                            <input name="toko_nohp" class="form-control" type="text" value="<?php echo $toko_nohp;?>" placeholder="Input No. HP..." style="width:280px;">
                        </div>
                    </div>

                    <!-- <div class="form-group">
                        <label class="control-label col-xs-3" >Ulangi Password</label>
                        <div class="col-xs-9">
                            <input name="password2" class="form-control" type="password" placeholder="Ulangi Password..." style="width:280px;">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-3" >Level</label>
                        <div class="col-xs-9">
                            <select name="level" class="form-control" style="width:280px;" required>
                            <?php if ($level=='1'):?>
                                <option value="1" selected>Admin</option>
                                <option value="2">Kasir</option>
                            <?php else:?>
                                <option value="1">Admin</option>
                                <option value="2" selected>Kasir</option>
                            <?php endif;?>
                            </select>
                        </div>
                    </div> -->

                </div>
                        <div class="modal-footer">
                            <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
                            <button type="submit" class="btn btn-info">Update</button>
                        </div>
                    </form>
                </div>
                </div>
                </div>
            <?php
        }
        ?>

        <!--END MODAL-->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p style="text-align:center;">Copyright &copy; <?php echo '2017';?> by M Fikri Setiadi</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="<?php echo base_url().'assets/js/jquery.js'?>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url().'assets/js/bootstrap.min.js'?>"></script>
    <script src="<?php echo base_url().'assets/js/dataTables.bootstrap.min.js'?>"></script>
    <script src="<?php echo base_url().'assets/js/jquery.dataTables.min.js'?>"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#mydata').DataTable();
        } );
    </script>

</body>

</html>
