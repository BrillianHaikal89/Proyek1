<style>
    @media print {
        .no-print {
            display: none;
        }

        body::before {
            content: "Perpustakaan Universitas Logistik dan Bisnis Internasional Jl.Sari Asih No.54, Sarijadi, Kec.Sukasari, Kota Bandung, Jawa Barat 40151. No.Telp : 08112267778";
            display: block;
            font-family: 'Times New Roman', Times, serif;
            font-size: 30px;
            text-align: center;
            margin: auto;
            width: 200mm;
            border-bottom: 1px solid black;
            margin-bottom: 20px;
        }

        body::after {
            content: "Kepala Perpustakaan Universitas Logistik dan Bisnis Internasional";
            display: block;
            font-family: 'Times New Roman', Times, serif;
            font-size: 20px;
            text-align: center;
            margin: auto;
            width: 60mm;
            margin-right: 20px;
        }

        #data-pinjam_wrapper .dataTables_length,
        #data-pinjam_wrapper .dataTables_filter,
        #data-pinjam_wrapper .dataTables_info,
        #data-pinjam_wrapper .dataTables_paginate {
            display: none !important;
        }

        .main-footer {
            display: none;
        }

        /* Hide labels and date inputs when printing */
        .form-group label,
        #start_date,
        #end_date {
            display: none;
        }

        /* Hide the last column in the table */
        #data-pinjam_wrapper table.dataTable tbody tr td:last-child {
            display: none;
        }
    }
</style>




<section class="content">
<div class="form-group row">
    <label for="tanggal" class="col-sm-4 col-form-label">Mulai tanggal peminjaman</label>
        <div class="col-lg">
        <input type="text" class="form-control" id="start_date" name="start_date">
</div>
</div>
<div class="form-group row">
    <label for="tanggal" class="col-sm-4 col-form-label">Sampai tanggal peminjaman</label>
        <div class="col-lg">
        <input type="text" class="form-control" id="end_date" name="end_date">
        </div>
    </div>
    <button class="btn btn-default no-print" onclick="applyDateFilter()"><i class="fas fa-filter"></i> Filter Tanggal</button>
    <div class="card">
        <div class="card-body">
            <table id="data-pinjam" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th style="width:1px;">No</th>
                        <th>No Peminjaman</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Kembali</th>
                        <th>Karyawan</th>
                        <th>Anggota</th>
                        <th>Status</th>
                        <th style="text-align:center" class="no-print">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    foreach ($pinjam as $pj) {
                    ?>
                        <tr>
                            <td><?= $no++ ?>.</td>
                            <td><?= $pj->no_peminjaman ?></td>
                            <td><?= $pj->tanggal_pinjam ?></td>
                            <td><?= $pj->tanggal_kembali ?></td>
                            <td><?= $pj->nama_karyawan ?></td>
                            <td><?= $pj->nama_anggota ?></td>
                            <td><?php
                                $tanggalKembali = (abs(strtotime($pj->tanggal_kembali)));
                                $tanggalSekarang = (abs(strtotime(date('Y-m-d'))));
                                $asd = (abs(strtotime(date('Y-m-d')) - strtotime($pj->tanggal_kembali))) / (60 * 60 * 24);
                                if ($tanggalSekarang <= $tanggalKembali) {
                                    echo "Dipinjam";
                                } else {
                                    echo "Terlambat " . $asd . " Hari";
                                }
                                ?>
                            </td>
                            <td class="no-print">
                                <a href="<?= base_url('app/pinjam/detail/') . $pj->id_peminjaman ?>" class="btn btn-success">
                                    <i class="fas fa=fw fa-eye"></i>
                                </a>
                            </td>
                        </tr>
                    <?php
                    }
                    ?>
                </tbody>
            </table>
            </table>
        </div>
    </div>
    <div>
        <button class="btn btn-default no-print" onclick="printInvoice()"><i class="fas fa-print"></i> Cetak</button>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function printInvoice() {
            window.print();
        }
    </script>
</section>
<script>
    $(function () {
    var data = $("#data-pinjam").DataTable({
        "responsive": true,
        "autoWidth": false,
        "order": [[2, "desc"]], // Assuming the date column is at index 2
        "search": {
            "regex": true,
            "smart": true
        }
    });

    $('#start_date').datepicker({
        format: "yyyy-mm-dd",
        // Remove the startDate option or set it to null
        // startDate: null
    });

    $('#end_date').datepicker({
        format: "yyyy-mm-dd",
        // Remove the startDate option or set it to null
        // startDate: null
    });
});

    
    function printInvoice() {
        window.print();
    }

    function applyDateFilter() {
    var startDate = document.getElementById("start_date").value;
    var endDate = document.getElementById("end_date").value;

    var formattedStartDate = formatDate(startDate);
    var formattedEndDate = formatDate(endDate);

    var table = $('#data-pinjam').DataTable();
    
    // Hapus filter yang ada pada kolom tanggal
    table.columns(2).search("").draw();

    // Filter data berdasarkan tanggal
    var filteredData = table.data().filter(function (value, index) {
        var rowDataStartDate = formatDate(value[2]); // Ubah indeks sesuai dengan kolom tanggal dalam data Anda
        return (rowDataStartDate >= formattedStartDate && rowDataStartDate <= formattedEndDate);
    });

    // Hapus semua baris dari tabel
    table.clear();

    // Tambahkan data yang telah difilter kembali
    table.rows.add(filteredData);

    // Draw ulang tabel
    table.draw();
}





function formatDate(dateString) {
    var date = new Date(dateString);
    var year = date.getFullYear();
    var month = ("0" + (date.getMonth() + 1)).slice(-2);
    var day = ("0" + date.getDate()).slice(-2);
    return year + "-" + month + "-" + day;
}


</script>

</body>