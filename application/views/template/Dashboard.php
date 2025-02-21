<div class="row">
<?php if ($this->session->userdata('level') == 1) { ?>
    <div class="col-lg-3 col-6">
        <div class="small-box bg-success">
            <div class="inner">
                <h3><?= $karyawan ?></h3>
                <p>Karyawan</p>
            </div>
            <div class="icon">
                <i class="fas fa-user-alt"></i>
            </div>
            <a href="master/karyawan" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-6">
        <div class="small-box bg-info">
            <div class="inner">
                <h3><?= $anggota ?></h3>
                <p>Anggota</p>
            </div>
            <div class="icon">
                <i class="fas fa-users"></i>
            </div>
            <a href="master/anggota" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <?php } ?>
    <div class="col-lg-3 col-6">
        <div class="small-box bg-danger">
            <div class="inner">
                <h3><?= $pinjam ?></h3>
                <p>Transaksi Peminjam</p>
            </div>
            <div class="icon">
                <i class="fas fa-arrow-up"></i>
            </div>
            <a href="app/pinjam/dataPeminjam" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-6">
        <div class="small-box bg-warning">
            <div class="inner">
                <h3><?= $kembali ?></h3>
                <p>Transaksi Kembali Hari Ini</p>
            </div>
            <div class="icon">
                <i class="fas fa-arrow-down"></i>
            </div>
            <a href="app/kembali/dataKembali" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
</div>