<?php
include('connection.php');

$cari = $_POST['cari'] ?? '';
$cari = mysqli_real_escape_string($connect, $cari);

if ($cari != '') {
    $query = mysqli_query($connect, "SELECT * FROM karyawan 
        WHERE status_id = 1 
        AND (nama LIKE '%$cari%' OR alamat LIKE '%$cari%') 
        ORDER BY updated_at DESC");
} else {
    $query = mysqli_query($connect, "SELECT * FROM karyawan 
        WHERE status_id = 1 
        ORDER BY updated_at DESC");
}

if ($query === false) {
    die("Gagal Query: " . mysqli_error($connect));
}

$resultKaryawan = mysqli_fetch_all($query, MYSQLI_ASSOC);

if (!function_exists('indonesiaTgl')) {
    function indonesiaTgl($tanggal)
    {
        $bulan = [
            1 => 'Januari',
            'Februari',
            'Maret',
            'April',
            'Mei',
            'Juni',
            'Juli',
            'Agustus',
            'September',
            'Oktober',
            'November',
            'Desember'
        ];

        $pecah = explode('-', $tanggal);

        return $pecah[2] . ' ' . $bulan[(int)$pecah[1]] . ' ' . $pecah[0];
    }
}
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Data Karyawan</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>
</head>

<body>
    <div class="container">
        <div class="card mt-2">
            <div class="card-header">
                <h1>Data Karyawan</h1>
                <hr>

                <div class="row">
                    <div class="col-md-6 mb-2">
                        <a href="tambahKaryawan.php" class="btn btn-primary">
                            <i class="bi bi-plus-lg"></i> Tambah Data
                        </a>
                    </div>

                    <div class="col-md-6 mb-2">
                        <form action="" method="post">
                            <div class="input-group">
                                <input type="text" class="form-control" name="cari" id="cari"
                                    placeholder="Cari..."
                                    value="<?= htmlspecialchars($cari); ?>">

                                <button type="submit" class="btn btn-secondary">
                                    <i class="bi bi-search"></i> Cari
                                </button>
                            </div>
                        </form>
                    </div>
                </div>

                <?php if ($cari != '') : ?>
                    <div class="alert alert-info mt-2 mb-0">
                        Hasil pencarian untuk:
                        <strong><?= htmlspecialchars($cari); ?></strong>

                        <form action="" method="post" class="d-inline">
                            <button type="submit" class="btn btn-sm btn-outline-secondary ms-2">
                                Tampilkan Semua
                            </button>
                        </form>
                    </div>
                <?php endif; ?>
            </div>

            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <th>Tempat, Tanggal Lahir</th>
                                <th>Umur</th>
                                <th>Jenis Kelamin</th>
                                <th>Opsi</th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php
                            $no = 1;
                            foreach ($resultKaryawan as $data) :
                                $lahir = new DateTime($data['tanggal_lahir']);
                                $harini = new DateTime();
                                $selisih = date_diff($lahir, $harini);
                                $umur = $selisih->y;
                            ?>
                                <tr>
                                    <td><?= $no++; ?></td>

                                    <td><?= htmlspecialchars($data['nama']); ?></td>

                                    <td><?= htmlspecialchars($data['alamat']); ?></td>

                                    <td>
                                        <?= htmlspecialchars($data['tempat_lahir']); ?>,
                                        <?= indonesiaTgl($data['tanggal_lahir']); ?>
                                    </td>

                                    <td><?= $umur; ?> Tahun</td>

                                    <td><?= htmlspecialchars($data['jenis_kelamin']); ?></td>

                                    <td>
                                        <div class="d-flex gap-2">
                                            <a class="btn btn-sm btn-warning"
                                                href="editKaryawan.php?id=<?= $data['id']; ?>">
                                                Edit
                                            </a>

                                            <form action="hapusKaryawan.php" method="POST">
                                                <button class="btn btn-sm btn-danger"
                                                    type="submit"
                                                    name="hapus"
                                                    value="<?= $data['id']; ?>"
                                                    onclick="return confirm('Yakin menghapus data nama <?= htmlspecialchars($data['nama']); ?>?')">
                                                    Hapus
                                                </button>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            <?php endforeach; ?>

                            <?php if (count($resultKaryawan) == 0) : ?>
                                <tr>
                                    <td colspan="7" class="text-center">
                                        Data karyawan tidak ditemukan.
                                    </td>
                                </tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>

</html>