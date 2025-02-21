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

        #data-kembali_wrapper .dataTables_length,
        #data-kembali_wrapper .dataTables_filter,
        #data-kembali_wrapper .dataTables_info,
        #data-kembali_wrapper .dataTables_paginate {
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
        #data-kembali_wrapper table.dataTable tbody tr td:last-child {
            display: none;
        }
    }
</style>


<section class="content">
<div class="form-group row">
    <label for="tanggal" class="col-sm-4 col-form-label">Mulai tanggal</label>
        <div class="col-lg">
        <input type="text" class="form-control" id="start_date" name="start_date">
</div>
</div>
<div class="form-group row">
    <label for="tanggal" class="col-sm-4 col-form-label">Sampai tanggal</label>
        <div class="col-lg">
        <input type="text" class="form-control" id="end_date" name="end_date">
        </div>
    </div>
    <button class="btn btn-default no-print" onclick="applyDateFilter()"><i class="fas fa-filter"></i> Filter Tanggal</button>

    <div class="card">
        <div class="card-body">
            <table id="data-kembali" class="table table-bordered table-striped">
                <!-- Header tabel -->
                <thead>
                    <tr>
                        <th style="width:1px;">No</th>
                        <th>No Pengembalian</th>
                        <th>Tanggal Kembali</th>
                        <th>Karyawan</th>
                        <th>Anggota</th>
                        <th style="text-align:center" class="no-print">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Sort array $kembali berdasarkan kolom 'tanggal' secara descending
                    usort($kembali, function($a, $b) {
                        return strtotime($b->tanggal) - strtotime($a->tanggal);
                    });

                    $no = 1;
                    foreach ($kembali as $km) {
                    ?>
                        <tr>
                            <td><?= $no++ ?>.</td>
                            <td><?= $km->no_pengembalian ?></td>
                            <td><?= $km->tanggal ?></td>
                            <td><?= $km->nama_karyawan ?></td>
                            <td><?= $km->nama_anggota ?></td>
                            <td class="no-print">
                                <a href="<?= base_url('app/kembali/detail/') . $km->id_kembali ?>" class="btn btn-success">
                                    <i class="fas fa=fw fa-eye"></i>
                                </a>
                            </td>
                        </tr>
                    <?php
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
    <div>
        <button class="btn btn-default no-print" onclick="printInvoice()"><i class="fas fa-print"></i> Cetak</button>
    </div>
</section>

<script>
    $(function () {
    var data = $("#data-kembali").DataTable({
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

    var table = $('#data-kembali').DataTable();
    
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
