<li class="nav-item">
    <a href="<?= base_url('dashboard') ?>" class=" nav-link">
        <i class="fas fa-tachometer-alt"></i>
        <p>
            Dashboard
        </p>
    </a>
</li>
<?php if ($this->session->userdata('level') == 1) { ?>
<li class="nav-item has-treeview">
    <a href="#" class="nav-link">
        <i class="fas fa-folder-open"></i>
        <p>
            Data Master
            <i class="right fas fa-angle-left"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="<?= base_url('master/karyawan') ?>" class="nav-link">
                    <i class="nav-icon fas fa-user-tie"></i>
                    <p>
                        Karyawan
                    </p>
                </a>
            </li>
        <li class="nav-item">
            <a href="<?= base_url('master/anggota') ?>" class="nav-link">
                <i class="nav-icon fas fa-users"></i>
                <p>
                    Anggota
                </p>
            </a>
        </li>
    </ul>
</li>
<?php } ?>
<?php if ($this->session->userdata('level') == 1) { ?>
    <li class="nav-item has-treeview">
        <a href="#" class="nav-link">
            <i class="fas fa-book-open"></i>
            <p>
                Data Buku
                <i class="right fas fa-angle-left"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="<?= base_url('buku/buku') ?>" class="nav-link">
                    <i class="nav-icon fas fa-book"></i>
                    <p>
                        Buku
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="<?= base_url('buku/jenisBuku') ?>" class="nav-link">
                    <i class="nav-icon fas fa-atlas"></i>
                    <p>
                        Jenis
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="<?= base_url('buku/penerbit') ?>" class="nav-link">
                    <i class="nav-icon fas fa-archway"></i>
                    <p>
                        Penerbit
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="<?= base_url('buku/penulis') ?>" class="nav-link">
                    <i class="nav-icon fas fa-book-reader"></i>
                    <p>
                        Penulis
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="<?= base_url('buku/rak') ?>" class="nav-link">
                    <i class="nav-icon fab fa-buffer"></i>
                    <p>
                        Rak
                    </p>
                </a>
            </li>
        </ul>
    </li>
<?php } ?>
<li class="nav-item has-treeview">
    <a href="#" class="nav-link">
        <i class="fas fa-folder-open"></i>
        <p>
            Laporan Transaksi
            <i class="right fas fa-angle-left"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        <li class="nav-item">
            <a href="<?= base_url('app/pinjam/dataPeminjam') ?>" class=" nav-link">
                <i class="far fa-file-alt nav-icon"></i>
                <p>
                    Peminjaman
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="<?= base_url('app/kembali/dataKembali') ?>" class="nav-link">
                <i class="far fa-file-alt nav-icon"></i>
                <p>
                    Pengembalian
                </p>
            </a>
        </li>
    </ul>
</li>
<?php if ($this->session->userdata('level') == 1) { ?>
<li class="nav-header">Sistem</li>
<li class="nav-item">
    <a href="<?= base_url('app/pinjam') ?>" class="nav-link">
        <i class="nav-icon fas fa-desktop"></i>
        <p>
            Transaksi Pinjam
        </p>
    </a>
</li>
<li class="nav-item">
    <a href="<?= base_url('app/kembali') ?>" class="nav-link">
        <i class="nav-icon fas fa-desktop"></i>
        <p>
            Transaksi Kembali
        </p>
    </a>
</li>
<?php } ?>
<li class="nav-item">
    <a href="#" class="nav-link" data-toggle="modal" data-target="#staticBackdrop">
        <i class="fas fa-sign-out-alt"></i>
        <p>
            Logout
        </p>
    </a>
</li>