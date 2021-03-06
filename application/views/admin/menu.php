 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo base_url().'welcome'?>">Point of Sale</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                   <?php $h=$this->session->userdata('akses'); ?>
                    <?php $u=$this->session->userdata('user'); ?>
                    <?php if($h=='1'){ ?>
                      <!-- menu setup -->
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" title="Setup"><span class="fa fa-cogs" aria-hidden="true"></span> Setup</a>
                        <ul class="dropdown-menu">
                          <li><a href="<?php echo base_url().'admin/toko'?>"><span class="fa fa-home" aria-hidden="true"></span> Toko</a></li>
                          <li><a href="<?php echo base_url().'admin/pengguna'?>"><span class="fa fa-users" aria-hidden="true"></span> Pengguna</a></li>
                          <li><a href="<?php echo base_url().'admin/supplier'?>"><span class="fa fa-truck" aria-hidden="true"></span> Supplier</a></li>
                          <li><a href="<?php echo base_url().'admin/kategori'?>"><span class="fa fa-sitemap" aria-hidden="true"></span> Kategori</a></li>
                          <li><a href="<?php echo base_url().'admin/barang'?>"><span class="fa fa-shopping-cart" aria-hidden="true"></span> Barang</a></li>
                        </ul>
                      </li>
                      <!--ending dropdown-->
                     <!--dropdown-->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" title="Transaksi"><span class="fa fa-shopping-cart" aria-hidden="true"></span> Transaksi</a>
                        <ul class="dropdown-menu">
                            <li><a href="<?php echo base_url().'admin/penjualan'?>"><span class="fa fa-shopping-bag" aria-hidden="true"></span> Penjualan (Eceran)</a></li>
                            <li><a href="<?php echo base_url().'admin/penjualan_grosir'?>"><span class="fa fa-cubes" aria-hidden="true"></span> Penjualan (Grosir)</a></li>
                            <li><a href="<?php echo base_url().'admin/retur'?>"><span class="fa fa-refresh" aria-hidden="true"></span> Retur</a></li>
                            <li><a href="#input_nofaktur" data-toggle="modal"><span class="fa fa-print" aria-hidden="true"></span> Cetak Ulang Faktur Penjualan</a></li>
                            <!-- <li><a href="#input_nofaktur_eceran" data-toggle="modal"><span class="fa fa-print" aria-hidden="true"></span> Cetak Faktur Penjualan Eceran</a></li>
                            <li><a href="#input_nofaktur_grosir" data-toggle="modal"><span class="fa fa-print" aria-hidden="true"></span> Cetak Faktur Penjualan Grosir</a></li> -->
                        </ul>
                    </li>
                    <!--ending dropdown-->
                    <li>
                        <a href="<?php echo base_url().'admin/grafik'?>"><span class="fa fa-line-chart"></span> Grafik</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url().'admin/laporan'?>"><span class="fa fa-file"></span> Laporan</a>
                    </li>
                    <?php }?>
                    <?php if($h=='2'){ ?>
                      <!--dropdown-->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" title="Transaksi"><span class="fa fa-shopping-cart" aria-hidden="true"></span> Transaksi</a>
                        <ul class="dropdown-menu">
                            <li><a href="<?php echo base_url().'admin/penjualan'?>"><span class="fa fa-shopping-bag" aria-hidden="true"></span> Penjualan (Eceran)</a></li>
                            <li><a href="<?php echo base_url().'admin/penjualan_grosir'?>"><span class="fa fa-cubes" aria-hidden="true"></span> Penjualan (Grosir)</a></li>
                            <li><a href="<?php echo base_url().'admin/retur'?>"><span class="fa fa-refresh" aria-hidden="true"></span> Retur</a></li>
                        </ul>
                    </li>
                    <!--ending dropdown-->
                    <?php }?>
                     <li>
                        <a href="<?php echo base_url().'administrator/logout'?>"><span class="fa fa-sign-out"></span> Logout</a>
                    </li>
                </ul>


            </div>
            <!-- /.navbar-collapse -->

        </div>
        <!-- /.container -->
    </nav>

    <!-- ============ nofaktur =============== -->
    <div class="modal fade" id="input_nofaktur" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 class="modal-title" id="myModalLabel">Cetak Ulang Faktur Penjualan</h3>
        </div>
        <form class="form-horizontal" method="post" action="<?php echo base_url().'admin/penjualan/cetak_ulang_faktur'?>" target="_blank">
            <div class="modal-body">
                <div class="form-group">
                    <label class="control-label col-xs-3" >No. Faktur</label>
                    <div class="col-xs-9">
                      <input type="text" name="no_faktur" class="form-control" placeholder="Nomor Faktur">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
                <button class="btn btn-info"><span class="fa fa-print"></span> Cetak</button>
            </div>
        </form>
        </div>
        </div>
    </div>
